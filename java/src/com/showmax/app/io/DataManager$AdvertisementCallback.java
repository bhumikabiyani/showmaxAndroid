// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AdvertisementList;
import com.showmax.lib.api.model.catalogue.Section;

// Referenced classes of package com.showmax.app.io:
//            DataManager

private class mAppLanguage extends ApiCallback
{

    private com.showmax.lib.api.io.ess mAppLanguage;
    private Section mSection;
    final DataManager this$0;

    private void fetchAdvertisements()
    {
        CatalogueApi.getInstance().loadAdvertisements(mSection, mAppLanguage, this);
    }

    public void failure(int i)
    {
        MauLog.v("[DataManager]::[AdvertisementCallback]::[failure]::[%d]", new Object[] {
            Integer.valueOf(i)
        });
        EventBus.getInstance().post(new ApiErrorEvent(getError()));
        DataManager.access$600(DataManager.this, i, getResponse(), getError());
    }

    public void run()
    {
        fetchAdvertisements();
    }

    public void start()
    {
        fetchAdvertisements();
    }

    public void success(AdvertisementList advertisementlist, int i)
    {
        DataManager.access$400(DataManager.this, mSection, advertisementlist);
        DataManager.access$500(DataManager.this, mSection);
    }

    public volatile void success(Object obj, int i)
    {
        success((AdvertisementList)obj, i);
    }

    public (Section section, com.showmax.lib.api.io. )
    {
        this$0 = DataManager.this;
        super(3);
        mSection = section;
        mAppLanguage = ;
    }
}
