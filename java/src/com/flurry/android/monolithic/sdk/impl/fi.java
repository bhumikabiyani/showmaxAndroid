// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.TimerTask;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fh, fj

class fi extends TimerTask
{

    final fh a;
    private fj b;

    fi(fh fh1, fj fj1)
    {
        a = fh1;
        super();
        b = fj1;
    }

    public void run()
    {
        a.a();
        if (b != null)
        {
            b.l();
        }
    }
}
