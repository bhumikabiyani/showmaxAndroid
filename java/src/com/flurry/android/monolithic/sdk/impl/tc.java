// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, xl, oz, ow, 
//            pb, qw, qu, afm, 
//            rw, ado, qm, xk

public final class tc extends sw
{

    protected final xl i;
    protected final Method j;

    protected tc(tc tc1, qu qu1)
    {
        super(tc1, qu1);
        i = tc1.i;
        j = tc1.j;
    }

    public tc(String s, afm afm, rw rw, ado ado, xl xl1)
    {
        super(s, afm, rw, ado);
        i = xl1;
        j = xl1.e();
    }

    public sw a(qu qu1)
    {
        return b(qu1);
    }

    public final void a(ow ow1, qm qm, Object obj)
        throws IOException, oz
    {
        if (ow1.e() == pb.m)
        {
            return;
        }
        try
        {
            obj = j.invoke(obj, new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            a(((Exception) (ow1)));
            return;
        }
        if (obj == null)
        {
            throw new qw((new StringBuilder()).append("Problem deserializing 'setterless' property '").append(c()).append("': get method returned null").toString());
        } else
        {
            d.a(ow1, qm, obj);
            return;
        }
    }

    public final void a(Object obj, Object obj1)
        throws IOException
    {
        throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }

    public tc b(qu qu1)
    {
        return new tc(this, qu1);
    }

    public xk b()
    {
        return i;
    }
}
