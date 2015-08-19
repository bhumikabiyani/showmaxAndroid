// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseRecyclerView

class this._cls0
    implements com.showmax.app.model.adapter.recyclerview.kListener
{

    final FragmentBaseRecyclerView this$0;

    public void onItemClick(Asset asset)
    {
        MauLog.v("[%s]::[onItemClick]::[asset: %s]", new Object[] {
            FragmentBaseRecyclerView.access$000(FragmentBaseRecyclerView.this), asset
        });
        FragmentBaseRecyclerView.access$100(FragmentBaseRecyclerView.this).onAssetClick(asset);
    }

    stener()
    {
        this$0 = FragmentBaseRecyclerView.this;
        super();
    }
}
