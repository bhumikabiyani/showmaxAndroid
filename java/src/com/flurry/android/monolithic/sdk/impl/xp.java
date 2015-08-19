// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ado

public final class xp
    implements ado
{

    protected HashMap a;

    public xp()
    {
    }

    private xp(HashMap hashmap)
    {
        a = hashmap;
    }

    public static xp a(xp xp1, xp xp2)
    {
        xp xp3;
        if (xp1 == null || xp1.a == null || xp1.a.isEmpty())
        {
            xp3 = xp2;
        } else
        {
            xp3 = xp1;
            if (xp2 != null)
            {
                xp3 = xp1;
                if (xp2.a != null)
                {
                    xp3 = xp1;
                    if (!xp2.a.isEmpty())
                    {
                        HashMap hashmap = new HashMap();
                        Annotation annotation;
                        for (xp2 = xp2.a.values().iterator(); xp2.hasNext(); hashmap.put(annotation.annotationType(), annotation))
                        {
                            annotation = (Annotation)xp2.next();
                        }

                        for (xp1 = xp1.a.values().iterator(); xp1.hasNext(); hashmap.put(xp2.annotationType(), xp2))
                        {
                            xp2 = (Annotation)xp1.next();
                        }

                        return new xp(hashmap);
                    }
                }
            }
        }
        return xp3;
    }

    public int a()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.size();
        }
    }

    public Annotation a(Class class1)
    {
        if (a == null)
        {
            return null;
        } else
        {
            return (Annotation)a.get(class1);
        }
    }

    public void a(Annotation annotation)
    {
        if (a == null || !a.containsKey(annotation.annotationType()))
        {
            c(annotation);
        }
    }

    public void b(Annotation annotation)
    {
        c(annotation);
    }

    protected final void c(Annotation annotation)
    {
        if (a == null)
        {
            a = new HashMap();
        }
        a.put(annotation.annotationType(), annotation);
    }

    public String toString()
    {
        if (a == null)
        {
            return "[null]";
        } else
        {
            return a.toString();
        }
    }
}
