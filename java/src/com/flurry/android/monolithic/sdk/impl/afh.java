// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afl, afi

public final class afh
{

    final afh a;
    final boolean b;
    private int c;
    private int d;
    private int e[];
    private afl f[];
    private afi g[];
    private int h;
    private transient boolean i;
    private boolean j;
    private boolean k;
    private boolean l;

    private afh(int i1, boolean flag)
    {
        byte byte0;
        byte0 = 16;
        super();
        a = null;
        b = flag;
        if (i1 >= 16) goto _L2; else goto _L1
_L1:
        int j1 = 16;
_L4:
        a(j1);
        return;
_L2:
        j1 = i1;
        if ((i1 - 1 & i1) != 0)
        {
            j1 = byte0;
            while (j1 < i1) 
            {
                j1 += j1;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static afh a()
    {
        return new afh(64, true);
    }

    private void a(int i1)
    {
        c = 0;
        e = new int[i1];
        f = new afl[i1];
        j = false;
        k = false;
        d = i1 - 1;
        l = true;
        g = null;
        h = 0;
        i = false;
    }
}
