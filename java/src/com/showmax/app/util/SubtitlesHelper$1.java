// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.os.Handler;

// Referenced classes of package com.showmax.app.util:
//            SubtitlesHelper

class this._cls0
    implements Runnable
{

    final SubtitlesHelper this$0;

    public void run()
    {
        if (SubtitlesHelper.access$000(SubtitlesHelper.this) == null)
        {
            return;
        }
        SubtitlesHelper.access$102(SubtitlesHelper.this, SubtitlesHelper.access$200(SubtitlesHelper.this).getCurrentPosition());
        long l = SubtitlesHelper.access$000(SubtitlesHelper.this).begin - SubtitlesHelper.access$100(SubtitlesHelper.this);
        if (l <= 10L)
        {
            if (l < 0L)
            {
                SubtitlesHelper.access$400(SubtitlesHelper.this, SubtitlesHelper.access$000(SubtitlesHelper.this).text, SubtitlesHelper.access$300(SubtitlesHelper.this, SubtitlesHelper.access$000(SubtitlesHelper.this).begin, SubtitlesHelper.access$000(SubtitlesHelper.this).end) + l);
            } else
            {
                SubtitlesHelper.access$400(SubtitlesHelper.this, SubtitlesHelper.access$000(SubtitlesHelper.this).text, SubtitlesHelper.access$300(SubtitlesHelper.this, SubtitlesHelper.access$000(SubtitlesHelper.this).begin, SubtitlesHelper.access$000(SubtitlesHelper.this).end));
            }
            SubtitlesHelper.access$002(SubtitlesHelper.this, SubtitlesHelper.access$500(SubtitlesHelper.this).next());
        }
        SubtitlesHelper.access$600(SubtitlesHelper.this).postDelayed(this, 10L);
    }

    btitlesItem()
    {
        this$0 = SubtitlesHelper.this;
        super();
    }
}
