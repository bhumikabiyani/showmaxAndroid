// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.List;
import java.util.Timer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gz

class hb
{

    Timer a;
    List b;
    int c;
    final gz d;

    hb(gz gz, List list)
    {
        d = gz;
        super();
        a = null;
        b = null;
        c = 0;
        b = list;
    }

    public void a()
    {
        c = c + 1;
    }

    public void a(Timer timer)
    {
        a = timer;
    }

    public Timer b()
    {
        return a;
    }

    public List c()
    {
        return b;
    }

    public int d()
    {
        return c;
    }
}
