// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, xl, oz, qu, 
//            afm, rw, ado, ow, 
//            qm, xk

public final class ta extends sw
{

    protected final xl i;
    protected final Method j;

    protected ta(ta ta1, qu qu)
    {
        super(ta1, qu);
        i = ta1.i;
        j = ta1.j;
    }

    public ta(String s, afm afm, rw rw, ado ado, xl xl1)
    {
        super(s, afm, rw, ado);
        i = xl1;
        j = xl1.e();
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

    public final void a(Object obj, Object obj1)
        throws IOException
    {
        try
        {
            j.invoke(obj, new Object[] {
                obj1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a(((Exception) (obj)), obj1);
        }
    }

    public ta b(qu qu)
    {
        return new ta(this, qu);
    }

    public xk b()
    {
        return i;
    }
}
