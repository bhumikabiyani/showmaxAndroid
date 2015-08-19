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
import android.view.View;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter;
import com.showmax.app.model.adapter.recyclerview.MyFlixListAdapter;
import com.showmax.lib.api.io.eventbus.EventBus;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseRecyclerView

public class FragmentMyFlixList extends FragmentBaseRecyclerView
{
    public static interface FragmentMyFlixListListener
    {
    }


    private static final String ARGS_USERLIST_ASSETS = "args.userlist.assets";
    private static final String ARGS_USERLIST_TYPE = "args.userlist.type";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentMyFlixList.getSimpleName();
    private ArrayList mAssets;
    private FragmentMyFlixListListener mFragmentMyFlixListListener;
    private com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType mUserlistType;

    public FragmentMyFlixList()
    {
    }

    private void initData(Bundle bundle)
    {
        Bundle bundle1 = getArguments();
        mUserlistType = com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.fromOrdinal(bundle1.getInt("args.userlist.type"));
        mAssets = bundle1.getParcelableArrayList("args.userlist.assets");
        if (bundle == null);
    }

    public static FragmentMyFlixList newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype)
    {
        FragmentMyFlixList fragmentmyflixlist = new FragmentMyFlixList();
        Bundle bundle = new Bundle();
        bundle.putInt("args.userlist.type", userlisttype.ordinal());
        fragmentmyflixlist.setArguments(bundle);
        return fragmentmyflixlist;
    }

    public static FragmentMyFlixList newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype, ArrayList arraylist)
    {
        FragmentMyFlixList fragmentmyflixlist = new FragmentMyFlixList();
        Bundle bundle = new Bundle();
        bundle.putInt("args.userlist.type", userlisttype.ordinal());
        bundle.putParcelableArrayList("args.userlist.assets", arraylist);
        fragmentmyflixlist.setArguments(bundle);
        return fragmentmyflixlist;
    }

    public String getNoDataMessage()
    {
        if (mUserlistType == com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS)
        {
            return getString(0x7f0d00ad);
        } else
        {
            return getString(0x7f0d00b7);
        }
    }

    public int getProgressBarId()
    {
        return 0x7f0b0109;
    }

    public int getRecyclerViewId()
    {
        return 0x7f0b010a;
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (mAssets != null)
        {
            showAssets(mAssets, null);
        }
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mFragmentMyFlixListListener = (FragmentMyFlixListListener)activity;
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
        initData(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030042, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mFragmentMyFlixListListener = null;
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
        MyFlixListAdapter myflixlistadapter = new MyFlixListAdapter(getActivity());
        recyclerview.setLayoutManager(new GridLayoutManager(getActivity(), getResources().getInteger(0x7f0c0012), 1, false));
        recyclerview.setAdapter(myflixlistadapter);
        return myflixlistadapter;
    }

}
