// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentMyFlixList;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityMyFlix

class init> extends ApiCallback
{

    final ActivityMyFlix this$0;

    public void failure(int i)
    {
        MauLog.v("[%s]::[mRecentlyWatchedCallback]::[failure]::[status: %d]", new Object[] {
            ActivityMyFlix.TAG, Integer.valueOf(i)
        });
        FragmentMyFlixList fragmentmyflixlist = ActivityMyFlix.access$200(ActivityMyFlix.this).getFragmentRecentlyWatched();
        if (isFragmentVisible(fragmentmyflixlist))
        {
            fragmentmyflixlist.showAssets(null, null);
        }
        EventBus.getInstance().post(new ApiErrorEvent(ActivityMyFlix.access$300(ActivityMyFlix.this).getError()));
    }

    public void success(AssetList assetlist, int i)
    {
        MauLog.v("[%s]::[mRecentlyWatchedCallback]::[success]::[count: %d]", new Object[] {
            ActivityMyFlix.TAG, Integer.valueOf(assetlist.count)
        });
        ActivityMyFlix.access$100(ActivityMyFlix.this).put(com.showmax.lib.api.model.user.userlist.v2.Type.RECENTLY_WATCHED, assetlist.items);
        FragmentMyFlixList fragmentmyflixlist = ActivityMyFlix.access$200(ActivityMyFlix.this).getFragmentRecentlyWatched();
        if (isFragmentVisible(fragmentmyflixlist))
        {
            fragmentmyflixlist.showAssets(assetlist.items, null);
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((AssetList)obj, i);
    }

    AssetList(int i)
    {
        this$0 = ActivityMyFlix.this;
        super(i);
    }
}
