using Microsoft.Practices.Prism.Modularity;
using Microsoft.Practices.Prism.Regions;
using Microsoft.Practices.ServiceLocation;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace XIMALAYA.PCDesktop.Tools.Untils
{
    public class BaseModule : BaseViewModel, IModule, IDisposable
    {
        public virtual void Initialize()
        {

        }

        public virtual void Dispose()
        {
            this.RegionManager = null;
            this.Container = null;
        }
    }
}
