// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, oz, xn, qu, 
//            afm, rw, ado, ow, 
//            qm, xk

public class tn extends sw
{

    protected final xn i;
    protected final Object j;

    protected tn(tn tn1, qu qu)
    {
        super(tn1, qu);
        i = tn1.i;
        j = tn1.j;
    }

    public tn(String s, afm afm, rw rw, ado ado, xn xn, int l, Object obj)
    {
        super(s, afm, rw, ado);
        i = xn;
        h = l;
        j = obj;
    }

    public sw a(qu qu)
    {
        return b(qu);
    }

    public void a(ow ow, qm qm, Object obj)
        throws IOException, oz
    {
        a(obj, a(ow, qm));
    }

    public void a(Object obj, Object obj1)
        throws IOException
    {
    }

    public tn b(qu qu)
    {
        return new tn(this, qu);
    }

    public xk b()
    {
        return i;
    }

    public Object k()
    {
        return j;
    }
}
