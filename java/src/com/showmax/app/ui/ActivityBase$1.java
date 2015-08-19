// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.user.UserProfile;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

class this._cls0
    implements Callback
{

    final ActivityBase this$0;

    public void failure(RetrofitError retrofiterror)
    {
        MauLog.e("[%s]::[recheckSubcriptionState]::[failure]::[%s]", new Object[] {
            ActivityBase.access$000(ActivityBase.this), retrofiterror.getMessage()
        });
    }

    public void success(UserProfile userprofile, Response response)
    {
        MauLog.d("[%s]::[recheckSubcriptionState]::[success]::[%s]", new Object[] {
            ActivityBase.access$000(ActivityBase.this), userprofile.subscriptionStatus.toString()
        });
        ShowMaxApp.getInstance().setSubscriptionStatus(userprofile.subscriptionStatus);
        EventBus.getInstance().post(new SubscriptionStatusChangedEvent(ShowMaxApp.getInstance().getSubscriptionStatus()), 200L);
    }

    public volatile void success(Object obj, Response response)
    {
        success((UserProfile)obj, response);
    }

    rProfile()
    {
        this$0 = ActivityBase.this;
        super();
    }
}
