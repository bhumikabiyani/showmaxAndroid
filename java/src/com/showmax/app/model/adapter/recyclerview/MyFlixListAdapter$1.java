// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.view.View;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            MyFlixListAdapter

class val.asset
    implements android.view.
{

    final MyFlixListAdapter this$0;
    final Asset val$asset;

    public void onClick(View view)
    {
        if (mOnItemClickListener != null)
        {
            mOnItemClickListener.onItemClick(val$asset);
        }
    }

    temClickListener()
    {
        this$0 = final_myflixlistadapter;
        val$asset = Asset.this;
        super();
    }
}
