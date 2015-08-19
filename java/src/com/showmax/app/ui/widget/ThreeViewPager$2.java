// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import com.showmax.lib.api.model.catalogue.Advertisement;

// Referenced classes of package com.showmax.app.ui.widget:
//            ThreeViewPager

class this._cls0
    implements com.showmax.app.model.adapter.ter.OnItemClickListener
{

    final ThreeViewPager this$0;

    public void onItemClick(Advertisement advertisement)
    {
        if (advertisement != null && ThreeViewPager.access$000(ThreeViewPager.this) != null)
        {
            ThreeViewPager.access$000(ThreeViewPager.this).onAdvertisementClick(advertisement.asset);
        }
    }

    sement()
    {
        this$0 = ThreeViewPager.this;
        super();
    }
}
