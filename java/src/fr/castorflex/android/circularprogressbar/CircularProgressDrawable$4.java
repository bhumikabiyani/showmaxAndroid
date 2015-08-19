// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package fr.castorflex.android.circularprogressbar;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Paint;

// Referenced classes of package fr.castorflex.android.circularprogressbar:
//            CircularProgressDrawable, CircularProgressBarUtils

class this._cls0
    implements android.animation.eListener
{

    final CircularProgressDrawable this$0;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f = CircularProgressBarUtils.getAnimatedFraction(valueanimator);
        setCurrentSweepAngle((float)CircularProgressDrawable.access$100(CircularProgressDrawable.this) - (float)(CircularProgressDrawable.access$100(CircularProgressDrawable.this) - CircularProgressDrawable.access$200(CircularProgressDrawable.this)) * f);
        long l = valueanimator.getDuration();
        f = (float)valueanimator.getCurrentPlayTime() / (float)l;
        if (CircularProgressDrawable.access$600(CircularProgressDrawable.this).length > 1 && f > 0.7F)
        {
            int i = CircularProgressDrawable.access$700(CircularProgressDrawable.this);
            int j = CircularProgressDrawable.access$600(CircularProgressDrawable.this)[(CircularProgressDrawable.access$800(CircularProgressDrawable.this) + 1) % CircularProgressDrawable.access$600(CircularProgressDrawable.this).length];
            i = ((Integer)CircularProgressDrawable.access$900().evaluate((f - 0.7F) / 0.3F, Integer.valueOf(i), Integer.valueOf(j))).intValue();
            CircularProgressDrawable.access$1000(CircularProgressDrawable.this).setColor(i);
        }
    }

    ()
    {
        this$0 = CircularProgressDrawable.this;
        super();
    }
}
