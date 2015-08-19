// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Arrays;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pf, oq, or

public class afu
    implements pf
{

    static final String a;
    static final char b[];

    public afu()
    {
    }

    public void a(or or1, int i)
        throws IOException, oq
    {
        or1.c(a);
        for (i += i; i > 64; i -= b.length)
        {
            or1.b(b, 0, 64);
        }

        or1.b(b, 0, i);
    }

    public boolean a()
    {
        return false;
    }

    static 
    {
        String s = null;
        String s1 = System.getProperty("line.separator");
        s = s1;
_L2:
        String s2 = s;
        if (s == null)
        {
            s2 = "\n";
        }
        a = s2;
        b = new char[64];
        Arrays.fill(b, ' ');
        return;
        Throwable throwable;
        throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
