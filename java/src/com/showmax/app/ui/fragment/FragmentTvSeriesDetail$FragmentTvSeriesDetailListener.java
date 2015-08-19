// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentTvSeriesDetail

public static interface 
{

    public abstract void onCheckTrailerButton();

    public abstract void onLoadRecommendedAssets();

    public abstract void onRecommendedAssetClick(Asset asset);

    public abstract void onTagClicked(String s);

    public abstract void onTrailerClick();
}
