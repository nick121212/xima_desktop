﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace XIMALAYA.PCDesktop.Controls
{
    /// <summary>
    /// 边框类型
    /// </summary>
    public enum BorderType
    {
        /// <summary>
        /// 
        /// </summary>
        None,
        /// <summary>
        /// 
        /// </summary>
        Rectangle,
        /// <summary>
        /// 
        /// </summary>
        Ellipse
    }

    /// <summary>
    /// 带边框的ToggleButton
    /// </summary>
    [TemplatePart(Name = "PART_Border", Type = typeof(Border))]
    [TemplatePart(Name = "PART_Fill", Type = typeof(Rectangle))]
    [TemplatePart(Name = "Part_Scale", Type = typeof(ScaleTransform))]
    [TemplatePart(Name = "Part_ColorAnimation", Type = typeof(ColorAnimation))]
    public class MyToggleButton : ToggleButton
    {
        /// <summary>
        /// 边框类型
        /// </summary>
        public BorderType BorderType
        {
            get { return (BorderType)GetValue(BorderTypeProperty); }
            set { SetValue(BorderTypeProperty, value); }
        }
        /// <summary>
        /// 边框类型
        /// </summary>
        public static readonly DependencyProperty BorderTypeProperty =
            DependencyProperty.Register("BorderType", typeof(BorderType), typeof(MyToggleButton), new PropertyMetadata(BorderType.None, OnBorderTypeChanged));
        /// <summary>
        /// 边框圆角
        /// </summary>
        public CornerRadius CornerRadius
        {
            get { return (CornerRadius)GetValue(CornerRadiusProperty); }
            set { SetValue(CornerRadiusProperty, value); }
        }
        /// <summary>
        /// 边框圆角
        /// </summary>
        public static readonly DependencyProperty CornerRadiusProperty =
            DependencyProperty.Register("CornerRadius", typeof(CornerRadius), typeof(MyToggleButton), new PropertyMetadata(new CornerRadius()));
        /// <summary>
        /// 是否显示边框
        /// </summary>
        public bool IsShowBorder
        {
            get { return (bool)GetValue(IsShowBorderProperty); }
            set { SetValue(IsShowBorderProperty, value); }
        }
        /// <summary>
        /// 是否显示边框
        /// </summary>
        public static readonly DependencyProperty IsShowBorderProperty =
            DependencyProperty.Register("IsShowBorder", typeof(bool), typeof(MyToggleButton), new PropertyMetadata(false));
        /// <summary>
        /// 矩形的圆角
        /// </summary>
        public double RadiusSize
        {
            get { return (double)GetValue(RadiusSizeProperty); }
            set { SetValue(RadiusSizeProperty, value); }
        }
        /// <summary>
        /// 矩形的圆角
        /// </summary>
        public static readonly DependencyProperty RadiusSizeProperty =
            DependencyProperty.Register("RadiusSize", typeof(double), typeof(MyToggleButton), new PropertyMetadata(0D));
        /// <summary>
        /// 选中后的背景色
        /// </summary>
        public Color BackgroundChecked
        {
            get { return (Color)GetValue(BackgroundCheckedProperty); }
            set { SetValue(BackgroundCheckedProperty, value); }
        }
        /// <summary>
        /// 选中后的背景色
        /// </summary>
        public static readonly DependencyProperty BackgroundCheckedProperty =
            DependencyProperty.Register("BackgroundChecked", typeof(Color), typeof(MyToggleButton), new PropertyMetadata(Colors.Transparent));
        /// <summary>
        /// 选中后的前景色
        /// </summary>
        public Brush ForegroundChecked
        {
            get { return (Brush)GetValue(ForegroundCheckedProperty); }
            set { SetValue(ForegroundCheckedProperty, value); }
        }
        /// <summary>
        /// 选中后的前景色
        /// </summary>
        public static readonly DependencyProperty ForegroundCheckedProperty =
            DependencyProperty.Register("ForegroundChecked", typeof(Brush), typeof(MyToggleButton), new PropertyMetadata(new SolidColorBrush()));
        /// <summary>
        /// 选中后的内容
        /// </summary>
        public object ContentChecked
        {
            get { return (object)GetValue(ContentCheckedProperty); }
            set { SetValue(ContentCheckedProperty, value); }
        }
        /// <summary>
        /// 选中后的内容
        /// </summary>
        public static readonly DependencyProperty ContentCheckedProperty =
            DependencyProperty.Register("ContentChecked", typeof(object), typeof(MyToggleButton), new PropertyMetadata(null));

        private static void OnBorderTypeChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var myToggleButton = d as MyToggleButton;

            switch ((BorderType)e.NewValue)
            {
                case BorderType.None:
                    myToggleButton.IsShowBorder = false;
                    break;
                case BorderType.Ellipse:
                    myToggleButton.IsShowBorder = true;
                    myToggleButton.CornerRadius = new CornerRadius(myToggleButton.Width / 2);
                    myToggleButton.RadiusSize = myToggleButton.Width / 2;
                    break;
                case BorderType.Rectangle:
                    myToggleButton.IsShowBorder = true;
                    myToggleButton.CornerRadius = new CornerRadius();
                    myToggleButton.RadiusSize = 0;
                    break;
            }
        }

        private Border Border { get; set; }
        private Rectangle Rectangle { get; set; }
        private ScaleTransform ScaleTransform { get; set; }

        private ColorAnimation ColorAnimation { get; set; }

        /// <summary>
        /// 应用模板
        /// </summary>
        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            this.Border = GetTemplateChild("PART_Border") as Border;
            this.Rectangle = GetTemplateChild("PART_Fill") as Rectangle;
            this.ScaleTransform = GetTemplateChild("Part_Scale") as ScaleTransform;
            this.ColorAnimation = GetTemplateChild("Part_ColorAnimation") as ColorAnimation;
            if (this.ColorAnimation != null)
            {
                this.ColorAnimation.To = this.BackgroundChecked;
            }
        }
    }
}
