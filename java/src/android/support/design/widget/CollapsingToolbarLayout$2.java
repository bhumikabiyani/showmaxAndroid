// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.support.v4.view.ViewCompat;

// Referenced classes of package android.support.design.widget:
//            CollapsingToolbarLayout, ValueAnimatorCompat

class this._cls0
    implements orUpdateListener
{

    final CollapsingToolbarLayout this$0;

    public void onAnimationUpdate(ValueAnimatorCompat valueanimatorcompat)
    {
        int i = valueanimatorcompat.getAnimatedIntValue();
        if (i != CollapsingToolbarLayout.access$200(CollapsingToolbarLayout.this))
        {
            if (CollapsingToolbarLayout.access$300(CollapsingToolbarLayout.this) != null && CollapsingToolbarLayout.access$400(CollapsingToolbarLayout.this) != null)
            {
                ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.access$400(CollapsingToolbarLayout.this));
            }
            CollapsingToolbarLayout.access$202(CollapsingToolbarLayout.this, i);
            ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.this);
        }
    }

    orUpdateListener()
    {
        this$0 = CollapsingToolbarLayout.this;
        super();
    }
}
