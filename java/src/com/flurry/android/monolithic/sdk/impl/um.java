// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, uv, uu, ut, 
//            uo, ur, uq, up, 
//            us, un, oz, ow, 
//            pb, qm

public abstract class um extends wv
{

    protected um(Class class1)
    {
        super(class1);
    }

    public static Iterable d()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new uv());
        arraylist.add(new uu());
        arraylist.add(new ut());
        arraylist.add(new uo());
        arraylist.add(new ur());
        arraylist.add(new uq());
        arraylist.add(new up());
        arraylist.add(new us());
        arraylist.add(new un());
        return arraylist;
    }

    public final Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = null;
        if (ow1.e() != pb.h) goto _L2; else goto _L1
_L1:
        ow1 = ow1.k().trim();
        if (ow1.length() != 0) goto _L4; else goto _L3
_L3:
        ow1 = ((ow) (obj));
_L6:
        return ow1;
_L4:
        obj = a(((String) (ow1)), qm1);
        ow1 = ((ow) (obj));
        if (obj != null) goto _L6; else goto _L5
_L5:
        throw qm1.b(q, "not a valid textual representation");
_L2:
        if (ow1.e() == pb.g)
        {
            Object obj1 = ow1.z();
            ow1 = ((ow) (obj));
            if (obj1 != null)
            {
                if (q.isAssignableFrom(obj1.getClass()))
                {
                    return obj1;
                } else
                {
                    return a(obj1, qm1);
                }
            }
        } else
        {
            throw qm1.b(q);
        }
          goto _L6
        ow1;
          goto _L5
    }

    protected Object a(Object obj, qm qm1)
        throws IOException, oz
    {
        throw qm1.b((new StringBuilder()).append("Don't know how to convert embedded Object of type ").append(obj.getClass().getName()).append(" into ").append(q.getName()).toString());
    }

    protected abstract Object a(String s, qm qm1)
        throws IOException, oz;
}
