// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetsTileView

class this._cls0 extends ApiCallback
{

    final AssetsTileView this$0;

    public void failure(int i)
    {
        if (AssetsTileView.access$200(AssetsTileView.this) < AssetsTileView.access$300(AssetsTileView.this))
        {
            int _tmp = AssetsTileView.access$208(AssetsTileView.this);
            loadAssetsTile(AssetsTileView.access$400(AssetsTileView.this), AssetsTileView.access$500(AssetsTileView.this));
        } else
        {
            AssetsTileView.access$600(AssetsTileView.this);
        }
        EventBus.getInstance().post(new ApiErrorEvent(AssetsTileView.access$700(AssetsTileView.this).getError()));
    }

    public void success(AssetList assetlist, int i)
    {
        AssetsTileView.access$000(AssetsTileView.this);
        showAssets(assetlist.items, AssetsTileView.access$100(AssetsTileView.this));
    }

    public volatile void success(Object obj, int i)
    {
        success((AssetList)obj, i);
    }

    st()
    {
        this$0 = AssetsTileView.this;
        super();
    }
}
