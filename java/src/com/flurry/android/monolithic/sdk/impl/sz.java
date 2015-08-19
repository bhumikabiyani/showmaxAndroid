// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sw, oz, qu, ado, 
//            ow, qm, xk

public final class sz extends sw
{

    protected final String i;
    protected final boolean j;
    protected final sw k;
    protected final sw l;

    protected sz(sz sz1, qu qu)
    {
        super(sz1, qu);
        i = sz1.i;
        j = sz1.j;
        k = sz1.k;
        l = sz1.l;
    }

    public sz(String s, sw sw1, sw sw2, ado ado, boolean flag)
    {
        super(sw1.c(), sw1.a(), sw1.e, ado);
        i = s;
        k = sw1;
        l = sw2;
        j = flag;
    }

    public sw a(qu qu)
    {
        return b(qu);
    }

    public void a(ow ow, qm qm, Object obj)
        throws IOException, oz
    {
        a(obj, k.a(ow, qm));
    }

    public final void a(Object obj, Object obj1)
        throws IOException
    {
        k.a(obj, obj1);
        if (obj1 != null)
        {
            if (j)
            {
                if (obj1 instanceof Object[])
                {
                    obj1 = ((Object) ((Object[])(Object[])obj1));
                    int j1 = obj1.length;
                    for (int i1 = 0; i1 < j1; i1++)
                    {
                        Object obj2 = obj1[i1];
                        if (obj2 != null)
                        {
                            l.a(obj2, obj);
                        }
                    }

                } else
                if (obj1 instanceof Collection)
                {
                    obj1 = ((Collection)obj1).iterator();
                    do
                    {
                        if (!((Iterator) (obj1)).hasNext())
                        {
                            break;
                        }
                        Object obj3 = ((Iterator) (obj1)).next();
                        if (obj3 != null)
                        {
                            l.a(obj3, obj);
                        }
                    } while (true);
                } else
                if (obj1 instanceof Map)
                {
                    obj1 = ((Map)obj1).values().iterator();
                    do
                    {
                        if (!((Iterator) (obj1)).hasNext())
                        {
                            break;
                        }
                        Object obj4 = ((Iterator) (obj1)).next();
                        if (obj4 != null)
                        {
                            l.a(obj4, obj);
                        }
                    } while (true);
                } else
                {
                    throw new IllegalStateException((new StringBuilder()).append("Unsupported container type (").append(obj1.getClass().getName()).append(") when resolving reference '").append(i).append("'").toString());
                }
            } else
            {
                l.a(obj1, obj);
            }
        }
    }

    public sz b(qu qu)
    {
        return new sz(this, qu);
    }

    public xk b()
    {
        return k.b();
    }
}
