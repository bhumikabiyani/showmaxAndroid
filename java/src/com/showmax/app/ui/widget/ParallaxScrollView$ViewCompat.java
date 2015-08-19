// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.graphics.Matrix;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.showmax.app.ui.widget:
//            ParallaxScrollView

public static final class mView extends Animation
{

    private float mTranslationY;
    private final View mView;

    public static mView wrap(View view)
    {
        Animation animation = view.getAnimation();
        if (animation instanceof mView)
        {
            return (mView)animation;
        } else
        {
            return new <init>(view);
        }
    }

    protected void applyTransformation(float f, Transformation transformation)
    {
        if (mView != null)
        {
            transformation.getMatrix().postTranslate(0.0F, mTranslationY);
        }
    }

    public void setTranslationY(float f)
    {
        mTranslationY = f;
    }

    private (View view)
    {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        mView = view;
    }
}
