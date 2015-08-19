// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.model.adapter.BaseAssetAdapter;
import com.showmax.app.model.adapter.PortraitAssetAdapter;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseAbsListView

public class FragmentSeeAll extends FragmentBaseAbsListView
{

    public static final String TAG = com/showmax/app/ui/fragment/FragmentSeeAll.getSimpleName();

    public FragmentSeeAll()
    {
    }

    private void initData(Bundle bundle)
    {
        getArguments();
        if (bundle == null);
    }

    public static FragmentSeeAll newInstance()
    {
        MauLog.v("[%s]::[newInstance]", new Object[] {
            TAG
        });
        FragmentSeeAll fragmentseeall = new FragmentSeeAll();
        fragmentseeall.setArguments(new Bundle());
        return fragmentseeall;
    }

    public int getAbsListViewId()
    {
        return 0x7f0b010f;
    }

    public BaseAssetAdapter getAdapter()
    {
        return new PortraitAssetAdapter(getActivity());
    }

    public String getNoDataMessage()
    {
        return getString(0x7f0d00aa);
    }

    public int getProgressBarId()
    {
        return 0x7f0b010e;
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        initData(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030044, viewgroup, false);
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

}
