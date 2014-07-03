using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;

namespace XIMALAYA.PCDesktop.Controls
{
    /// <summary>
    /// 带角标的toggle按钮
    /// </summary>
    public class MyRadioButton : RadioButton
    {
        /// <summary>
        /// 角标的尺寸
        /// </summary>
        public double SuperScriptSize
        {
            get { return (double)GetValue(SuperScriptSizeProperty); }
            set { SetValue(SuperScriptSizeProperty, value); }
        }
        /// <summary>
        /// 角标的尺寸
        /// </summary>
        public static readonly DependencyProperty SuperScriptSizeProperty =
            DependencyProperty.Register("SuperScriptSize", typeof(double), typeof(MyRadioButton), new PropertyMetadata(10D));
        /// <summary>
        /// 图标的path
        /// </summary>
        public Geometry IconData
        {
            get { return (Geometry)GetValue(IconDataProperty); }
            set { SetValue(IconDataProperty, value); }
        }
        /// <summary>
        /// 图标的path
        /// </summary>
        public static readonly DependencyProperty IconDataProperty =
            DependencyProperty.Register("IconData", typeof(Geometry), typeof(MyRadioButton), new PropertyMetadata(null));
        /// <summary>
        /// 图表的宽度
        /// </summary>
        public double IconWidth
        {
            get { return (double)GetValue(IconWidthProperty); }
            set { SetValue(IconWidthProperty, value); }
        }
        /// <summary>
        /// 图标的宽度
        /// </summary>
        public static readonly DependencyProperty IconWidthProperty =
            DependencyProperty.Register("IconWidth", typeof(double), typeof(MyRadioButton), new PropertyMetadata(15D));
        /// <summary>
        /// 图标的高度
        /// </summary>
        public double IconHeight
        {
            get { return (double)GetValue(IconHeightProperty); }
            set { SetValue(IconHeightProperty, value); }
        }
        /// <summary>
        /// 图标的高度
        /// </summary>
        public static readonly DependencyProperty IconHeightProperty =
            DependencyProperty.Register("IconHeight", typeof(double), typeof(MyRadioButton), new PropertyMetadata(15D));
        /// <summary>
        /// 图标margin值
        /// </summary>
        public Thickness IconMargin
        {
            get { return (Thickness)GetValue(IconMarginProperty); }
            set { SetValue(IconMarginProperty, value); }
        }
        /// <summary>
        /// 图标margin值
        /// </summary>
        public static readonly DependencyProperty IconMarginProperty =
            DependencyProperty.Register("IconMargin", typeof(Thickness), typeof(MyRadioButton), new PropertyMetadata(new Thickness(5)));
        /// <summary>
        /// 图标的填充色
        /// </summary>
        public Brush IconFill
        {
            get { return (Brush)GetValue(IconFillProperty); }
            set { SetValue(IconFillProperty, value); }
        }
        /// <summary>
        /// 图标的填充色
        /// </summary>
        public static readonly DependencyProperty IconFillProperty =
            DependencyProperty.Register("IconFill", typeof(Brush), typeof(MyRadioButton), new PropertyMetadata(new SolidColorBrush()));

        static MyRadioButton()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(MyRadioButton), new FrameworkPropertyMetadata(typeof(MyRadioButton)));
        }
    }
}
