using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Regions;
using XIMALAYA.PCDesktop.Core.Models.Album;
using XIMALAYA.PCDesktop.Core.ParamsModel;
using XIMALAYA.PCDesktop.Core.Services;
using XIMALAYA.PCDesktop.Modules.AlbumListModule.Views;
using XIMALAYA.PCDesktop.Tools.Untils;

namespace XIMALAYA.PCDesktop.Modules.AlbumListModule
{
    /// <summary>
    /// 专辑详情页
    /// </summary>
    [Export]
    [PartCreationPolicy(CreationPolicy.NonShared)]
    public class AlbumDetailViewModel : BaseViewModel
    {
        #region 字段

        private AlbumData _AlbumData;
        private AlbumDetailParam _Params;

        #endregion

        #region 属性

        /// <summary>
        /// 专辑详情服务
        /// </summary>
        [Import]
        private IAlbumDetailService AlbumDetailService { get; set; }
        /// <summary>
        /// 专辑数据
        /// </summary>
        public AlbumData AlbumData
        {
            get
            {
                return _AlbumData;
            }
            set
            {
                if (value != _AlbumData)
                {
                    _AlbumData = value;
                    this.RaisePropertyChanged(() => this.AlbumData);
                }
            }
        }
        /// <summary>
        /// 参数类
        /// </summary>
        public AlbumDetailParam Params
        {
            get
            {
                return _Params;
            }
            set
            {
                if (value != _Params)
                {
                    _Params = value;
                    this.RaisePropertyChanged(() => this.Params);
                }
            }
        }

        #endregion

        #region 方法

        protected override void GetData(bool isClear)
        {
            if (this.AlbumDetailService == null)
            {
                throw new NullReferenceException();
            }
            if (isClear)
            {
                this.AlbumData = null;
            }

            this.Params.Page = this.CurrentPage;
            base.GetData(isClear);
            this.AlbumDetailService.GetData(result =>
            {
                AlbumInfoResult albumInfo = result as AlbumInfoResult;

                Application.Current.Dispatcher.InvokeAsync(new Action(() =>
                {
                    this.IsWaiting = false;
                    this.AlbumData = albumInfo.Album;

                }), DispatcherPriority.Background);
            }, this.Params);
        }
        /// <summary>
        /// 初始化
        /// </summary>
        /// <param name="albumID">专辑ID</param>
        /// <param name="regionName"></param>
        /// <param name="view"></param>
        public void DoInit(long albumID, string regionName, AlbumDetailView view)
        {
            if (this.RegionManager != null)
            {
                this.RegionManager.AddToRegion(regionName, view);
                this.Params = new AlbumDetailParam
                {
                    AlbumID = albumID,
                    Device = DeviceType.pc,
                    IsAsc = true,
                    Page = 1,
                    PerPage = 20
                };
                this.GetData(true);
                this.PageSize = (int)this.Params.PerPage;
                this.CurrentPage = 1;
            }
        }

        #endregion
    }
}
