// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.view.View;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentTvSeriesDetail

class this._cls0
    implements android.view.SeriesDetail._cls2
{

    final FragmentTvSeriesDetail this$0;

    public void onClick(View view)
    {
        int i = view.getId();
        MauLog.v("[%s]::[mOnBtnClickListener]", new Object[] {
            FragmentTvSeriesDetail.TAG
        });
        if (i == 0x7f0b0117)
        {
            FragmentTvSeriesDetail.access$000(FragmentTvSeriesDetail.this).onTrailerClick();
        }
    }

    agmentTvSeriesDetailListener()
    {
        this$0 = FragmentTvSeriesDetail.this;
        super();
    }
}
