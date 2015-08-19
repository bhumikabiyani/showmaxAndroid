// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.widget.Toast;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, eq

class er
    implements Runnable
{

    final int a;
    final eq b;

    er(eq eq, int i)
    {
        b = eq;
        a = i;
        super();
    }

    public void run()
    {
        Toast.makeText(ia.a().b(), (new StringBuilder()).append("SD HTTP Response Code: ").append(a).toString(), 0).show();
    }
}
