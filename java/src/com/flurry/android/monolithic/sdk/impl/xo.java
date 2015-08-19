// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xk, adj, adk, xp, 
//            xn, afm

public abstract class xo extends xk
{

    protected final xp d[];

    protected xo(xp xp1, xp axp[])
    {
        super(xp1);
        d = axp;
    }

    protected afm a(adj adj1, TypeVariable atypevariable[])
    {
        Object obj = adj1;
        if (atypevariable != null)
        {
            obj = adj1;
            if (atypevariable.length > 0)
            {
                adj adj2 = adj1.a();
                int j = atypevariable.length;
                int i = 0;
                do
                {
                    obj = adj2;
                    if (i >= j)
                    {
                        break;
                    }
                    obj = atypevariable[i];
                    adj2.b(((TypeVariable) (obj)).getName());
                    adj1 = ((TypeVariable) (obj)).getBounds()[0];
                    if (adj1 == null)
                    {
                        adj1 = adk.b();
                    } else
                    {
                        adj1 = adj2.a(adj1);
                    }
                    adj2.a(((TypeVariable) (obj)).getName(), adj1);
                    i++;
                } while (true);
            }
        }
        return ((adj) (obj)).a(c());
    }

    protected xn a(int i, xp xp1)
    {
        d[i] = xp1;
        return c(i);
    }

    public abstract Object a(Object obj)
        throws Exception;

    public abstract Object a(Object aobj[])
        throws Exception;

    public final Annotation a(Class class1)
    {
        return b.a(class1);
    }

    public final void a(int i, Annotation annotation)
    {
        xp xp2 = d[i];
        xp xp1 = xp2;
        if (xp2 == null)
        {
            xp1 = new xp();
            d[i] = xp1;
        }
        xp1.b(annotation);
    }

    public final void a(Annotation annotation)
    {
        b.b(annotation);
    }

    public abstract Type b(int i);

    public final void b(Annotation annotation)
    {
        b.a(annotation);
    }

    public final xn c(int i)
    {
        return new xn(this, b(i), d[i], i);
    }

    public abstract Object g()
        throws Exception;
}
