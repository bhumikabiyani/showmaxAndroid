// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abu, rp, oq, ru, 
//            or, ra, qw, oz, 
//            rx, qc

public class acv extends abu
    implements rp
{

    protected ra a;

    public acv(qc qc)
    {
        super(java/util/Collection, qc);
    }

    private final void b(Collection collection, or or1, ru ru1)
        throws IOException, oq
    {
        if (a == null) goto _L2; else goto _L1
_L1:
        c(collection, or1, ru1);
_L6:
        return;
_L2:
        Iterator iterator;
        int i;
        iterator = collection.iterator();
        i = 0;
_L4:
label0:
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            String s = (String)iterator.next();
            if (s == null)
            {
                try
                {
                    ru1.a(or1);
                    break label0;
                }
                catch (Exception exception)
                {
                    a(ru1, exception, collection, i);
                }
                break; /* Loop/switch isn't completed */
            }
        }
        or1.b(s);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void c(Collection collection, or or1, ru ru1)
        throws IOException, oq
    {
        ra ra1;
        Iterator iterator;
        ra1 = a;
        iterator = collection.iterator();
_L2:
        Object obj;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (String)iterator.next();
        if (obj == null)
        {
            try
            {
                ru1.a(or1);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                a(ru1, ((Throwable) (obj)), collection, 0);
            }
            continue; /* Loop/switch isn't completed */
        }
        ra1.a(obj, or1, ru1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(ru ru1)
        throws qw
    {
        ru1 = ru1.a(java/lang/String, b);
        if (!a(((ra) (ru1))))
        {
            a = ru1;
        }
    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((Collection)obj, or1, ru1);
    }

    public volatile void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oz
    {
        a((Collection)obj, or1, ru1, rx1);
    }

    public void a(Collection collection, or or1, ru ru1)
        throws IOException, oq
    {
        or1.b();
        if (a == null)
        {
            b(collection, or1, ru1);
        } else
        {
            c(collection, or1, ru1);
        }
        or1.c();
    }

    public void a(Collection collection, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.c(collection, or1);
        if (a == null)
        {
            b(collection, or1, ru1);
        } else
        {
            c(collection, or1, ru1);
        }
        rx1.f(collection, or1);
    }
}
