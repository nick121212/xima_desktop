using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.Prism.Events;

namespace XIMALAYA.PCDesktop.Events
{
    public class SoundInfo
    {
        public long TrackID { get; set; }
        public string Title { get; set; }
        public string Url { get; set; }
        public string PicUrl { get; set; }
    }
    public class PlayerEvent : CompositePresentationEvent<SoundInfo> { }
}
