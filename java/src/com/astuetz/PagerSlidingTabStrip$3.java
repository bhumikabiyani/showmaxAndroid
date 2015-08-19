// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.astuetz;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;

// Referenced classes of package com.astuetz:
//            PagerSlidingTabStrip

class this._cls0
    implements android.view.alLayoutListener
{

    final PagerSlidingTabStrip this$0;

    public void onGlobalLayout()
    {
        View view = PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(0);
        if (android.os.ldAt < 16)
        {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
        } else
        {
            getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
        if (PagerSlidingTabStrip.access$600(PagerSlidingTabStrip.this))
        {
            int i = view.getWidth() / 2;
            PagerSlidingTabStrip.access$702(PagerSlidingTabStrip.this, PagerSlidingTabStrip.access$802(PagerSlidingTabStrip.this, getWidth() / 2 - i));
        }
        setPadding(PagerSlidingTabStrip.access$700(PagerSlidingTabStrip.this), getPaddingTop(), PagerSlidingTabStrip.access$800(PagerSlidingTabStrip.this), getPaddingBottom());
        if (PagerSlidingTabStrip.access$900(PagerSlidingTabStrip.this) == 0)
        {
            PagerSlidingTabStrip.access$902(PagerSlidingTabStrip.this, getWidth() / 2 - PagerSlidingTabStrip.access$700(PagerSlidingTabStrip.this));
        }
        PagerSlidingTabStrip.access$1002(PagerSlidingTabStrip.this, PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem());
        PagerSlidingTabStrip.access$1102(PagerSlidingTabStrip.this, 0.0F);
        PagerSlidingTabStrip.access$1200(PagerSlidingTabStrip.this, PagerSlidingTabStrip.access$1000(PagerSlidingTabStrip.this), 0);
        PagerSlidingTabStrip.access$1300(PagerSlidingTabStrip.this, PagerSlidingTabStrip.access$1000(PagerSlidingTabStrip.this));
    }

    balLayoutListener()
    {
        this$0 = PagerSlidingTabStrip.this;
        super();
    }
}
