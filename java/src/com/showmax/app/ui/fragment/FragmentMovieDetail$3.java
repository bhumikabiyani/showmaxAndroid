// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentMovieDetail

class this._cls0
    implements com.showmax.app.ui.widget.commendedGridViewListener
{

    final FragmentMovieDetail this$0;

    public void onAssetClick(Asset asset)
    {
        FragmentMovieDetail.access$200(FragmentMovieDetail.this).onAssetClick(asset);
    }

    ickListener()
    {
        this$0 = FragmentMovieDetail.this;
        super();
    }
}
