// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.wefika.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

// Referenced classes of package com.wefika.flowlayout:
//            FlowLayout

public static class gravity extends android.view.rams
{

    public int gravity;

    public (int i, int j)
    {
        super(i, j);
        gravity = -1;
    }

    public gravity(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        gravity = -1;
        context = context.obtainStyledAttributes(attributeset, ayout);
        gravity = context.getInt(ayout_android_layout_gravity, -1);
        context.recycle();
        return;
        attributeset;
        context.recycle();
        throw attributeset;
    }

    public ayout_android_layout_gravity(android.view.utParams utparams)
    {
        super(utparams);
        gravity = -1;
    }
}
