// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.MotionEvent;
import android.view.View;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.widget:
//            ContentWarningView

class this._cls0
    implements android.view.arningView._cls1
{

    final ContentWarningView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        MauLog.w("[ContentWarningView]::[mWatchBtn]::[onTouch]::[event: %d]", new Object[] {
            Integer.valueOf(motionevent.getAction())
        });
        return false;
    }

    ()
    {
        this$0 = ContentWarningView.this;
        super();
    }
}
