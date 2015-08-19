// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;
import com.showmax.app.model.adapter.recyclerview.PortraitAssetAdapter;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetsTileView

class this._cls0
    implements android.view.ner
{

    final AssetsTileView this$0;

    public void onClick(View view)
    {
        if (AssetsTileView.access$800(AssetsTileView.this) != null)
        {
            AssetsTileView.access$800(AssetsTileView.this).onSeeAllClick(AssetsTileView.this, AssetsTileView.access$900(AssetsTileView.this).getData(), AssetsTileView.access$100(AssetsTileView.this));
        }
    }

    setsTileViewListener()
    {
        this$0 = AssetsTileView.this;
        super();
    }
}
