// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.view.View;
import com.showmax.app.ui.widget.PlayButton;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentMovieDetail

class this._cls0
    implements android.view.tMovieDetail._cls2
{

    final FragmentMovieDetail this$0;

    public void onClick(View view)
    {
        int i = view.getId();
        if (i != 0x7f0b00e5) goto _L2; else goto _L1
_L1:
        if (FragmentMovieDetail.access$100(FragmentMovieDetail.this).getState() != com.showmax.app.ui.widget.ASE) goto _L4; else goto _L3
_L3:
        FragmentMovieDetail.access$000(FragmentMovieDetail.this).onPurchaseClick();
_L6:
        return;
_L4:
        FragmentMovieDetail.access$000(FragmentMovieDetail.this).onPlayClick();
        return;
_L2:
        if (i != 0x7f0b00ea)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (FragmentMovieDetail.access$000(FragmentMovieDetail.this) == null) goto _L6; else goto _L5
_L5:
        FragmentMovieDetail.access$000(FragmentMovieDetail.this).onTrailerClick();
        return;
        if (i != 0x7f0b00e6) goto _L6; else goto _L7
_L7:
        FragmentMovieDetail.access$000(FragmentMovieDetail.this).onFavouritesClick();
        return;
    }

    agmentAssetDetailListener()
    {
        this$0 = FragmentMovieDetail.this;
        super();
    }
}
