// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter;
import com.showmax.app.model.adapter.recyclerview.PortraitAssetAdapter;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseRecyclerView

public class FragmentAssetGrid extends FragmentBaseRecyclerView
{
    public static interface FragmentAssetGridListener
    {
    }


    public static final String ARGS_ASSET_TYPE = "args.asset.type";
    public static final String ARGS_CATEGORY = "args.category";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentAssetGrid.getSimpleName();
    private ApiCallback mAssetListCallback;
    private com.showmax.lib.api.model.catalogue.Asset.Type mAssetType;
    private Category mCategory;
    private FragmentAssetGridListener mFragmentAssetGridListener;

    public FragmentAssetGrid()
    {
        mAssetListCallback = new ApiCallback() {

            final FragmentAssetGrid this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mAssetListCallback]::[failure]", new Object[] {
                    FragmentAssetGrid.TAG
                });
                showAssets(null, UserPrefs.getSortOption(getActivity()));
                EventBus.getInstance().post(new ApiErrorEvent(getError()));
            }

            public void success(AssetList assetlist, int i)
            {
                MauLog.v("[%s]::[mAssetListCallback]::[success]", new Object[] {
                    FragmentAssetGrid.TAG
                });
                showAssets(assetlist.items, UserPrefs.getSortOption(getActivity()));
            }

            public volatile void success(Object obj, int i)
            {
                success((AssetList)obj, i);
            }

            
            {
                this$0 = FragmentAssetGrid.this;
                super();
            }
        };
    }

    private void initData(Bundle bundle)
    {
        Bundle bundle1 = getArguments();
        mCategory = (Category)bundle1.getParcelable("args.category");
        mAssetType = (com.showmax.lib.api.model.catalogue.Asset.Type)bundle1.getSerializable("args.asset.type");
        if (bundle == null);
    }

    private void loadAssets()
    {
        showProgressbar();
        Object obj2 = UserPrefs.getCurrentLanguage(getActivity());
        com.showmax.lib.api.model.catalogue.Section section = UserPrefs.getCurrentSection(getActivity());
        boolean flag = "category.id.all.fake".equals(mCategory.id);
        if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
        {
            CatalogueApi catalogueapi = CatalogueApi.getInstance();
            Object obj;
            if (flag)
            {
                obj = null;
            } else
            {
                obj = mCategory;
            }
            catalogueapi.loadAssets(section, ((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj2)), ((Category) (obj)), com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE, null, null, mAssetListCallback);
            obj2 = MauAnalytics.getInstance();
            if (flag)
            {
                obj = "all";
            } else
            {
                obj = mCategory.title;
            }
            ((MauAnalytics) (obj2)).onNavToMovies(((String) (obj)));
        } else
        if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES)
        {
            CatalogueApi catalogueapi1 = CatalogueApi.getInstance();
            Object obj1;
            if (flag)
            {
                obj1 = null;
            } else
            {
                obj1 = mCategory;
            }
            catalogueapi1.loadAssets(section, ((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj2)), ((Category) (obj1)), com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES, null, null, mAssetListCallback);
            obj2 = MauAnalytics.getInstance();
            if (flag)
            {
                obj1 = "all";
            } else
            {
                obj1 = mCategory.title;
            }
            ((MauAnalytics) (obj2)).onNavToTvShows(((String) (obj1)));
            return;
        }
    }

    public static FragmentAssetGrid newInstance(com.showmax.lib.api.model.catalogue.Asset.Type type, Category category)
    {
        MauLog.v("[%s]::[newInstance]", new Object[] {
            TAG
        });
        FragmentAssetGrid fragmentassetgrid = new FragmentAssetGrid();
        Bundle bundle = new Bundle();
        bundle.putParcelable("args.category", category);
        bundle.putSerializable("args.asset.type", type);
        fragmentassetgrid.setArguments(bundle);
        return fragmentassetgrid;
    }

    public String getNoDataMessage()
    {
        return getString(0x7f0d00aa);
    }

    public int getProgressBarId()
    {
        return 0x7f0b0102;
    }

    public int getRecyclerViewId()
    {
        return 0x7f0b0103;
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        loadAssets();
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mFragmentAssetGridListener = (FragmentAssetGridListener)activity;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new IllegalStateException("Activity must implement fragment's callbacks.");
        }
        super.onAttach(activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        initData(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030040, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mFragmentAssetGridListener = null;
    }

    public void onEvent(SubscriptionStatusChangedEvent subscriptionstatuschangedevent)
    {
        MauLog.v("[%s]::[onEvent]::[SubscriptionStatusChangedEvent]", new Object[] {
            TAG
        });
        if (mAssetAdapter != null)
        {
            mAssetAdapter.refreshSubscriptionStatus();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        MauLog.v("[%s]::[%s]::[onOptionsItemSelected]", new Object[] {
            TAG, mCategory.title
        });
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131427797: 
            sort(com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_NEWEST);
            return false;

        case 2131427798: 
            sort(com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST);
            return false;

        case 2131427799: 
            sort(com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC);
            return false;

        case 2131427800: 
            sort(com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC);
            break;
        }
        return false;
    }

    public void onResume()
    {
        super.onResume();
        sort(UserPrefs.getSortOption(getActivity()));
    }

    public void onStart()
    {
        super.onStart();
        EventBus.getInstance().register(this);
    }

    public void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
    }

    public BaseAssetAdapter setupAdapter(RecyclerView recyclerview)
    {
        PortraitAssetAdapter portraitassetadapter = new PortraitAssetAdapter(getActivity());
        recyclerview.setLayoutManager(new GridLayoutManager(getActivity(), getResources().getInteger(0x7f0c0011), 1, false));
        recyclerview.setAdapter(portraitassetadapter);
        return portraitassetadapter;
    }

}
