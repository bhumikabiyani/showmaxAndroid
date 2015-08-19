// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io.event;

import com.showmax.lib.api.model.catalogue.AdvertisementList;

// Referenced classes of package com.showmax.app.io.event:
//            BaseFetchEvent

public class FetchAdvertisementsFinishedEvent extends BaseFetchEvent
{

    public FetchAdvertisementsFinishedEvent()
    {
    }

    public FetchAdvertisementsFinishedEvent(AdvertisementList advertisementlist)
    {
        setSuccess(advertisementlist);
    }
}
