// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aay, oq, ru, ra, 
//            afm, rx, qc, abc, 
//            or

public class abj extends aay
{

    public abj(afm afm, boolean flag, rx rx, qc qc)
    {
        super(java/lang/Iterable, afm, flag, rx, qc, null);
    }

    public abc a(rx rx)
    {
        return new abj(b, a, rx, e);
    }

    public void a(Iterable iterable, or or, ru ru1)
        throws IOException, oq
    {
        Object obj = null;
        Iterator iterator = iterable.iterator();
        if (iterator.hasNext())
        {
            rx rx = c;
            iterable = null;
            do
            {
                Object obj2 = iterator.next();
                if (obj2 == null)
                {
                    ru1.a(or);
                } else
                {
                    Object obj1 = obj2.getClass();
                    if (obj1 == obj)
                    {
                        obj1 = iterable;
                    } else
                    {
                        iterable = ru1.a(((Class) (obj1)), e);
                        obj = obj1;
                        obj1 = iterable;
                    }
                    if (rx == null)
                    {
                        ((ra) (obj1)).a(obj2, or, ru1);
                    } else
                    {
                        ((ra) (obj1)).a(obj2, or, ru1, rx);
                    }
                }
            } while (iterator.hasNext());
        }
    }

    public void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((Iterable)obj, or, ru1);
    }
}
