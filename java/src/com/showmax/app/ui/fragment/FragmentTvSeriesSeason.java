// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter;
import com.showmax.app.model.adapter.recyclerview.EpisodesAssetAdapter;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseRecyclerView

public class FragmentTvSeriesSeason extends FragmentBaseRecyclerView
{

    private static final String ARGS_TV_SERIES_SEASON = "args.tv.series.season";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentTvSeriesSeason.getSimpleName();
    private Asset mSeason;

    public FragmentTvSeriesSeason()
    {
    }

    private void addTvSerieImagesToEpisodes()
    {
        if (mSeason != null)
        {
            for (Iterator iterator = mSeason.episodes.iterator(); iterator.hasNext();)
            {
                Asset asset = (Asset)iterator.next();
                asset.tvSerie = new Asset();
                asset.tvSerie.images = mSeason.tvSerie.images;
            }

        }
    }

    private void initData(Bundle bundle)
    {
        mSeason = (Asset)getArguments().getParcelable("args.tv.series.season");
        addTvSerieImagesToEpisodes();
        if (bundle == null);
    }

    public static FragmentTvSeriesSeason newInstance(Asset asset)
    {
        FragmentTvSeriesSeason fragmenttvseriesseason = new FragmentTvSeriesSeason();
        Bundle bundle = new Bundle();
        bundle.putParcelable("args.tv.series.season", asset);
        fragmenttvseriesseason.setArguments(bundle);
        return fragmenttvseriesseason;
    }

    private void showEpisodes(Asset asset)
    {
        showAssets(asset.episodes, null);
    }

    public String getNoDataMessage()
    {
        return getString(0x7f0d00aa);
    }

    public int getProgressBarId()
    {
        return 0x7f0b012c;
    }

    public int getRecyclerViewId()
    {
        return 0x7f0b012d;
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        showEpisodes(mSeason);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initData(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030046, viewgroup, false);
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
        EpisodesAssetAdapter episodesassetadapter = new EpisodesAssetAdapter(getActivity());
        recyclerview.setLayoutManager(new GridLayoutManager(getActivity(), getResources().getInteger(0x7f0c0010), 1, false));
        recyclerview.setAdapter(episodesassetadapter);
        return episodesassetadapter;
    }

}
