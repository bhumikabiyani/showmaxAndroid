// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.View;
import android.widget.MediaController;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            n, o

public class cf extends MediaController
{

    private final String a = getClass().getSimpleName();
    private n b;
    private o c;

    public cf(Context context, n n, o o)
    {
        super(context);
        b = n;
        c = o;
    }

    public void setAnchorView(View view)
    {
        super.setAnchorView(view);
    }
}
