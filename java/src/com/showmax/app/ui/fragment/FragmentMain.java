// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.ui.widget.AssetsTileView;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.app.ui.widget.ThreeViewPager;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public class FragmentMain extends FragmentBase
    implements com.showmax.app.ui.widget.ThreeViewPager.ThreeViewPagerListener
{
    public static interface FragmentMainListener
    {

        public abstract void onAdvertisementClick(Asset asset);

        public abstract void onAdvertisementRefreshclick();

        public abstract void onSeeAllClick(int i);
    }


    public static final String TAG = com/showmax/app/ui/fragment/FragmentMain.getSimpleName();
    private ThreeViewPager mAdsThreeViewPager;
    private com.showmax.app.ui.widget.AssetsTileView.AssetsTileViewListener mAssetTileViewListener;
    private FragmentMainListener mFragmentMainListener;
    private FragmentBase.OnAssetClickListener mOnAssetClickListener;
    private RefreshProgressBar mProgressbar;
    private ViewGroup mTilesContainer;

    public FragmentMain()
    {
        mAssetTileViewListener = new com.showmax.app.ui.widget.AssetsTileView.AssetsTileViewListener() {

            final FragmentMain this$0;

            public void onAssetClick(Asset asset)
            {
                mOnAssetClickListener.onAssetClick(asset);
            }

            public void onSeeAllClick(View view, ArrayList arraylist, String s)
            {
                mFragmentMainListener.onSeeAllClick(((ViewGroup)view.getParent()).indexOfChild(view));
            }

            
            {
                this$0 = FragmentMain.this;
                super();
            }
        };
    }

    public static FragmentMain newInstance()
    {
        MauLog.v("[FragmentMain]::[newInstance]");
        FragmentMain fragmentmain = new FragmentMain();
        fragmentmain.setArguments(new Bundle());
        return fragmentmain;
    }

    public void appendAssetTile(com.showmax.app.ui.ActivityMain.Tile tile, boolean flag)
    {
        mProgressbar.setVisibility(8);
        mTilesContainer.setVisibility(0);
        if (flag)
        {
            mTilesContainer.removeAllViews();
        }
        AssetsTileView assetstileview = (AssetsTileView)getActivity().getLayoutInflater().inflate(0x7f03004d, mTilesContainer, false);
        assetstileview.showAssets(tile.getAssets(), tile.getTileType(), tile.getCategory());
        assetstileview.setAssetsTileViewListener(mAssetTileViewListener);
        mTilesContainer.addView(assetstileview);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onAdvertisementClick(Asset asset)
    {
        mFragmentMainListener.onAdvertisementClick(asset);
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mFragmentMainListener = (FragmentMainListener)activity;
            mOnAssetClickListener = (FragmentBase.OnAssetClickListener)activity;
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
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030041, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mFragmentMainListener = null;
        mOnAssetClickListener = null;
    }

    public void onEvent(SubscriptionStatusChangedEvent subscriptionstatuschangedevent)
    {
        MauLog.v("[%s]::[onEvent]::[SubscriptionStatusChangedEvent]", new Object[] {
            TAG
        });
        if (mTilesContainer != null)
        {
            for (int i = 0; i < mTilesContainer.getChildCount(); i++)
            {
                subscriptionstatuschangedevent = mTilesContainer.getChildAt(i);
                if (subscriptionstatuschangedevent instanceof AssetsTileView)
                {
                    ((AssetsTileView)subscriptionstatuschangedevent).refreshSubscriptionStatus();
                }
            }

        }
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onStart()
    {
        super.onStart();
        if (mAdsThreeViewPager != null)
        {
            mAdsThreeViewPager.setAutoPageEnabled(true);
        }
        EventBus.getInstance().register(this);
    }

    public void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
        if (mAdsThreeViewPager != null)
        {
            mAdsThreeViewPager.setAutoPageEnabled(false);
        }
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        mAdsThreeViewPager = (ThreeViewPager)view.findViewById(0x7f0b0106);
        mTilesContainer = (ViewGroup)view.findViewById(0x7f0b0107);
        mProgressbar = (RefreshProgressBar)view.findViewById(0x7f0b0108);
        mAdsThreeViewPager.setThreeViewPagerListener(this);
        mAdsThreeViewPager.setAutoPageEnabled(true);
    }

    public void showAdvertisements(ArrayList arraylist)
    {
        int i = 0;
        mProgressbar.setVisibility(8);
        mAdsThreeViewPager.setVisibility(0);
        if (arraylist == null || arraylist.isEmpty())
        {
            mAdsThreeViewPager.setNoData();
            return;
        }
        ThreeViewPager threeviewpager = mAdsThreeViewPager;
        if (isTablet())
        {
            i = 1;
        }
        threeviewpager.setData(arraylist, i);
    }

    public void showProgressBar()
    {
        mProgressbar.setVisibility(0);
        mAdsThreeViewPager.setVisibility(8);
        mTilesContainer.setVisibility(8);
    }



}
