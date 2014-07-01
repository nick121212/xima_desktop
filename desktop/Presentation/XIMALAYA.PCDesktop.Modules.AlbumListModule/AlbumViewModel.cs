using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Microsoft.Practices.Prism.Regions;
using Microsoft.Practices.Prism.ViewModel;
using Microsoft.Practices.ServiceLocation;
using Microsoft.Practices.Prism.Commands;
using XIMALAYA.PCDesktop.Core.Models.Album;
using XIMALAYA.PCDesktop.Core.Models.Tags;
using XIMALAYA.PCDesktop.Core.ParamsModel;
using XIMALAYA.PCDesktop.Core.Services;
using XIMALAYA.PCDesktop.Modules.AlbumListModule.Views;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Events;
using XIMALAYA.PCDesktop.Events;
using XIMALAYA.PCDesktop.Tools.Untils;

namespace XIMALAYA.PCDesktop.Modules.AlbumListModule
{
    /// <summary>
    /// 专辑model
    /// </summary>
    [Export]
    [PartCreationPolicy(System.ComponentModel.Composition.CreationPolicy.NonShared)]
    public class AlbumViewModel : BaseViewModel
    {
        /// <summary>
        /// 专辑数据
        /// </summary>
        public ObservableCollection<AlbumData> Albums { private get; set; }
        /// <summary>
        /// 标签下的专辑服务
        /// </summary>
        [Import]
        private ICategoryTagAlbumsService CategoryTagAlbumsService { get; set; }
        private CategoryTagAlbums Params { get; set; }

        public List<String> StatusList { get; set; }

        public DelegateCommand<long?> ShowAlbumInfoCommand { get; set; }

        private bool _IsShowStatus;
        /// <summary>
        /// 属性描述
        /// </summary>
        public bool IsShowStatus
        {
            get
            {
                return _IsShowStatus;
            }
            set
            {
                if (value == _IsShowStatus) return;
                _IsShowStatus = value;
                this.RaisePropertyChanged(() => this.IsShowStatus);

            }
        }
        
        private ConditionAlbumType _Condition;
        /// <summary>
        /// 属性描述
        /// </summary>
        public ConditionAlbumType Condition
        {
            get
            {
                return _Condition;
            }
            set
            {
                if (value == _Condition) return;
                _Condition = value;
                this.RaisePropertyChanged(() => this.Condition);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        public DelegateCommand<string> ConditionCommand { get; set; }

        private int _Status;
        /// <summary>
        /// 属性描述
        /// </summary>
        public int Status
        {
            get
            {
                return _Status;
            }
            set
            {
                if (value == _Status) return;
                _Status = value;
                this.RaisePropertyChanged(() => this.Status);
                this.OnStatusChanged();
            }
        }

        private void OnStatusChanged()
        {
            this.Params.Status = Status;
            this.GetData(true);
        }

        /// <summary>
        /// 构造
        /// </summary>
        public AlbumViewModel()
        {
            this.Albums = new ObservableCollection<AlbumData>();
            this.ConditionCommand = new DelegateCommand<string>(s =>
            {
                int type = int.Parse(s);
                this.Condition = (ConditionAlbumType)type;
                this.Params.Condition = this.Condition;
                this.GetData(true);
            });
            this.ShowAlbumInfoCommand = new DelegateCommand<long?>(albumID =>
            {
                if (albumID == null) throw new ArgumentNullException("albumID");

                var albumInfo = this.Albums.FirstOrDefault(album => album.AlbumID == albumID);

                if (albumInfo.AlbumID == albumID)
                {
                    this.EventAggregator.GetEvent<SoundListEvent<AlbumData>>().Publish(albumInfo);
                }
            });
            this.StatusList = new List<string>() { "全部", "完结", "连载" };
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="isClear"></param>
        private void GetData(bool isClear)
        {
            if (this.CategoryTagAlbumsService != null)
            {
                if (isClear)
                {
                    this.Albums.Clear();
                    this.Params.Page = 1;
                }

                this.IsWaiting = true;
                this.CategoryTagAlbumsService.GetData(result =>
                {
                    TagAlbumsResult tagAlbumsResult = result as TagAlbumsResult;
                    Application.Current.Dispatcher.InvokeAsync(new Action(() =>
                    {
                        this.IsWaiting = false;
                        if (tagAlbumsResult.Ret == 0)
                        {
                            foreach (var album in tagAlbumsResult.List)
                            {
                                this.Albums.Add(album);
                            }
                        }
                    }), DispatcherPriority.Background);
                }, this.Params);
            }
        }
        /// <summary>
        /// 初始化
        /// </summary>
        /// <param name="param"></param>
        /// <param name="regionName"></param>
        /// <param name="view"></param>
        public void DoInit(CategoryTagAlbums param, string regionName, AlbumView view)
        {
            if (this.RegionManager != null)
            {
                this.RegionManager.AddToRegion(regionName, view);
                this.Params = param;
                this.Condition = this.Params.Condition;
                this.IsShowStatus = this.Params.Category == "book";
                this.GetData(true);
            }
        }
    }
}
