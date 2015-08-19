// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentSeeAll;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySeeAll

class init> extends ApiCallback
{

    final ActivitySeeAll this$0;

    public void failure(int i)
    {
        MauLog.v("[%s]::[mAssetListCallback]::[failure]", new Object[] {
            ActivitySeeAll.TAG
        });
        if (isFragmentVisible(ActivitySeeAll.access$000(ActivitySeeAll.this)))
        {
            ActivitySeeAll.access$000(ActivitySeeAll.this).showAssets(null, UserPrefs.getSortOption(ActivitySeeAll.this));
        }
        EventBus.getInstance().post(new ApiErrorEvent(getError()));
    }

    public void success(AssetList assetlist, int i)
    {
        MauLog.v("[%s]::[mAssetListCallback]::[success]", new Object[] {
            ActivitySeeAll.TAG
        });
        if (isFragmentVisible(ActivitySeeAll.access$000(ActivitySeeAll.this)))
        {
            ActivitySeeAll.access$000(ActivitySeeAll.this).showAssets(assetlist.items, UserPrefs.getSortOption(ActivitySeeAll.this));
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((AssetList)obj, i);
    }

    AssetList(int i)
    {
        this$0 = ActivitySeeAll.this;
        super(i);
    }
}
