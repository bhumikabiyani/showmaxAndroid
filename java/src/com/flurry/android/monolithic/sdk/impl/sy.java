// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Constructor;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, oz, ow, pb, 
//            tb, qu, adz, qm, 
//            xk

public final class sy extends sw
{

    protected final sw i;
    protected final Constructor j;

    public sy(sw sw1, Constructor constructor)
    {
        super(sw1);
        i = sw1;
        j = constructor;
    }

    protected sy(sy sy1, qu qu1)
    {
        super(sy1, qu1);
        i = sy1.i.a(qu1);
        j = sy1.j;
    }

    public sw a(qu qu1)
    {
        return b(qu1);
    }

    public void a(ow ow1, qm qm, Object obj)
        throws IOException, oz
    {
        Object obj1;
        Object obj2;
        obj1 = null;
        obj2 = null;
        if (ow1.e() != pb.m) goto _L2; else goto _L1
_L1:
        if (f == null)
        {
            ow1 = ((ow) (obj2));
        } else
        {
            ow1 = ((ow) (f.a(qm)));
        }
_L4:
        a(obj, ow1);
        return;
_L2:
        if (e != null)
        {
            ow1 = ((ow) (d.a(ow1, qm, e)));
            continue; /* Loop/switch isn't completed */
        }
        obj2 = j.newInstance(new Object[] {
            obj
        });
        obj1 = obj2;
_L5:
        d.a(ow1, qm, obj1);
        ow1 = ((ow) (obj1));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        adz.b(exception, (new StringBuilder()).append("Failed to instantiate class ").append(j.getDeclaringClass().getName()).append(", problem: ").append(exception.getMessage()).toString());
          goto _L5
    }

    public final void a(Object obj, Object obj1)
        throws IOException
    {
        i.a(obj, obj1);
    }

    public sy b(qu qu1)
    {
        return new sy(this, qu1);
    }

    public xk b()
    {
        return i.b();
    }
}
