using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Media;

namespace XIMALAYA.PCDesktop.Controls
{
    /// <summary>
    /// 带角标的toggle按钮
    /// </summary>
    public class MyToggleButton : ToggleButton
    {
        /// <summary>
        /// 角标的尺寸
        /// </summary>
        public static readonly DependencyProperty SuperScriptSizeProperty;
       
        /// <summary>
        /// 图标的path
        /// </summary>
        public static readonly DependencyProperty IconDataProperty;
        /// <summary>
        /// 图标的宽度
        /// </summary>
        public static readonly DependencyProperty IconWidthProperty;
        /// <summary>
        /// 图标的高度
        /// </summary>
        public static readonly DependencyProperty IconHeightProperty;
        /// <summary>
        /// 图标margin值
        /// </summary>
        public static readonly DependencyProperty IconMarginProperty;
        /// <summary>
        /// 图标的填充色
        /// </summary>
        public static readonly DependencyProperty IconFillProperty;

        static MyToggleButton()
        {
            MyToggleButton.SuperScriptSizeProperty = MyRadioButton.SuperScriptSizeProperty.AddOwner(typeof(MyToggleButton));
            MyToggleButton.IconDataProperty = MyRadioButton.IconDataProperty.AddOwner(typeof(MyToggleButton));
            MyToggleButton.IconWidthProperty = MyRadioButton.IconWidthProperty.AddOwner(typeof(MyToggleButton));

            MyToggleButton.IconHeightProperty = MyRadioButton.IconHeightProperty.AddOwner(typeof(MyToggleButton));
            MyToggleButton.IconMarginProperty = MyRadioButton.IconMarginProperty.AddOwner(typeof(MyToggleButton));
            MyToggleButton.IconFillProperty = MyRadioButton.IconFillProperty.AddOwner(typeof(MyToggleButton));
            DefaultStyleKeyProperty.OverrideMetadata(typeof(MyToggleButton), new FrameworkPropertyMetadata(typeof(MyToggleButton)));
        }
    }
}
