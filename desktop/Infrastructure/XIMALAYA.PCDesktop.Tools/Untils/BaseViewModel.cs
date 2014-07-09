﻿using Microsoft.Practices.Prism.Events;
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
using Microsoft.Practices.Prism.Commands;

namespace XIMALAYA.PCDesktop.Tools.Untils
{
    /// <summary>
    /// Viewmodel 基类
    /// </summary>
    [InheritedExport]
    public abstract class BaseViewModel : NotificationObject
    {
        #region 字段

        private bool _IsWaiting;
        private bool _IsNextPageVisibled;

        #endregion

        #region 属性

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
                    this.NextPageCommand.RaiseCanExecuteChanged();
                }
            }
        }
        /// <summary>
        /// 分页控件显示
        /// </summary>
        public bool IsNextPageVisibled
        {
            get
            {
                return _IsNextPageVisibled;
            }
            set
            {
                if (value != _IsNextPageVisibled)
                {
                    _IsNextPageVisibled = value;
                    this.RaisePropertyChanged(() => this.IsNextPageVisibled);
                }
            }
        }

        #endregion

        #region 命令

        /// <summary>
        /// 下一页分页命令
        /// </summary>
        public DelegateCommand NextPageCommand { get; set; }

        #endregion

        #region 虚拟方法

        /// <summary>
        /// 获取数据
        /// </summary>
        /// <param name="isClear"></param>
        protected virtual void GetData(bool isClear)
        {
            this.IsWaiting = true;
            //this.IsNextPageVisibled = false;
        }
        /// <summary>
        /// 
        /// </summary>
        protected virtual void PreNextData() { }

        #endregion

        #region 构造函数

        /// <summary>
        /// 构造函数
        /// </summary>
        public BaseViewModel()
        {
            this.NextPageCommand = new DelegateCommand(() =>
            {
                this.PreNextData();
                this.GetData(false);
            }, () =>
            {
                return !this.IsWaiting;
            });
        }

        #endregion
    }
}
