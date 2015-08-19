// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.view.View;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            SearchAssetAdapter

class val.asset
    implements android.view.clerview.SearchAssetAdapter._cls1
{

    final SearchAssetAdapter this$0;
    final Asset val$asset;

    public void onClick(View view)
    {
        if (mOnItemClickListener != null)
        {
            mOnItemClickListener.onItemClick(val$asset);
        }
    }

    emClickListener()
    {
        this$0 = final_searchassetadapter;
        val$asset = Asset.this;
        super();
    }
}
