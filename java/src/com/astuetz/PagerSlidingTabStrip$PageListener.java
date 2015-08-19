// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.astuetz;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.astuetz:
//            PagerSlidingTabStrip

private class <init>
    implements android.support.v4.view.
{

    final PagerSlidingTabStrip this$0;

    public void onPageScrollStateChanged(int i)
    {
        if (i == 0)
        {
            PagerSlidingTabStrip.access$1200(PagerSlidingTabStrip.this, PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem(), 0);
        }
        View view = PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem());
        PagerSlidingTabStrip.access$1500(PagerSlidingTabStrip.this, view);
        if (PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem() - 1 >= 0)
        {
            View view1 = PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem() - 1);
            PagerSlidingTabStrip.access$400(PagerSlidingTabStrip.this, view1);
        }
        if (PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem() + 1 <= PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getAdapter().getCount() - 1)
        {
            View view2 = PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem() + 1);
            PagerSlidingTabStrip.access$400(PagerSlidingTabStrip.this, view2);
        }
        if (delegatePageListener != null)
        {
            delegatePageListener.ageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int j)
    {
        PagerSlidingTabStrip.access$1002(PagerSlidingTabStrip.this, i);
        PagerSlidingTabStrip.access$1102(PagerSlidingTabStrip.this, f);
        int k;
        if (PagerSlidingTabStrip.access$1400(PagerSlidingTabStrip.this) > 0)
        {
            k = (int)((float)PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(i).getWidth() * f);
        } else
        {
            k = 0;
        }
        PagerSlidingTabStrip.access$1200(PagerSlidingTabStrip.this, i, k);
        invalidate();
        if (delegatePageListener != null)
        {
            delegatePageListener.ageScrolled(i, f, j);
        }
    }

    public void onPageSelected(int i)
    {
        PagerSlidingTabStrip.access$1300(PagerSlidingTabStrip.this, i);
        if (delegatePageListener != null)
        {
            delegatePageListener.ageSelected(i);
        }
    }

    private Listener()
    {
        this$0 = PagerSlidingTabStrip.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
