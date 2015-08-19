// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class > extends ApiCallback
{

    final ActivityBaseDetail this$0;

    public void failure(int i)
    {
        EventBus.getInstance().post(new ApiErrorEvent(ActivityBaseDetail.access$500(ActivityBaseDetail.this).getError()));
        onAssetDetailLoaded(null);
    }

    public void success(Asset asset, int i)
    {
        MauLog.v("[%s]::[mMovieDetailCallback]::[success]::[%s]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this), asset.id
        });
        mAsset = asset;
        onAssetDetailLoaded(mAsset);
    }

    public volatile void success(Object obj, int i)
    {
        success((Asset)obj, i);
    }

    t(int i)
    {
        this$0 = ActivityBaseDetail.this;
        super(i);
    }
}
