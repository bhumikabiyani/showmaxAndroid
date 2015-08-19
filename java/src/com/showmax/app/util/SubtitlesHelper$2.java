// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.os.CountDownTimer;
import android.widget.TextView;

// Referenced classes of package com.showmax.app.util:
//            SubtitlesHelper

class this._cls0 extends CountDownTimer
{

    final SubtitlesHelper this$0;

    public void onFinish()
    {
        SubtitlesHelper.access$700(SubtitlesHelper.this).setText("");
    }

    public void onTick(long l)
    {
    }

    (long l, long l1)
    {
        this$0 = SubtitlesHelper.this;
        super(l, l1);
    }
}
