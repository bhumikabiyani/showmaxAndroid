// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPurchaseAsset

class this._cls0
    implements com.showmax.lib.api.ui.widget.chaseAssetWebViewListener
{

    final ActivityPurchaseAsset this$0;

    public void onCloseButtonClicked()
    {
        setResult(303);
        finish();
    }

    public void onPageError(int i, String s, String s1)
    {
        setResult(302);
        finish();
    }

    public void onPageLoadingProgressChanged(int i)
    {
        if (i >= 0 && i < 100)
        {
            ActivityPurchaseAsset.access$000(ActivityPurchaseAsset.this).setVisibility(0);
            return;
        } else
        {
            ActivityPurchaseAsset.access$000(ActivityPurchaseAsset.this).setVisibility(4);
            return;
        }
    }

    othProgressBar()
    {
        this$0 = ActivityPurchaseAsset.this;
        super();
    }
}
