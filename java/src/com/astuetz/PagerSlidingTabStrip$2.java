// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.astuetz;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.astuetz:
//            PagerSlidingTabStrip

class val.position
    implements android.view.al.position
{

    final PagerSlidingTabStrip this$0;
    final int val$position;

    public void onClick(View view)
    {
        if (PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem() != val$position)
        {
            view = PagerSlidingTabStrip.access$300(PagerSlidingTabStrip.this).getChildAt(PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).getCurrentItem());
            PagerSlidingTabStrip.access$400(PagerSlidingTabStrip.this, view);
            PagerSlidingTabStrip.access$200(PagerSlidingTabStrip.this).setCurrentItem(val$position);
        } else
        if (PagerSlidingTabStrip.access$500(PagerSlidingTabStrip.this) != null)
        {
            PagerSlidingTabStrip.access$500(PagerSlidingTabStrip.this).onTabReselected(val$position);
            return;
        }
    }

    TabReselectedListener()
    {
        this$0 = final_pagerslidingtabstrip;
        val$position = I.this;
        super();
    }
}
