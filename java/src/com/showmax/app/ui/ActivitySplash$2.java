// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Intent;
import android.net.Uri;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.AppPreflightResponseBody;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySplash

class init> extends ApiCallback
{

    final ActivitySplash this$0;

    public void failure(int i)
    {
        MauLog.e("[ActivitySplash]::[mAppPreflightCallback]::[failure]::[status: %s]", new Object[] {
            Integer.valueOf(i)
        });
        EventBus.getInstance().post(new ApiErrorEvent(ActivitySplash.access$900(ActivitySplash.this).getError()));
        ActivitySplash.access$700(ActivitySplash.this, 58);
    }

    public void success(AppPreflightResponseBody apppreflightresponsebody, int i)
    {
        MauLog.v("[ActivitySplash]::[mAppPreflightCallback]::[success]::[%s]", new Object[] {
            apppreflightresponsebody
        });
        ActivitySplash.access$302(ActivitySplash.this, apppreflightresponsebody);
        if (ActivitySplash.access$300(ActivitySplash.this) != null && ActivitySplash.access$300(ActivitySplash.this).getMessage() != null && ActivitySplash.access$300(ActivitySplash.this).getBtntext() != null)
        {
            ActivitySplash.access$800(ActivitySplash.this);
            return;
        }
        if (ActivitySplash.access$300(ActivitySplash.this) != null && ActivitySplash.access$300(ActivitySplash.this).getRedirect() != null && !ActivitySplash.access$300(ActivitySplash.this).getRedirect().isEmpty())
        {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(ActivitySplash.access$300(ActivitySplash.this).getRedirect())));
            finish();
            return;
        } else
        {
            ActivitySplash.access$200(ActivitySplash.this);
            return;
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((AppPreflightResponseBody)obj, i);
    }

    htResponseBody()
    {
        this$0 = ActivitySplash.this;
        super();
    }
}
