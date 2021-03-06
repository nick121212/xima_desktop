﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using XIMALAYA.PCDesktop.Tools;

namespace XIMALAYA.PCDesktop.Controls
{
    /// <summary>
    /// 图片路径
    /// </summary>
    public class PathData : Singleton<PathData>
    {
        /// <summary>
        /// 下一首
        /// </summary>
        public Geometry ToolbarNextPath
        {
            get
            {
                return Geometry.Parse("F1M3,6C3,12.999 3,20.001 3,27 8.999,23.334 15.001,19.666 21,16 15.001,12.667 8.999,9.333 3,6z M25,0C26,0 27,0 28,0 28,10.666 28,21.334 28,32 27,32 26,32 25,32 25,27.334 25,22.666 25,18 16.667,22.666 8.332,27.334 0,32 0.333,21.668 0.667,11.332 1,1 8.999,5.333 17.001,9.667 25,14 25,9.334 25,4.666 25,0z");
            }
        }
        /// <summary>
        /// 上一首
        /// </summary>
        public Geometry ToolbarPrevPath
        {
            get
            {
                return Geometry.Parse("F1M23,6C17.667,9.333 12.333,12.667 7,16 7.333,16.667 7.667,17.333 8,18 13.666,21 19.334,24 25,27 25.365,20.443 26.209,9.347 23,6z M0,0C1,0 2,0 3,0 3.333,4.666 3.667,9.334 4,14 11.999,9.667 20.001,5.333 28,1 28,11.332 28,21.668 28,32 19.667,27.334 11.332,22.666 3,18 3.511,24.319 3.998,29.713 0,32 0,21.334 0,10.666 0,0z");
            }
        }
        /// <summary>
        /// 播放按钮
        /// </summary>
        public Geometry ToolbarPlayPath
        {
            get
            {
                return Geometry.Parse("F1M3,5C3.333,14.666 3.667,24.334 4,34 11.999,29.334 20.001,24.666 28,20 27.667,19.333 27.333,18.667 27,18 19.001,13.667 10.999,9.333 3,5z M0,0C11.332,6.666 22.668,13.334 34,20 34,20.333 34,20.667 34,21 22.668,27.333 11.332,33.667 0,40 0,26.668 0,13.332 0,0z");
            }
        }
        /// <summary>
        /// 暂停按钮
        /// </summary>
        public Geometry ToolbarPausePath
        {
            get
            {
                return Geometry.Parse("F1M53,27C54,27 55,27 56,27 56,40.332 56,53.668 56,67 55,67 54,67 53,67 53,53.668 53,40.332 53,27z M38,27C39,27 40,27 41,27 41,40.332 41,53.668 41,67 40,67 39,67 38,67 38,53.668 38,40.332 38,27z");
            }
        }
        /// <summary>
        /// 提交按钮
        /// </summary>
        public Geometry Submit
        {
            get
            {
                return Geometry.Parse("F1M574.042,314.611L533.8,344.398 522.251,328.798 515.235,333.988 526.786,349.593 526.782,349.596 531.978,356.603 579.235,321.622 574.042,314.611z");
            }
        }
        /// <summary>
        /// 音量按钮
        /// </summary>
        public Geometry VolumePath
        {
            get
            {
                return Geometry.Parse("M39.549999,16.180009L42.160999,16.180009 42.160999,28.402009 39.549999,28.402009z M45.549999,11.300009L48.160999,11.300009 48.160999,33.300008 45.549999,33.300008z M51.220001,7.6800084L53.831001,7.6800084 53.831001,36.846009 51.220001,36.846009z M31.99904,0L31.99904,21.940938 31.99904,43.881997 16.549597,32.911531 14.667,31.57385 14.667,31.612008 0,31.612008 0,12.390009 14.551773,12.390009 16.549597,10.970469z");
            }
        }
        /// <summary>
        /// 静音按钮
        /// </summary>
        public Geometry MutedPath
        {
            get
            {
                return Geometry.Parse("F1M114,89C118.333,92.666 122.667,96.334 127,100 131,96.334 135,92.666 139,89 141.666,91.333 144.334,93.667 147,96 143,100 139,104 135,108 138.333,112 141.667,116 145,120 145,120.667 145,121.333 145,122 143,124 141,126 139,128 135,124.334 131,120.666 127,117 123.334,120.666 119.666,124.334 116,128 113.667,126 111.333,124 109,122 109,121.667 109,121.333 109,121 109,120.333 109,119.667 109,119 113.144,116.044 117.26,112.401 119,107 115,103.667 111,100.333 107,97 109.333,94.334 111.667,91.666 114,89z M96,72C99.867,74.873 100.907,139.8 97,145 96.333,144.333 95.667,143.667 95,143 87.334,137.001 79.666,130.999 72,125 64.055,122.342 56.546,124.849 51,122 51.333,113.001 51.667,103.999 52,95 74.711,89.667 84.313,87.015 96,72z");
            }
        }
        /// <summary>
        /// 访问用户按钮
        /// </summary>
        public Geometry VistorUserPath
        {
            get
            {
                return Geometry.Parse("F1M19,7C27.893,8.873 34.867,13.987 41,19 40.667,19.667 40.333,20.333 40,21 32.766,21.151 30.168,19.98 26,18 25.667,19.666 25.333,21.333 25,23 29.937,25.36 30.842,35.543 27,40 26,39.667 25,39.333 24,39 22.928,34.234 23.147,29.734 20,27 18,29 16,31 14,33 9.334,31 4.666,29 0,27 0,26.667 0,26.333 0,26 0.333,25 0.667,24 1,23 1.333,23 1.667,23 2,23 6.353,23.87 9.972,27.167 12,24 14,21 16,18 18,15 15.334,16.333 12.666,17.667 10,19 9.333,18.333 8.667,17.667 8,17 11.666,13.667 15.334,10.333 19,7z M28,0C29,0 30,0 31,0 32.333,1.666 33.667,3.333 35,5 34.667,6 34.333,7 34,8 33.333,8.333 32.667,8.667 32,9 30.667,9 29.333,9 28,9 27,7.667 26,6.333 25,5 26,3.333 27,1.666 28,0z");
            }
        }
        /// <summary>
        /// 声音数按钮
        /// </summary>
        public Geometry TrackCountPath
        {
            get
            {
                return Geometry.Parse("F1M18,8C22.102,10.837 21.727,12.534 21,18 20,18 19,18 18,18 18,14.667 18,11.333 18,8z M2,8C5.145,10.375 5.17,12.245 5,18 4,18 3,18 2,18 2,16.667 2,15.333 2,14 -0.719,11.773 1.531,12.901 2,8z M10,6C10.667,6 11.333,6 12,6 12.333,10.666 12.667,15.334 13,20 12,20 11,20 10,20 10,15.334 10,10.666 10,6z M6,4C6.667,4 7.333,4 8,4 8.333,9.999 8.667,16.001 9,22 8,22 7,22 6,22 6,16.001 6,9.999 6,4z M14,0C14.667,0 15.333,0 16,0 16.333,7.999 16.667,16.001 17,24 16,24 15,24 14,24 14,16.001 14,7.999 14,0z");
            }
        }
        /// <summary>
        /// 订阅专辑按钮
        /// </summary>
        public Geometry SubscribeAlbumPath
        {
            get
            {
                return Geometry.Parse("F1M5,24C4.667,25.666 4.333,27.333 4,29 8.498,29.968 8.212,30.671 10,26 9.333,25.333 8.667,24.667 8,24 7,24 6,24 5,24z M5,14C5,15.333 5,16.667 5,18 11.701,19.633 14.676,21.887 16,29 17.333,29 18.667,29 20,29 20,27.667 20,26.333 20,25 17.886,20.582 16.52,18.112 12,16 9.667,15.333 7.333,14.667 5,14z M5,5C5,6.333 5,7.667 5,9 17.003,9.895 24.49,16.561 25,29 26.333,29 27.667,29 29,29 29,27.333 29,25.666 29,24 24.952,13.269 19.034,5.745 5,5z M19.207,-0.343C25.05,-0.221 30.492,0.348 34,2 34.275,12.234 35.305,26.984 32,34 21.766,34.275 7.016,35.305 0,32 -0.275,21.766 -1.305,7.016 2,0 7.117,-0.138 13.363,-0.464 19.207,-0.343z");
            }
        }

        private PathData() { }
    }
}
