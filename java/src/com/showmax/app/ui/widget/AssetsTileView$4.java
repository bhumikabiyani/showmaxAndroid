// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetsTileView

class this._cls0
    implements com.showmax.app.model.adapter.recyclerview.OnItemClickListener
{

    final AssetsTileView this$0;

    public void onItemClick(Asset asset)
    {
        AssetsTileView.access$800(AssetsTileView.this).onAssetClick(asset);
    }

    setsTileViewListener()
    {
        this$0 = AssetsTileView.this;
        super();
    }
}
