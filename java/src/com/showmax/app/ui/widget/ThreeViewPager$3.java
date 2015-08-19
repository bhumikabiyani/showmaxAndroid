// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.showmax.app.ui.widget:
//            ThreeViewPager

class this._cls0
    implements android.view.ner
{

    final ThreeViewPager this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
        case 2: // '\002'
            ThreeViewPager.access$102(ThreeViewPager.this, true);
            return false;

        case 1: // '\001'
            ThreeViewPager.access$102(ThreeViewPager.this, false);
            break;
        }
        return false;
    }

    ()
    {
        this$0 = ThreeViewPager.this;
        super();
    }
}
