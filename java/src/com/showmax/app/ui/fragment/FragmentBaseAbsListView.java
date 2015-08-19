// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.model.adapter.BaseAssetAdapter;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public abstract class FragmentBaseAbsListView extends FragmentBase
{

    protected AbsListView mAbsListView;
    protected BaseAssetAdapter mAssetAdapter;
    private FragmentBase.OnAssetClickListener mOnAssetClickListener;
    private android.widget.AdapterView.OnItemClickListener mOnItemClickListener;
    protected RefreshProgressBar mProgressbar;

    public FragmentBaseAbsListView()
    {
        mOnItemClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final FragmentBaseAbsListView this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                MauLog.v("[%s]::[onItemClick]::[position: %d]", new Object[] {
                    getLogTag(), Integer.valueOf(i)
                });
                view = adapterview.getAdapter();
                if (view != null && i >= 0 && i < view.getCount())
                {
                    adapterview = (Asset)adapterview.getAdapter().getItem(i);
                    mOnAssetClickListener.onAssetClick(adapterview);
                }
            }

            
            {
                this$0 = FragmentBaseAbsListView.this;
                super();
            }
        };
    }

    private String getLogTag()
    {
        return (new StringBuilder()).append(getSuccessorLogTag()).append(".LIST").toString();
    }

    public abstract int getAbsListViewId();

    public abstract BaseAssetAdapter getAdapter();

    public abstract String getNoDataMessage();

    public abstract int getProgressBarId();

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
        mAbsListView = (AbsListView)view.findViewById(getAbsListViewId());
        mProgressbar = (RefreshProgressBar)view.findViewById(getProgressBarId());
        if (mAssetAdapter == null)
        {
            mAssetAdapter = getAdapter();
        }
        mAbsListView.setAdapter(mAssetAdapter);
        mAbsListView.setOnItemClickListener(mOnItemClickListener);
    }

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
            mAbsListView.setVisibility(0);
            return;
        }
    }

    public void showNoResult()
    {
        mProgressbar.setVisibility(0);
        mAbsListView.setVisibility(8);
        mProgressbar.showMessage(getNoDataMessage());
    }

    public void showProgressbar()
    {
        mProgressbar.setVisibility(0);
        mAbsListView.setVisibility(8);
    }

    public void sort(com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
        mAssetAdapter.sort(sortoption);
    }


}
