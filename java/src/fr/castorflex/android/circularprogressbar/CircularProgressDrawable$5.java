// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package fr.castorflex.android.circularprogressbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Paint;

// Referenced classes of package fr.castorflex.android.circularprogressbar:
//            CircularProgressDrawable

class this._cls0
    implements android.animation.cularProgressDrawable._cls5
{

    boolean cancelled;
    final CircularProgressDrawable this$0;

    public void onAnimationCancel(Animator animator)
    {
        cancelled = true;
    }

    public void onAnimationEnd(Animator animator)
    {
        if (!cancelled)
        {
            CircularProgressDrawable.access$1100(CircularProgressDrawable.this);
            CircularProgressDrawable.access$802(CircularProgressDrawable.this, (CircularProgressDrawable.access$800(CircularProgressDrawable.this) + 1) % CircularProgressDrawable.access$600(CircularProgressDrawable.this).length);
            CircularProgressDrawable.access$702(CircularProgressDrawable.this, CircularProgressDrawable.access$600(CircularProgressDrawable.this)[CircularProgressDrawable.access$800(CircularProgressDrawable.this)]);
            CircularProgressDrawable.access$1000(CircularProgressDrawable.this).setColor(CircularProgressDrawable.access$700(CircularProgressDrawable.this));
            CircularProgressDrawable.access$1200(CircularProgressDrawable.this).start();
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
        cancelled = false;
    }

    ()
    {
        this$0 = CircularProgressDrawable.this;
        super();
    }
}
