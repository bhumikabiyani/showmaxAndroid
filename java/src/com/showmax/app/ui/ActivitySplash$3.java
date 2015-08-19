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
//            ActivitySplash

class init> extends ApiCallback
{

    final ActivitySplash this$0;

    public void failure(int i)
    {
        MauLog.e("[ActivitySplash]::[mDeepLinkCallback]::[failure]::[invalid deep link]");
        startMainActivity(true, null);
        EventBus.getInstance().post(new ApiErrorEvent(ActivitySplash.access$600(ActivitySplash.this).getError()));
    }

    public void success(Asset asset, int i)
    {
        if (ActivitySplash.access$400(ActivitySplash.this) != null)
        {
            ActivitySplash.access$400(ActivitySplash.this).asset = asset;
            startMainActivity(true, ActivitySplash.access$400(ActivitySplash.this));
            return;
        } else
        {
            MauLog.e("[ActivitySplash]::[mDeepLinkCallback]::[success]::[invalid deep link]");
            startMainActivity(true, null);
            return;
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((Asset)obj, i);
    }

    Asset()
    {
        this$0 = ActivitySplash.this;
        super();
    }
}
