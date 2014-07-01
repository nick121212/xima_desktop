using Microsoft.Practices.Prism.Commands;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel.Composition;
using System.Windows;
using XIMALAYA.PCDesktop.Core.Models.Category;
using XIMALAYA.PCDesktop.Core.Models.Discover;
using XIMALAYA.PCDesktop.Core.Models.FocusImage;
using XIMALAYA.PCDesktop.Core.Models.Subject;
using XIMALAYA.PCDesktop.Core.ParamsModel;
using XIMALAYA.PCDesktop.Core.Services;
using XIMALAYA.PCDesktop.Events;
using XIMALAYA.PCDesktop.Tools.Untils;

namespace XIMALAYA.PCDesktop.Modules.DiscoverPage
{
    [Export]
    public sealed class DiscoverViewModel : BaseViewModel
    {
        #region fields

        private ObservableCollection<FocusImageData> _FocusImageList = null;
        private ObservableCollection<SubjectData> _SubjectList = null;
        private static ObservableCollection<CategoryData> _CategoryList = null;

        #endregion

        #region Properties

        [Import]
        private IFocusImageService FocusImageService { get; set; }
        [Import]
        private ISuperExploreIndex SuperExploreIndex { get; set; }
        [Import]
        private ICategoryService CategoryService { get; set; }

        [Import]
        private IHotSoundsService HotSoundsService { get; set; }

        /// <summary>
        /// 焦点图列表
        /// </summary>
        public ObservableCollection<FocusImageData> FocusImageList
        {
            get { return _FocusImageList; }
            private set
            {
                if (value != _FocusImageList)
                {
                    _FocusImageList = value;
                    this.RaisePropertyChanged(() => this.FocusImageList);
                }
            }
        }
        /// <summary>
        /// 分类列表
        /// </summary>
        public static ObservableCollection<CategoryData> CategoryList
        {
            get { return _CategoryList; }
            private set
            {
                if (value != _CategoryList)
                {
                    _CategoryList = value;
                    //this.RaisePropertyChanged(() => this.CategoryList);
                }
            }
        }
        /// <summary>
        /// 今日热点
        /// </summary>
        public ObservableCollection<SubjectData> SubjectList
        {
            get { return _SubjectList; }
            private set
            {
                if (value != _SubjectList)
                {
                    _SubjectList = value;
                    //this.RaisePropertyChanged(() => this.SubjectList);
                }
            }
        }
        /// <summary>
        /// 热门声音所在的分类
        /// </summary>
        public ObservableCollection<CategoryData> HotSoundsCategories { get; set; }

        #endregion

        #region commands

        /// <summary>
        /// 查看分类的详情
        /// </summary>
        public DelegateCommand<string> ShowCategoryDetailCommand { get; private set; }

        #endregion

        #region actions

        private void GetFocusImageDataAction()
        {
            if (this.FocusImageService != null)
            {
                this.FocusImageService.GetData(this.GetExporeIndexData, new SuperExploreParam
                {
                    Device = DeviceType.pc,
                    PicVersion = 7
                });
            }
        }

        private void GetCategoryListAction()
        {
            this.CategoryService.GetData<CategoryParam>(new Action<object>(categories =>
            {
                CategoryResult categoryResult = categories as CategoryResult;
                Application.Current.Dispatcher.BeginInvoke(new Action(() =>
                {
                    foreach (CategoryData cd in categoryResult.List)
                    {
                        DiscoverViewModel.CategoryList.Add(cd);
                    }
                }));
            }), new CategoryParam
            {
                Device = DeviceType.pc,
                PicVersion = 5,
                Scale = 2
            });
        }

        private void GetExporeIndexData(object result)
        {
            FocusImageResult superData = result as FocusImageResult;

            if (superData != null && superData.Ret == 0)
            {
                Application.Current.Dispatcher.BeginInvoke(new Action(() =>
                {
                    int index = 0;
                    foreach (FocusImageData fi in superData.List)
                    {
                        fi.IsFirst = index == 0;
                        index++;
                        this.FocusImageList.Add(fi);
                    }
                }));
            }
        }

        private void GetHotSoundsAction()
        {
            if (this.HotSoundsService != null)
            {
                this.HotSoundsService.GetData(result =>
                {
                    var res = result as HotSoundsResult;

                    if (res.Ret == 0)
                    {
                        Application.Current.Dispatcher.BeginInvoke(new Action(() =>
                        {
                            foreach (var cate in res.Categories)
                            {
                                this.HotSoundsCategories.Add(cate);
                            }
                        }));
                        
                    }
                }, new BaseParam
                {
                    Device = DeviceType.pc
                });
            }
        }

        public void Initialize()
        {
            this.GetFocusImageDataAction();
            this.GetCategoryListAction();
            this.GetHotSoundsAction();
        }

        #endregion

        #region construction

        public DiscoverViewModel()
        {
            DiscoverViewModel.CategoryList = new ObservableCollection<CategoryData>();
            this.FocusImageList = new ObservableCollection<FocusImageData>();
            this.SubjectList = new ObservableCollection<SubjectData>();
            this.HotSoundsCategories = new ObservableCollection<CategoryData>();

            //点击分类命令
            this.ShowCategoryDetailCommand = new DelegateCommand<string>(new Action<string>(cateName =>
            {
                //发送事件
                this.EventAggregator.GetEvent<TagEvent>().Publish(new TagEventArgument()
                {
                    TagKey = cateName
                });
            }));
        }

        #endregion
    }
}
