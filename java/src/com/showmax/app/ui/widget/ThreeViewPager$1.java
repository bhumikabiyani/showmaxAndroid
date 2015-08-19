// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;


// Referenced classes of package com.showmax.app.ui.widget:
//            ThreeViewPager

class this._cls0
    implements android.support.v4.view.hangeListener
{

    final ThreeViewPager this$0;

    public void onPageScrollStateChanged(int i)
    {
        ThreeViewPager threeviewpager = ThreeViewPager.this;
        boolean flag;
        if (i != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        threeviewpager.mNeedsRedraw = flag;
    }

    public void onPageScrolled(int i, float f, int j)
    {
        if (mNeedsRedraw)
        {
            invalidate();
        }
    }

    public void onPageSelected(int i)
    {
    }

    ngeListener()
    {
        this$0 = ThreeViewPager.this;
        super();
    }
}
