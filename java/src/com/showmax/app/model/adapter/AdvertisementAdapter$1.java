// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.view.View;
import com.showmax.lib.api.model.catalogue.Advertisement;

// Referenced classes of package com.showmax.app.model.adapter:
//            AdvertisementAdapter

class this._cls0
    implements android.view.isementAdapter._cls1
{

    final AdvertisementAdapter this$0;

    public void onClick(View view)
    {
        view = (Advertisement)view.getTag();
        if (view != null && AdvertisementAdapter.access$000(AdvertisementAdapter.this) != null)
        {
            AdvertisementAdapter.access$100(AdvertisementAdapter.this).onItemClick(view);
        }
    }

    ItemClickListener()
    {
        this$0 = AdvertisementAdapter.this;
        super();
    }
}
