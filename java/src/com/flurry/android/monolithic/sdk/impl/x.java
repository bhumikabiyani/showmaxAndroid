// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.MotionEvent;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            w

class x extends Dialog
{

    final Activity a;
    final w b;

    x(w w, Context context, int i, Activity activity)
    {
        b = w;
        a = activity;
        super(context, i);
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return a.dispatchTouchEvent(motionevent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionevent)
    {
        return a.dispatchTrackballEvent(motionevent);
    }
}
