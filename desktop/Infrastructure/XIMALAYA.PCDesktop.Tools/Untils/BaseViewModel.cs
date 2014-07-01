using Microsoft.Practices.Prism.Events;
using Microsoft.Practices.Prism.Regions;
using Microsoft.Practices.Prism.ViewModel;
using Microsoft.Practices.ServiceLocation;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace XIMALAYA.PCDesktop.Tools.Untils
{
    /// <summary>
    /// Viewmodel 基类
    /// </summary>
    [InheritedExport]
    public class BaseViewModel : NotificationObject
    {
        private bool _IsWaiting;

        /// <summary>
        /// 佔位服务
        /// </summary>
        [Import]
        protected IRegionManager RegionManager { get; set; }
        /// <summary>
        /// 事件管理
        /// </summary>
        [Import]
        protected IEventAggregator EventAggregator { get; set; }
        /// <summary>
        /// MEF服务
        /// </summary>
        [Import]
        protected IServiceLocator Container { get; set; }
        /// <summary>
        /// 专辑视图
        /// </summary>
        protected IFlyoutFactory ContainerView
        {
            get
            {
                return Application.Current.MainWindow as IFlyoutFactory;
            }
        }
        /// <summary>
        /// 是否加载数据中
        /// </summary>
        public bool IsWaiting
        {
            get
            {
                return _IsWaiting;
            }
            set
            {
                if (value != _IsWaiting)
                {
                    _IsWaiting = value;
                    this.RaisePropertyChanged(() => this.IsWaiting);
                }
            }
        }
    }
}
