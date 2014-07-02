using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using XIMALAYA.PCDesktop.Tools;

namespace XIMALAYA.PCDesktop.Controls
{
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

        public Geometry Submit
        {
            get
            {
                return Geometry.Parse("F1M574.042,314.611L533.8,344.398 522.251,328.798 515.235,333.988 526.786,349.593 526.782,349.596 531.978,356.603 579.235,321.622 574.042,314.611z");
            }
        }

        private PathData() { }
    }
}
