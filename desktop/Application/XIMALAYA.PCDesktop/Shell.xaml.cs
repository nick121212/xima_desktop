﻿using System;
using System.ComponentModel.Composition;
using System.Windows;
using System.Windows.Data;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using Microsoft.Practices.Prism.Regions;
using XIMALAYA.PCDesktop.Tools.Untils;

namespace XIMALAYA.PCDesktop
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    [Export]
    public partial class Shell : IFlyoutFactory
    {
        #region 属性

        [Import(AllowRecomposition = false)]
        private IRegionManager regionManager { get; set; }
        [Import]
        public MainViewModel MainViewModel
        {
            get { return this.DataContext as MainViewModel; }
            set { this.DataContext = value; }
        }
        public int Count { get; set; }
        private Flyout LastFlyout { get; set; }
        private Flyout CurrentFlyout { get; set; }

        #endregion

        #region 构造

        /// <summary>
        /// 构造
        /// </summary>
        public Shell()
        {
            InitializeComponent();
            this.Loaded += Shell_Loaded;
            this.Closed += Shell_Closed;
        }

        #endregion

        #region 事件

        void Shell_Closed(object sender, EventArgs e)
        {
            this.MainViewModel.Dispose();
        }

        async void Shell_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            e.Cancel = !this.MainViewModel.IsShutDown;
            var mySettings = new MetroDialogSettings()
            {
                AffirmativeButtonText = "退出",
                NegativeButtonText = "取消",
                AnimateShow = true,
                AnimateHide = false
            };

            var result = await this.ShowMessageAsync("喜马拉雅?",
                "确定要退出喜马拉雅?",
                MessageDialogStyle.AffirmativeAndNegative, mySettings);

            if (this.MainViewModel.IsShutDown = result == MessageDialogResult.Affirmative)
            {
                Application.Current.ShutdownMode = ShutdownMode.OnLastWindowClose;
                Application.Current.Shutdown();
            }
        }

        void Shell_Loaded(object sender, RoutedEventArgs e)
        {
            RegionManager.SetRegionManager(this.testFlyout, this.regionManager);
            //taskBar.ProgressState = TaskbarItemProgressState.Normal;
            //taskBar.ProgressValue = 0.4;
        }

        #endregion

        #region IFlyoutFactory 成员

        /// <summary>
        /// 显示层
        /// </summary>
        public void ShowFlyout()
        {
            if (this.CurrentFlyout != null)
            {
                this.CurrentFlyout.IsOpen = true;
            }
        }
        /// <summary>
        /// 新建层
        /// </summary>
        /// <param name="header"></param>
        /// <returns></returns>
        public string GetFlyout(string header)
        {
            string regionName = string.Format("ViewRegionName_{0}", ++this.Count);

            this.CurrentFlyout = new Flyout();
            Binding binding = null;
            RelativeSource rs;

            this.ContainerGrid.Items.Add(this.CurrentFlyout);
            this.CurrentFlyout.AnimateOnPositionChange = true;
            this.CurrentFlyout.Theme = FlyoutTheme.Adapt;
            this.CurrentFlyout.Header = header;
            this.CurrentFlyout.IsOpen = false;
            rs = new RelativeSource(RelativeSourceMode.FindAncestor);
            rs.AncestorType = typeof(MetroWindow);
            binding = new Binding("ActualWidth");
            binding.RelativeSource = rs;
            this.CurrentFlyout.SetBinding(Flyout.WidthProperty, binding);
            RegionManager.SetRegionName(this.CurrentFlyout, regionName);
            this.CurrentFlyout.ApplyTemplate();
            this.CurrentFlyout.IsOpenChanged += flyout_IsOpenChanged;
            this.CurrentFlyout.Position = Position.Right;
            this.CurrentFlyout.IsOpen = true;

            return regionName;
        }
        void flyout_IsOpenChanged(object sender, EventArgs e)
        {
            Flyout flyout = sender as Flyout;

            if (flyout.IsOpen == false)
            {
                if (LastFlyout != null)
                {
                    this.ContainerGrid.Items.Remove(LastFlyout);
                    LastFlyout = null;
                }
                LastFlyout = flyout;
                LastFlyout.Content = null;
            }
        }

        #endregion
    }
}
