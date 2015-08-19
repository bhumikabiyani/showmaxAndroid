// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentMovieDetail;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.billing.Transaction;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAssetDetail

class  extends ApiCallback
{

    final ActivityAssetDetail this$0;

    public void failure(int i)
    {
        ActivityAssetDetail.access$300(ActivityAssetDetail.this);
        MauLog.v("[%s]::[mTransactionCallback]::[failure]", new Object[] {
            ActivityAssetDetail.TAG
        });
        EventBus.getInstance().post(new ApiErrorEvent(ActivityAssetDetail.access$400(ActivityAssetDetail.this).getError()));
    }

    public void success(Transaction transaction, int i)
    {
        MauLog.v("[%s]::[mTransactionCallback]::[success]", new Object[] {
            ActivityAssetDetail.TAG
        });
        if (ActivityAssetDetail.access$000(ActivityAssetDetail.this))
        {
            ActivityAssetDetail.access$100(ActivityAssetDetail.this).showRemainingButton(transaction.timeRemaining);
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((Transaction)obj, i);
    }

    tion()
    {
        this$0 = ActivityAssetDetail.this;
        super();
    }
}
