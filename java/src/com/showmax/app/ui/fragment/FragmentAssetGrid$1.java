// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentAssetGrid

class this._cls0 extends ApiCallback
{

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

    ()
    {
        this$0 = FragmentAssetGrid.this;
        super();
    }
}
