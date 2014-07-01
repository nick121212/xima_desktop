using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using XIMALAYA.PCDesktop.Controls;

namespace XIMALAYA.PCDesktop.Modules.DiscoverPage.Views
{
    /// <summary>
    /// DiscoverView.xaml 的交互逻辑
    /// </summary>
    [Export]
    [PartCreationPolicy(CreationPolicy.Shared)]
    public partial class DiscoverView
    {
        public DiscoverView()
        {
            InitializeComponent();
            this.Loaded += DiscoverView_Loaded;
        }

        void DiscoverView_Loaded(object sender, RoutedEventArgs e)
        {
            this.mainScroll.AddHandler(ScrollViewer.MouseWheelEvent, new MouseWheelEventHandler(mainScroll_MouseWheel), true);
        }

        [Import]
        public DiscoverViewModel DiscoverViewModel
        {
            get { return this.DataContext as DiscoverViewModel; }
            set { this.DataContext = value; }
        }

        private void mainScroll_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            int d = e.Delta;
            if (d < 0)
            {
                this.mainScroll.LineRight();
            }
            else
            {
                this.mainScroll.LineLeft();
            }
        }

    }
}
