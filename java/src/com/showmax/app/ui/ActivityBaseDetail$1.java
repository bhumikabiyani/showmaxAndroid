// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class > extends ApiCallback
{

    final ActivityBaseDetail this$0;

    public void failure(int i)
    {
        MauLog.v("[%s]::[mVerifyPlaybackCallback]::[failure]::[status: %d]::[canceled: %b]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this), Integer.valueOf(i), Boolean.valueOf(isCanceled())
        });
        if (!isCanceled())
        {
            hideProgress();
            ActivityBaseDetail.access$300(ActivityBaseDetail.this, getError(), mAsset);
        }
        EventBus.getInstance().post(new ApiErrorEvent(getError()));
        ActivityBaseDetail.access$202(ActivityBaseDetail.this, null);
    }

    public volatile void success(Object obj, int i)
    {
        success((Response)obj, i);
    }

    public void success(Response response, int i)
    {
        MauLog.v("[%s]::[mVerifyPlaybackCallback]::[success]::[status: %d]::[canceled: %b]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this), Integer.valueOf(i), Boolean.valueOf(isCanceled())
        });
        if (isCanceled()) goto _L2; else goto _L1
_L1:
        response = mAsset.getMainVideoAudioLanguages();
        if (response == null || response.size() <= 1) goto _L4; else goto _L3
_L3:
        showAudioLanguageDialog(mAsset, com.showmax.lib.api.model.catalogue.alog);
_L2:
        ActivityBaseDetail.access$202(ActivityBaseDetail.this, null);
        return;
_L4:
        if (response != null && response.size() == 1)
        {
            ActivityBaseDetail.access$102(ActivityBaseDetail.this, (Language)response.get(0));
            syncUserListsForPlayback();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    uage(String s)
    {
        this$0 = ActivityBaseDetail.this;
        super(s);
    }
}
