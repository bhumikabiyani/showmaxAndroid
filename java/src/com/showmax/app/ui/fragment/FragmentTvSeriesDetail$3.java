// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentTvSeriesDetail

class this._cls0
    implements com.showmax.app.ui.widget.mendedGridViewListener
{

    final FragmentTvSeriesDetail this$0;

    public void onAssetClick(Asset asset)
    {
        FragmentTvSeriesDetail.access$000(FragmentTvSeriesDetail.this).onRecommendedAssetClick(asset);
    }

    agmentTvSeriesDetailListener()
    {
        this$0 = FragmentTvSeriesDetail.this;
        super();
    }
}
