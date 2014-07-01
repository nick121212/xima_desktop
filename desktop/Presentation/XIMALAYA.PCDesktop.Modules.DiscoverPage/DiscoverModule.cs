using Microsoft.Practices.Prism.MefExtensions.Modularity;
using XIMALAYA.PCDesktop.Modules.DiscoverPage.Views;
using XIMALAYA.PCDesktop.Tools;
using XIMALAYA.PCDesktop.Tools.Untils;

namespace XIMALAYA.PCDesktop.Modules.DiscoverPage
{
    [ModuleExport(WellKnownModuleNames.DiscoverModule, typeof(DiscoverModule))]
    public class DiscoverModule : BaseModule
    {
        public override void Initialize()
        {
            if (this.RegionManager.Regions.ContainsRegionWithName(WellKnownRegionNames.DiscoverModuleRegion))
            {
                var view = this.Container.GetInstance<DiscoverView>();
                var region = this.RegionManager.Regions[WellKnownRegionNames.DiscoverModuleRegion];

                region.Add(view, WellKnownModuleNames.DiscoverModule);

                view.DiscoverViewModel.Initialize();

                var detailModel = this.Container.GetInstance<CategoryDetailViewModel>();
            }
        }
    }
}