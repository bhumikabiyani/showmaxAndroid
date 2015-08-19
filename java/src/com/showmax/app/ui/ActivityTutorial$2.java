// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.widget.Button;

// Referenced classes of package com.showmax.app.ui:
//            ActivityTutorial

class this._cls0
    implements android.support.v4.view.ngeListener
{

    final ActivityTutorial this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        boolean flag = false;
        ActivityTutorial.access$102(ActivityTutorial.this, i);
        if (ActivityTutorial.access$100(ActivityTutorial.this) == ActivityTutorial.access$200(ActivityTutorial.this).getCount() - 1)
        {
            ActivityTutorial.access$300(ActivityTutorial.this).setText(0x7f0d00d1);
            ActivityTutorial.access$300(ActivityTutorial.this).setVisibility(0);
            return;
        }
        ActivityTutorial.access$300(ActivityTutorial.this).setText(0x7f0d00d2);
        Button button = ActivityTutorial.access$300(ActivityTutorial.this);
        if (ActivityTutorial.access$400(ActivityTutorial.this))
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 4;
        }
        button.setVisibility(i);
    }

    torialPagerAdapter()
    {
        this$0 = ActivityTutorial.this;
        super();
    }
}
