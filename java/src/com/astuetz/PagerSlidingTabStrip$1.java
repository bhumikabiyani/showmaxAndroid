// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.astuetz;

import android.view.ViewTreeObserver;

// Referenced classes of package com.astuetz:
//            PagerSlidingTabStrip

class this._cls0
    implements android.view.alLayoutListener
{

    final PagerSlidingTabStrip this$0;

    public void onGlobalLayout()
    {
        if (android.os.obalLayoutListener < 16)
        {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
            return;
        } else
        {
            getViewTreeObserver().removeOnGlobalLayoutListener(this);
            return;
        }
    }

    balLayoutListener()
    {
        this$0 = PagerSlidingTabStrip.this;
        super();
    }
}
