using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.Prism.Events;
using Microsoft.Practices.Prism.ViewModel;
using Microsoft.Practices.ServiceLocation;
using XIMALAYA.PCDesktop.Events;

namespace XIMALAYA.PCDesktop.Tools
{
    /// <summary>
    /// 全局flytou显示属性
    /// </summary>
    public sealed class FlyoutVisibleBase : NotificationObject
    {
        #region fields

        private bool _IsSettingFlyoutShow = false;
        private bool _IsCategoryDetailShow = false;
        private bool _IsCategoryListShow = false;
        private bool _IsTagSoundsShow = true;

        #endregion

        #region propertites

        /// <summary>
        /// 显示设置flyout
        /// </summary>
        public bool IsSettingFlyoutShow
        {
            get
            {
                return _IsSettingFlyoutShow;
            }
            set
            {
                if (value != _IsSettingFlyoutShow)
                {
                    _IsSettingFlyoutShow = value;
                    this.RaisePropertyChanged(() => this.IsSettingFlyoutShow);
                    if (this.EventAggregator == null)
                    {
                        throw new Exception("EventAggregator null");
                    }
                    this.EventAggregator.GetEvent<ModulesManagerEvent>().Publish(new ModuleInfoArgument()
                    {
                        ModuleName = WellKnownModuleNames.SettingsModule
                    });
                }
            }
        }
        /// <summary>
        /// 是否显示分类详情
        /// </summary>
        public bool IsCategoryDetailShow
        {
            get
            {
                return _IsCategoryDetailShow;
            }
            set
            {
                if (value != _IsCategoryDetailShow)
                {
                    _IsCategoryDetailShow = value;
                    this.RaisePropertyChanged(() => this.IsCategoryDetailShow);
                }
            }
        }
        /// <summary>
        /// 是否显示分类列表
        /// </summary>
        public bool IsCategoryListShow
        {
            get
            {
                return _IsCategoryListShow;
            }
            set
            {
                if (value != _IsCategoryListShow)
                {
                    _IsCategoryListShow = value;
                    this.RaisePropertyChanged(() => this.IsCategoryListShow);
                }
            }
        }
        /// <summary>
        /// 是否显示标签下的声音
        /// </summary>
        public bool IsTagSoundsShow
        {
            get
            {
                return _IsTagSoundsShow;
            }
            set
            {
                if (value != _IsTagSoundsShow)
                {
                    _IsTagSoundsShow = value;
                    this.RaisePropertyChanged(() => this.IsTagSoundsShow);
                }
            }
        }
        
        /// <summary>
        /// 事件管理器
        /// </summary>
        public IEventAggregator EventAggregator { get; set; }

        #endregion

        #region constructor

        private FlyoutVisibleBase()
        {
            this.EventAggregator = ServiceLocator.Current.GetInstance<IEventAggregator>();
        }

        #endregion
    }
    /// <summary>
    /// 全局单例
    /// </summary>
    public class FlyoutVisible : Singleton<FlyoutVisibleBase>
    {

    }
}
