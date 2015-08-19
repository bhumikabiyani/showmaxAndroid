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
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter;
import com.showmax.app.model.adapter.recyclerview.SearchAssetAdapter;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseRecyclerView

public class FragmentSearch extends FragmentBaseRecyclerView
{
    public static interface FragmentSearchListener
    {

        public abstract void onScrollStateChanged(boolean flag);
    }


    public static final String BUNDLE_KEY_SEARCH_QUERY = "bundle.key.search.query";
    public static final String BUNDLE_KEY_SEARCH_TYPE = "bundle.key.search.type";
    public static final String BUNDLE_KEY_SECTION = "bundle.key.section";
    public static final String BUNDLE_KEY_SELECTED_ASSET_TYPE = "bundle.key.selected.asset.type";
    public static final String BUNDLE_KEY_SELECTED_CATEGORY = "bundle.key.selected.category";
    public static final String BUNDLE_KEY_SELECTED_SECTION = "bundle.key.selected.section";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentSearch.getSimpleName();
    private FragmentSearchListener mListener;
    private TextView mMessage;
    private android.support.v7.widget.RecyclerView.OnScrollListener mOnResultListScrollListener;

    public FragmentSearch()
    {
        mOnResultListScrollListener = new android.support.v7.widget.RecyclerView.OnScrollListener() {

            final FragmentSearch this$0;

            public void onScrollStateChanged(RecyclerView recyclerview, int i)
            {
                super.onScrollStateChanged(recyclerview, i);
                recyclerview = mListener;
                boolean flag;
                if (i != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                recyclerview.onScrollStateChanged(flag);
            }

            
            {
                this$0 = FragmentSearch.this;
                super();
            }
        };
    }

    public static FragmentSearch newInstance()
    {
        FragmentSearch fragmentsearch = new FragmentSearch();
        fragmentsearch.setArguments(new Bundle());
        return fragmentsearch;
    }

    public void filter(Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        String s = TAG;
        Object obj;
        if (category == null)
        {
            obj = null;
        } else
        {
            obj = category.title;
        }
        MauLog.v("[%s]::[filter]::[section: %s]::[category: %s]::[searchType: %s]", new Object[] {
            s, section, obj, type
        });
        obj = (SearchAssetAdapter)mAssetAdapter;
        ((SearchAssetAdapter) (obj)).filter(section, category, type);
        if (((SearchAssetAdapter) (obj)).getItemCount() < 1)
        {
            showNoResult();
            return;
        } else
        {
            mMessage.setVisibility(8);
            mProgressbar.setVisibility(8);
            mRecyclerView.setVisibility(0);
            return;
        }
    }

    public String getNoDataMessage()
    {
        return getString(0x7f0d00b9);
    }

    public int getProgressBarId()
    {
        return 0x7f0b010b;
    }

    public int getRecyclerViewId()
    {
        return 0x7f0b010d;
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mListener = (FragmentSearchListener)activity;
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
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030043, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mListener = null;
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
        MauLog.v("[%s]::[onOptionsItemSelected]", new Object[] {
            TAG
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
        mMessage = (TextView)view.findViewById(0x7f0b010c);
        mRecyclerView.addOnScrollListener(mOnResultListScrollListener);
    }

    public BaseAssetAdapter setupAdapter(RecyclerView recyclerview)
    {
        SearchAssetAdapter searchassetadapter = new SearchAssetAdapter(getActivity());
        recyclerview.setLayoutManager(new GridLayoutManager(getActivity(), getResources().getInteger(0x7f0c0013), 1, false));
        recyclerview.setAdapter(searchassetadapter);
        return searchassetadapter;
    }

    public void showAssets(ArrayList arraylist, com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
label0:
        {
            sortoption = (SearchAssetAdapter)mAssetAdapter;
            if (sortoption != null)
            {
                sortoption.setData(arraylist);
                if (sortoption.getItemCount() >= 1)
                {
                    break label0;
                }
                showNoResult();
            }
            return;
        }
        mMessage.setVisibility(8);
        mProgressbar.setVisibility(8);
        mRecyclerView.setVisibility(0);
    }

    public void showMessage(int i)
    {
        mProgressbar.setVisibility(8);
        mRecyclerView.setVisibility(8);
        mMessage.setText(getString(i));
        mMessage.setVisibility(0);
    }

    public void showNoResult()
    {
        showMessage(0x7f0d00b9);
    }

    public void showProgressbar()
    {
        mProgressbar.setVisibility(0);
        mRecyclerView.setVisibility(8);
        mMessage.setVisibility(8);
    }


}
