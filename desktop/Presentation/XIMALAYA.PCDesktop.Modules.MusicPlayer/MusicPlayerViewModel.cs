using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Events;
using Microsoft.Practices.Prism.ViewModel;
using WPFSoundVisualizationLib;
using XIMALAYA.PCDesktop.Events;
using XIMALAYA.PCDesktop.Modules.MusicPlayer.Views;
using XIMALAYA.PCDesktop.Tools.Player;
using XIMALAYA.PCDesktop.Tools.Untils;
using Microsoft.Practices.Prism.Modularity;
using XIMALAYA.PCDesktop.Tools.Command;

namespace XIMALAYA.PCDesktop.Modules.MusicPlayer
{
    /// <summary>
    /// 播放器视图model
    /// </summary>
    [Export]
    public class MusicPlayerViewModel : BaseViewModel, IModule
    {
        #region command

        public ICommand ShowSpectrumAnalyzerCommand { get; set; }

        #endregion

        #region 属性

        private SoundInfo _SoundInfo;
        /// <summary>
        /// 当前播放歌曲信息
        /// </summary>
        public SoundInfo SoundInfo
        {
            get
            {
                return _SoundInfo;
            }
            set
            {
                if (value == _SoundInfo) return;
                _SoundInfo = value;
                this.RaisePropertyChanged(() => this.SoundInfo);
            }
        }
        private bool _ShowSpectrumAnalyzer = false;
        /// <summary>
        /// 是否显示声音波形
        /// </summary>
        public bool ShowSpectrumAnalyzer
        {
            get
            {
                return _ShowSpectrumAnalyzer;
            }
            set
            {
                if (value != _ShowSpectrumAnalyzer)
                {
                    _ShowSpectrumAnalyzer = value;
                    this.RaisePropertyChanged(() => this.ShowSpectrumAnalyzer);
                }
            }
        }
        /// <summary>
        /// 播放器控件
        /// </summary>
        public BassEngine BassEngine
        {
            get
            {
                return Player.Instance;
            }
        }

        #endregion

        #region 方法

        /// <summary>
        /// 初始化
        /// </summary>
        public void Initialize()
        {
            this.BassEngine.CurrentSoundUrl = string.Empty;
            this.ShowSpectrumAnalyzerCommand = new DelegateCommand<object>(o =>
            {
                this.ShowSpectrumAnalyzer = !this.ShowSpectrumAnalyzer;

            });
            this.EventAggregator.GetEvent<PlayerEvent>().Subscribe((soundInfo) =>
            {
                if (this.SoundInfo != null && this.SoundInfo.Url == soundInfo.Url)
                {
                    return;
                }
                this.SoundInfo = soundInfo;
                this.BassEngine.OpenUrlAsync(this.SoundInfo.Url);
            });
        }

        #endregion
    }
}