// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import java.util.List;

// Referenced classes of package android.support.design.widget:
//            FloatingActionButton, AnimationUtils, CoordinatorLayout, AppBarLayout, 
//            ViewGroupUtils

public static class erAdapter extends erAdapter
{

    private static final boolean SNACKBAR_BEHAVIOR_ENABLED;
    private boolean mIsAnimatingOut;
    private Rect mTmpRect;
    private float mTranslationY;

    private void animateIn(FloatingActionButton floatingactionbutton)
    {
        floatingactionbutton.setVisibility(0);
        if (android.os.ionButton.setVisibility >= 14)
        {
            ViewCompat.animate(floatingactionbutton).scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).withLayer().setListener(null).start();
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(floatingactionbutton.getContext(), android.support.design.tContext);
            animation.setDuration(200L);
            animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            floatingactionbutton.startAnimation(animation);
            return;
        }
    }

    private void animateOut(final FloatingActionButton button)
    {
        if (android.os.nListener >= 14)
        {
            ViewCompat.animate(button).scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).withLayer().setListener(new ViewPropertyAnimatorListener() {

                final FloatingActionButton.Behavior this$0;

                public void onAnimationCancel(View view)
                {
                    mIsAnimatingOut = false;
                }

                public void onAnimationEnd(View view)
                {
                    mIsAnimatingOut = false;
                    view.setVisibility(8);
                }

                public void onAnimationStart(View view)
                {
                    mIsAnimatingOut = true;
                }

            
            {
                this$0 = FloatingActionButton.Behavior.this;
                super();
            }
            }).start();
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(button.getContext(), android.support.design.tContext);
            animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            animation.setDuration(200L);
            animation.setAnimationListener(new AnimationUtils.AnimationListenerAdapter() {

                final FloatingActionButton.Behavior this$0;
                final FloatingActionButton val$button;

                public void onAnimationEnd(Animation animation1)
                {
                    mIsAnimatingOut = false;
                    button.setVisibility(8);
                }

                public void onAnimationStart(Animation animation1)
                {
                    mIsAnimatingOut = true;
                }

            
            {
                this$0 = FloatingActionButton.Behavior.this;
                button = floatingactionbutton;
                super();
            }
            });
            button.startAnimation(animation);
            return;
        }
    }

    private float getFabTranslationYForSnackbar(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton)
    {
        float f = 0.0F;
        List list = coordinatorlayout.getDependencies(floatingactionbutton);
        int i = 0;
        for (int j = list.size(); i < j;)
        {
            View view = (View)list.get(i);
            float f1 = f;
            if (view instanceof ies)
            {
                f1 = f;
                if (coordinatorlayout.doViewsOverlap(floatingactionbutton, view))
                {
                    f1 = Math.min(f, ViewCompat.getTranslationY(view) - (float)view.getHeight());
                }
            }
            i++;
            f = f1;
        }

        return f;
    }

    private void updateFabTranslationForSnackbar(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
    {
        float f = getFabTranslationYForSnackbar(coordinatorlayout, floatingactionbutton);
        if (f != mTranslationY)
        {
            ViewCompat.animate(floatingactionbutton).cancel();
            if (Math.abs(f - mTranslationY) == (float)view.getHeight())
            {
                ViewCompat.animate(floatingactionbutton).translationY(f).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setListener(null);
            } else
            {
                ViewCompat.setTranslationY(floatingactionbutton, f);
            }
            mTranslationY = f;
        }
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
    {
        return SNACKBAR_BEHAVIOR_ENABLED && (view instanceof SNACKBAR_BEHAVIOR_ENABLED);
    }

    public volatile boolean layoutDependsOn(CoordinatorLayout coordinatorlayout, View view, View view1)
    {
        return layoutDependsOn(coordinatorlayout, (FloatingActionButton)view, view1);
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
    {
        if (!(view instanceof layoutDependsOn)) goto _L2; else goto _L1
_L1:
        updateFabTranslationForSnackbar(coordinatorlayout, floatingactionbutton, view);
_L4:
        return false;
_L2:
        if (view instanceof AppBarLayout)
        {
            AppBarLayout appbarlayout = (AppBarLayout)view;
            if (mTmpRect == null)
            {
                mTmpRect = new Rect();
            }
            Rect rect = mTmpRect;
            ViewGroupUtils.getDescendantRect(coordinatorlayout, view, rect);
            if (rect.bottom <= appbarlayout.getMinimumHeightForVisibleOverlappingContent())
            {
                if (!mIsAnimatingOut && floatingactionbutton.getVisibility() == 0)
                {
                    animateOut(floatingactionbutton);
                }
            } else
            if (floatingactionbutton.getVisibility() != 0)
            {
                animateIn(floatingactionbutton);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public volatile boolean onDependentViewChanged(CoordinatorLayout coordinatorlayout, View view, View view1)
    {
        return onDependentViewChanged(coordinatorlayout, (FloatingActionButton)view, view1);
    }

    static 
    {
        boolean flag;
        if (android.os.ionButton >= 11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        SNACKBAR_BEHAVIOR_ENABLED = flag;
    }


/*
    static boolean access$302(_cls2 _pcls2, boolean flag)
    {
        _pcls2.mIsAnimatingOut = flag;
        return flag;
    }

*/

    public erAdapter()
    {
    }
}
