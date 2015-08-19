// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Field;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, xj, oz, qu, 
//            afm, rw, ado, ow, 
//            qm, xk

public final class sx extends sw
{

    protected final xj i;
    protected final Field j;

    protected sx(sx sx1, qu qu)
    {
        super(sx1, qu);
        i = sx1.i;
        j = sx1.j;
    }

    public sx(String s, afm afm, rw rw, ado ado, xj xj1)
    {
        super(s, afm, rw, ado);
        i = xj1;
        j = xj1.e();
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
            j.set(obj, obj1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a(((Exception) (obj)), obj1);
        }
    }

    public sx b(qu qu)
    {
        return new sx(this, qu);
    }

    public xk b()
    {
        return i;
    }
}
