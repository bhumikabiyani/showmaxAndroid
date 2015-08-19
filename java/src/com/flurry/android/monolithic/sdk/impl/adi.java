// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm, qz, oz, or, 
//            rx, ru

public abstract class adi extends afm
    implements qz
{

    volatile String c;

    protected adi(Class class1, int i, Object obj, Object obj1)
    {
        super(class1, i);
        f = obj;
        g = obj1;
    }

    protected abstract String a();

    public void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.b(m());
    }

    public void a(or or1, ru ru, rx rx1)
        throws IOException, oz
    {
        rx1.a(this, or1);
        a(or1, ru);
        rx1.d(this, or1);
    }

    public String m()
    {
        String s1 = c;
        String s = s1;
        if (s1 == null)
        {
            s = a();
        }
        return s;
    }

    public Object n()
    {
        return f;
    }

    public Object o()
    {
        return g;
    }
}
