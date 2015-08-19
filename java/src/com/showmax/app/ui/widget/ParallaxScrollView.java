// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ScrollView;

public class ParallaxScrollView extends ScrollView
{
    public static final class ViewCompat extends Animation
    {

        private float mTranslationY;
        private final View mView;

        public static ViewCompat wrap(View view)
        {
            Animation animation = view.getAnimation();
            if (animation instanceof ViewCompat)
            {
                return (ViewCompat)animation;
            } else
            {
                return new ViewCompat(view);
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

        private ViewCompat(View view)
        {
            setDuration(0L);
            setFillAfter(true);
            view.setAnimation(this);
            mView = view;
        }
    }


    private static final float DEFAULT_ALPHA_FACTOR = 0.6F;
    private static final float DEFAULT_SCROLL_FACTOR = 0.6F;
    private static final boolean PRE_HONEYCOMB;
    private float mAlphaFactor;
    private int mBackgroundResId;
    private View mBackgroundView;
    private float mScrollFactor;

    public ParallaxScrollView(Context context)
    {
        super(context);
        mScrollFactor = 0.6F;
        mAlphaFactor = 0.6F;
        initView(context, null, 0);
    }

    public ParallaxScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mScrollFactor = 0.6F;
        mAlphaFactor = 0.6F;
        initView(context, attributeset, 0);
    }

    public ParallaxScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mScrollFactor = 0.6F;
        mAlphaFactor = 0.6F;
        initView(context, attributeset, i);
    }

    private void initView(Context context, AttributeSet attributeset, int i)
    {
        if (isInEditMode())
        {
            return;
        }
        if (attributeset != null)
        {
            context = context.obtainStyledAttributes(attributeset, com.showmax.app.R.styleable.ParallaxScrollView, i, 0);
            mBackgroundResId = context.getResourceId(1, 0);
            mScrollFactor = context.getFloat(2, 0.6F);
            mAlphaFactor = context.getFloat(0, 0.6F);
            context.recycle();
        }
        setVerticalFadingEdgeEnabled(false);
    }

    private void translateBackgroundView(int i)
    {
        int j;
label0:
        {
            if (mBackgroundView != null)
            {
                j = (int)((float)i * mScrollFactor);
                if (!PRE_HONEYCOMB)
                {
                    break label0;
                }
                ViewCompat.wrap(mBackgroundView).setTranslationY(j);
            }
            return;
        }
        mBackgroundView.setTranslationY(j);
        j = mBackgroundView.getHeight();
        float f = (float)i / (float)j;
        float f1 = mAlphaFactor;
        mBackgroundView.setAlpha(1.0F - f * f1);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (mBackgroundResId > 0 && mBackgroundView == null)
        {
            mBackgroundView = findViewById(mBackgroundResId);
        }
    }

    protected void onDetachedFromWindow()
    {
        if (PRE_HONEYCOMB && mBackgroundView != null)
        {
            mBackgroundView.clearAnimation();
        }
        mBackgroundView = null;
        super.onDetachedFromWindow();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (flag)
        {
            translateBackgroundView(getScrollY());
        }
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        translateBackgroundView(j);
    }

    public void setBackgroundView(int i)
    {
        mBackgroundView = findViewById(i);
    }

    public void setBackgroundView(View view)
    {
        mBackgroundView = view;
    }

    public void setScrollFactor(float f)
    {
        mScrollFactor = f;
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        PRE_HONEYCOMB = flag;
    }
}
