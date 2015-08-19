// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.showmax.lib.api.ui.widget:
//            BaseWebView

class this._cls0
    implements android.view.stener
{

    private float mDownX;
    final BaseWebView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 49
    //                   2 49
    //                   3 49;
           goto _L1 _L2 _L3 _L3 _L3
_L1:
        return false;
_L2:
        mDownX = motionevent.getX();
        continue; /* Loop/switch isn't completed */
_L3:
        motionevent.setLocation(mDownX, motionevent.getY());
        if (true) goto _L1; else goto _L4
_L4:
    }

    ()
    {
        this$0 = BaseWebView.this;
        super();
    }
}
