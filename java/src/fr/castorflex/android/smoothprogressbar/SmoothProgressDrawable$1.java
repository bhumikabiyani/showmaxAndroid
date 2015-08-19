// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package fr.castorflex.android.smoothprogressbar;

import android.os.SystemClock;

// Referenced classes of package fr.castorflex.android.smoothprogressbar:
//            SmoothProgressDrawable

class this._cls0
    implements Runnable
{

    final SmoothProgressDrawable this$0;

    public void run()
    {
        if (isFinishing())
        {
            SmoothProgressDrawable.access$002(SmoothProgressDrawable.this, SmoothProgressDrawable.access$000(SmoothProgressDrawable.this) + SmoothProgressDrawable.access$100(SmoothProgressDrawable.this) * 0.01F);
            SmoothProgressDrawable.access$202(SmoothProgressDrawable.this, SmoothProgressDrawable.access$200(SmoothProgressDrawable.this) + SmoothProgressDrawable.access$100(SmoothProgressDrawable.this) * 0.01F);
            if (SmoothProgressDrawable.access$000(SmoothProgressDrawable.this) >= 1.0F)
            {
                stop();
            }
        } else
        if (isStarting())
        {
            SmoothProgressDrawable.access$202(SmoothProgressDrawable.this, SmoothProgressDrawable.access$200(SmoothProgressDrawable.this) + SmoothProgressDrawable.access$300(SmoothProgressDrawable.this) * 0.01F);
        } else
        {
            SmoothProgressDrawable.access$202(SmoothProgressDrawable.this, SmoothProgressDrawable.access$200(SmoothProgressDrawable.this) + SmoothProgressDrawable.access$400(SmoothProgressDrawable.this) * 0.01F);
        }
        if (SmoothProgressDrawable.access$200(SmoothProgressDrawable.this) >= SmoothProgressDrawable.access$500(SmoothProgressDrawable.this))
        {
            SmoothProgressDrawable.access$602(SmoothProgressDrawable.this, true);
            SmoothProgressDrawable.access$202(SmoothProgressDrawable.this, SmoothProgressDrawable.access$200(SmoothProgressDrawable.this) - SmoothProgressDrawable.access$500(SmoothProgressDrawable.this));
        }
        if (isRunning())
        {
            scheduleSelf(SmoothProgressDrawable.access$700(SmoothProgressDrawable.this), SystemClock.uptimeMillis() + 16L);
        }
        invalidateSelf();
    }

    ()
    {
        this$0 = SmoothProgressDrawable.this;
        super();
    }
}
