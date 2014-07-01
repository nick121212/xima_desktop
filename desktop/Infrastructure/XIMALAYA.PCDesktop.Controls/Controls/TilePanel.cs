using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using MS.Internal.PresentationFramework;
using XIMALAYA.PCDesktop.Controls;

namespace XIMALAYA.PCDesktop.Controls
{
    /// <summary>
    /// TilePanel 
    /// 瀑布流布局
    /// </summary>
    public class TilePanel : Panel
    {
        #region 枚举

        private enum OccupyType
        {
            NONE,
            WIDTHHEIGHT,
            OVERFLOW
        }

        #endregion

        #region 属性

        /// <summary>
        /// 
        /// </summary>
        public int TileHeight
        {
            get { return (int)GetValue(TileHeightProperty); }
            set { SetValue(TileHeightProperty, value); }
        }
        /// <summary>
        /// 
        /// </summary>
        public static readonly DependencyProperty TileHeightProperty =
            DependencyProperty.Register("TileHeight", typeof(int), typeof(TilePanel), new FrameworkPropertyMetadata(100, FrameworkPropertyMetadataOptions.AffectsMeasure));
        /// <summary>
        /// 
        /// </summary>
        public int TileWidth
        {
            get { return (int)GetValue(TileWidthProperty); }
            set { SetValue(TileWidthProperty, value); }
        }
        /// <summary>
        /// 
        /// </summary>
        public static readonly DependencyProperty TileWidthProperty =
            DependencyProperty.Register("TileWidth", typeof(int), typeof(TilePanel), new FrameworkPropertyMetadata(100, FrameworkPropertyMetadataOptions.AffectsMeasure));
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static int GetWidthPix(DependencyObject obj)
        {
            return (int)obj.GetValue(WidthPixProperty);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="value"></param>
        public static void SetWidthPix(DependencyObject obj, int value)
        {
            if (value > 0 && value < 2)
            {
                obj.SetValue(WidthPixProperty, value);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        public static readonly DependencyProperty WidthPixProperty =
            DependencyProperty.RegisterAttached("WidthPix", typeof(int), typeof(TilePanel), new FrameworkPropertyMetadata(1, FrameworkPropertyMetadataOptions.AffectsParentMeasure));
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static int GetHeightPix(DependencyObject obj)
        {
            return (int)obj.GetValue(HeightPixProperty);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="value"></param>
        public static void SetHeightPix(DependencyObject obj, int value)
        {
            if (value > 0 && value < 2)
            {
                obj.SetValue(HeightPixProperty, value);
            }
        }
        /// <summary>
        /// 高度比例
        /// </summary>
        public static readonly DependencyProperty HeightPixProperty =
            DependencyProperty.RegisterAttached("HeightPix", typeof(int), typeof(TilePanel), new FrameworkPropertyMetadata(1, FrameworkPropertyMetadataOptions.AffectsParentMeasure));

        /// <summary>
        /// 方向
        /// </summary>
        public Orientation Orientation
        {
            get { return (Orientation)GetValue(OrientationProperty); }
            set { SetValue(OrientationProperty, value); }
        }
        /// <summary>
        /// 方向
        /// </summary>
        public static readonly DependencyProperty OrientationProperty =
            DependencyProperty.Register("Orientation", typeof(Orientation), typeof(TilePanel), new FrameworkPropertyMetadata(Orientation.Horizontal, FrameworkPropertyMetadataOptions.AffectsMeasure));

        /// <summary>
        /// 最小的高度比例
        /// </summary>
        private int MinHeightPix { get; set; }
        /// <summary>
        /// 最小的宽度比例
        /// </summary>
        private int MinWidthPix { get; set; }
        /// <summary>
        /// 元素占用的横向格子总数
        /// </summary>
        public int TotalCellCount { get; set; }
        /// <summary>
        /// 元素占用的纵向格子总数
        /// </summary>
        public int TotalRowCount { get; set; }
        /// <summary>
        /// 排列完后剩下没有使用的格子数
        /// 计算最终的高度或宽度使用
        /// </summary>
        public int LeftPix { get; set; }
        /// <summary>
        /// Tile之间的间距
        /// </summary>
        public Thickness TileMargin
        {
            get { return (Thickness)GetValue(TileMarginProperty); }
            set { SetValue(TileMarginProperty, value); }
        }
        /// <summary>
        /// Tile之间的间距
        /// </summary>
        public static readonly DependencyProperty TileMarginProperty =
            DependencyProperty.Register("TileMargin", typeof(Thickness), typeof(TilePanel), new FrameworkPropertyMetadata(new Thickness(0), FrameworkPropertyMetadataOptions.AffectsMeasure));



        public bool IsRegularSize
        {
            get { return (bool)GetValue(IsRegularSizeProperty); }
            set { SetValue(IsRegularSizeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for IsRegularSize.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsRegularSizeProperty =
            DependencyProperty.Register("IsRegularSize", typeof(bool), typeof(TilePanel), new FrameworkPropertyMetadata(true, FrameworkPropertyMetadataOptions.AffectsMeasure));

        public int MaxPixCount { get; set; }

        #endregion

        #region 方法

        public Dictionary<string, bool> Maps { get; set; }

        private OccupyType SetMaps(Point currentPosition, Size childPix)
        {
            var isOccupy = OccupyType.NONE;

            if (currentPosition.X + currentPosition.Y != 0)
            {
                if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
                {
                    isOccupy = this.IsOccupyWidth(currentPosition, childPix);
                }
                else
                {
                    isOccupy = this.IsOccupyHeight(currentPosition, childPix);
                }
            }

            if (isOccupy == OccupyType.NONE)
            {
                for (int i = 0; i < childPix.Width; i++)
                {
                    for (int j = 0; j < childPix.Height; j++)
                    {
                        this.Maps[string.Format("x_{0}y_{1}", currentPosition.X + i, currentPosition.Y + j)] = true;
                    }
                }
            }

            return isOccupy;
        }
        private OccupyType IsOccupyWidth(Point currentPosition, Size childPix)
        {
            //计算当前行能否放下当前元素
            if (this.TotalCellCount - currentPosition.X - childPix.Width < 0)
            {
                return OccupyType.OVERFLOW;
            }

            for (int i = 0; i < childPix.Width; i++)
            {
                if (this.Maps.ContainsKey(string.Format("x_{0}y_{1}", currentPosition.X + i, currentPosition.Y)))
                {
                    return OccupyType.WIDTHHEIGHT;
                }
            }

            return OccupyType.NONE;
        }
        private OccupyType IsOccupyHeight(Point currentPosition, Size childPix)
        {
            //计算当前行能否放下当前元素
            if (this.TotalRowCount - currentPosition.Y - childPix.Height < 0)
            {
                return OccupyType.OVERFLOW;
            }

            for (int i = 0; i < childPix.Height; i++)
            {
                if (this.Maps.ContainsKey(string.Format("x_{0}y_{1}", currentPosition.X, currentPosition.Y + i)))
                {
                    return OccupyType.WIDTHHEIGHT;
                }
            }

            return OccupyType.NONE;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="finalSize"></param>
        /// <returns></returns>
        protected override Size ArrangeOverride(Size finalSize)
        {
            Size childPix = new Size();
            Point childPosition = new Point();
            Point? lastChildPosition = null;
            OccupyType isOccupy = OccupyType.NONE;
            FrameworkElement child;
            //double maxRowCount = 0; ;

            this.Maps = new Dictionary<string, bool>();
            for (int i = 0; i < this.Children.Count; )
            {
                child = this.Children[i] as FrameworkElement;
                childPix.Width = TilePanel.GetWidthPix(child);
                childPix.Height = TilePanel.GetHeightPix(child);
                isOccupy = this.SetMaps(childPosition, childPix);

                //换列
                if (isOccupy == OccupyType.WIDTHHEIGHT)
                {
                    if (lastChildPosition == null) lastChildPosition = childPosition;
                    if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
                    {
                        childPosition.X += this.MinWidthPix;
                    }
                    else
                    {
                        childPosition.Y += this.MinHeightPix;
                        //maxRowCount = maxRowCount > childPosition.Y ? maxRowCount : childPosition.Y;
                    }
                }
                //换行
                else if (isOccupy == OccupyType.OVERFLOW)
                {
                    if (lastChildPosition == null) lastChildPosition = childPosition;
                    if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
                    {
                        childPosition.X = 0;
                        childPosition.Y += this.MinHeightPix;
                        //maxRowCount = maxRowCount > childPosition.Y ? maxRowCount : childPosition.Y;
                    }
                    else
                    {
                        childPosition.Y = 0;
                        childPosition.X += this.MinWidthPix;
                    }
                }
                else
                {
                    i++;
                    child.Arrange(new Rect(childPosition.X * this.TileWidth + childPosition.X / this.MinWidthPix * (this.TileMargin.Left + this.TileMargin.Right),
                                           childPosition.Y * this.TileHeight + childPosition.Y / this.MinHeightPix * (this.TileMargin.Top + this.TileMargin.Bottom),
                                           child.DesiredSize.Width, child.DesiredSize.Height));
                    if (lastChildPosition != null)
                    {
                        childPosition = (Point)lastChildPosition;
                        lastChildPosition = null;
                    }
                    else
                    {
                        if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
                        {
                            childPosition.X += childPix.Width;
                        }
                        else
                        {
                            childPosition.Y += childPix.Height;
                            //maxRowCount = maxRowCount > childPosition.Y ? maxRowCount : childPosition.Y;
                        }
                    }
                }
            }

            //if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
            //{
            //    double height = maxRowCount * this.TileHeight + maxRowCount / this.MinHeightPix * (this.TileMargin.Top + this.TileMargin.Bottom);
            //    if (!double.IsNaN(height))
            //    {
            //        finalSize.Height = 1000;
            //    }
            //}
            //else
            //{
            //    double width = childPosition.X * this.TileWidth + childPosition.X / this.MinWidthPix * (this.TileMargin.Left + this.TileMargin.Right);
            //    if (!double.IsNaN(width))
            //    {
            //        finalSize.Width = width;
            //    }
            //}

            return finalSize;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="constraint"></param>
        /// <returns></returns>
        protected override Size MeasureOverride(Size constraint)
        {
            Size childrenSize = new Size();
            int childWidthPix, childHeightPix, maxWidthPix = 0, maxHeightPix = 0, maxRowCount = 0;
            bool isOverflow = false;

            //遍历孩子元素
            foreach (FrameworkElement child in this.Children)
            {
                childWidthPix = TilePanel.GetWidthPix(child);
                childHeightPix = TilePanel.GetHeightPix(child);

                if (this.MinHeightPix == 0) this.MinHeightPix = childHeightPix;
                if (this.MinWidthPix == 0) this.MinWidthPix = childWidthPix;

                if (this.MinHeightPix > childHeightPix) this.MinHeightPix = childHeightPix;
                if (this.MinWidthPix > childWidthPix) this.MinWidthPix = childWidthPix;
            }

            foreach (FrameworkElement child in this.Children)
            {
                childWidthPix = TilePanel.GetWidthPix(child);
                childHeightPix = TilePanel.GetHeightPix(child);

                if (this.IsRegularSize)
                {
                    child.Margin = this.TileMargin;
                    child.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
                    child.VerticalAlignment = System.Windows.VerticalAlignment.Top;

                    child.Width = this.TileWidth * childWidthPix + (child.Margin.Left + child.Margin.Right) * ((childWidthPix - 1) / this.MinWidthPix);
                    child.Height = this.TileWidth * childHeightPix + (child.Margin.Top + child.Margin.Bottom) * ((childHeightPix - 1) / this.MinHeightPix);
                }

                child.Measure(new Size(Double.PositiveInfinity, double.PositiveInfinity));

                maxWidthPix += childWidthPix;
                maxHeightPix += childHeightPix;
                maxRowCount += childWidthPix * childHeightPix;

                if (!isOverflow)
                {
                    childrenSize.Width += child.DesiredSize.Width;
                    childrenSize.Height += child.DesiredSize.Height;
                    if (this.Orientation == System.Windows.Controls.Orientation.Horizontal)
                    {
                        if (childrenSize.Width > constraint.Width)
                        {
                            isOverflow = true;
                            childrenSize.Width -= child.DesiredSize.Width;
                        }
                    }
                    else
                    {
                        if (childrenSize.Height > constraint.Height)
                        {
                            isOverflow = true;
                            childrenSize.Height -= child.DesiredSize.Height;
                        }
                    }

                }
            }
            maxWidthPix = (int)childrenSize.Width / this.TileWidth;
            maxHeightPix = (int)childrenSize.Height / this.TileHeight;

            this.MaxPixCount = maxRowCount;
            this.TotalCellCount = maxWidthPix;
            this.TotalRowCount = maxHeightPix;

            //纵向排放
            if (this.Orientation == System.Windows.Controls.Orientation.Vertical)
            {
                double widthPix = Math.Ceiling((double)maxRowCount / this.TotalRowCount);
                if (!double.IsNaN(widthPix))
                    constraint.Width = widthPix * this.TileWidth + widthPix / this.MinWidthPix * (this.TileMargin.Left + this.TileMargin.Right);
            }
            //横向排放
            else
            {
                double heightPix = Math.Ceiling((double)maxRowCount / this.TotalCellCount);
                if (!double.IsNaN(heightPix))
                    constraint.Height = heightPix * this.TileHeight + heightPix / this.MinHeightPix * (this.TileMargin.Top + this.TileMargin.Bottom);
            }

            if (double.IsInfinity(constraint.Height) || double.IsInfinity(constraint.Width))
            {
                return new Size();
            }

            return constraint;
        }

        #endregion
    }
}