// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public abstract class FragmentBaseRecyclerView extends FragmentBase
{

    protected BaseAssetAdapter mAssetAdapter;
    private FragmentBase.OnAssetClickListener mOnAssetClickListener;
    private com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter.OnItemClickListener mOnItemClickListener;
    protected RefreshProgressBar mProgressbar;
    protected RecyclerView mRecyclerView;

    public FragmentBaseRecyclerView()
    {
        mOnItemClickListener = new com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter.OnItemClickListener() {

            final FragmentBaseRecyclerView this$0;

            public void onItemClick(Asset asset)
            {
                MauLog.v("[%s]::[onItemClick]::[asset: %s]", new Object[] {
                    getLogTag(), asset
                });
                mOnAssetClickListener.onAssetClick(asset);
            }

            
            {
                this$0 = FragmentBaseRecyclerView.this;
                super();
            }
        };
    }

    private String getLogTag()
    {
        return (new StringBuilder()).append(getSuccessorLogTag()).append(".LIST").toString();
    }

    public abstract String getNoDataMessage();

    public abstract int getProgressBarId();

    public abstract int getRecyclerViewId();

    public void onAttach(Activity activity)
    {
        try
        {
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

    public void onDetach()
    {
        super.onDetach();
        mOnAssetClickListener = null;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        mRecyclerView = (RecyclerView)view.findViewById(getRecyclerViewId());
        mProgressbar = (RefreshProgressBar)view.findViewById(getProgressBarId());
        mAssetAdapter = setupAdapter(mRecyclerView);
        mAssetAdapter.setOnItemClickListener(mOnItemClickListener);
    }

    public abstract BaseAssetAdapter setupAdapter(RecyclerView recyclerview);

    public void showAssets(ArrayList arraylist, com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
        mAssetAdapter.setData(arraylist, sortoption);
        if (arraylist == null || arraylist.isEmpty())
        {
            showNoResult();
            return;
        } else
        {
            mProgressbar.setVisibility(8);
            mRecyclerView.setVisibility(0);
            return;
        }
    }

    public void showNoResult()
    {
        mProgressbar.setVisibility(0);
        mRecyclerView.setVisibility(8);
        mProgressbar.showMessage(getNoDataMessage());
    }

    public void showProgressbar()
    {
        mProgressbar.setVisibility(0);
        mRecyclerView.setVisibility(8);
    }

    public void sort(com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
        mAssetAdapter.sort(sortoption);
    }


}
