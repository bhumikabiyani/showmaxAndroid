// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class > extends ApiCallback
{

    final ActivityBaseDetail this$0;

    public void failure(int i)
    {
        MauLog.v("[%s]::[mRecommendedCallback]::[failure]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this)
        });
        mRecommendedAssets = null;
        onRecommendedAssetsLoaded(null);
        EventBus.getInstance().post(new ApiErrorEvent(ActivityBaseDetail.access$600(ActivityBaseDetail.this).getError()));
    }

    public volatile void success(Object obj, int i)
    {
        success((ArrayList)obj, i);
    }

    public void success(ArrayList arraylist, int i)
    {
        MauLog.v("[%s]::[mRecommendedCallback]::[success]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this)
        });
        mRecommendedAssets = arraylist;
        onRecommendedAssetsLoaded(mRecommendedAssets);
    }

    (int i)
    {
        this$0 = ActivityBaseDetail.this;
        super(i);
    }
}
