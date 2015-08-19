// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, rp, qw, rr, 
//            ru, oq, ra, oz, 
//            rx, afm, rz, qc, 
//            or

public class abk extends abt
    implements rp
{

    protected final Method a;
    protected ra b;
    protected final qc c;
    protected boolean d;

    public abk(Method method, ra ra1, qc qc)
    {
        super(java/lang/Object);
        a = method;
        b = ra1;
        c = qc;
    }

    public void a(ru ru1)
        throws qw
    {
        if (b == null && (ru1.a(rr.h) || Modifier.isFinal(a.getReturnType().getModifiers())))
        {
            afm afm1 = ru1.a(a.getGenericReturnType());
            b = ru1.a(afm1, false, c);
            d = a(afm1, b);
        }
    }

    public void a(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        Object obj1 = a.invoke(obj, new Object[0]);
        if (obj1 == null)
        {
            ra ra1;
            ra ra2;
            try
            {
                ru1.a(or);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw obj;
            }
            // Misplaced declaration of an exception variable
            catch (or or) { }
            break MISSING_BLOCK_LABEL_69;
        }
        ra2 = b;
        ra1 = ra2;
        if (ra2 != null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        ra1 = ru1.a(obj1.getClass(), true, c);
        ra1.a(obj1, or, ru1);
        return;
        for (; (or instanceof InvocationTargetException) && or.getCause() != null; or = or.getCause()) { }
        if (or instanceof Error)
        {
            throw (Error)or;
        } else
        {
            throw qw.a(or, obj, (new StringBuilder()).append(a.getName()).append("()").toString());
        }
    }

    public void a(Object obj, or or, ru ru1, rx rx1)
        throws IOException, oz
    {
        Object obj1 = a.invoke(obj, new Object[0]);
        if (obj1 == null)
        {
            ra ra1;
            try
            {
                ru1.a(or);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw obj;
            }
            // Misplaced declaration of an exception variable
            catch (or or) { }
            break MISSING_BLOCK_LABEL_102;
        }
        ra1 = b;
        if (ra1 == null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        if (d)
        {
            rx1.a(obj, or);
        }
        ra1.a(obj1, or, ru1, rx1);
        if (d)
        {
            rx1.d(obj, or);
            return;
        }
        break MISSING_BLOCK_LABEL_167;
        ru1.a(obj1.getClass(), true, c).a(obj1, or, ru1);
        return;
        for (; (or instanceof InvocationTargetException) && or.getCause() != null; or = or.getCause()) { }
        if (or instanceof Error)
        {
            throw (Error)or;
        } else
        {
            throw qw.a(or, obj, (new StringBuilder()).append(a.getName()).append("()").toString());
        }
    }

    protected boolean a(afm afm1, ra ra1)
    {
        for (Class class1 = afm1.p(); (afm1.t() ? class1 != Integer.TYPE && class1 != Boolean.TYPE && class1 != Double.TYPE : class1 != java/lang/String && class1 != java/lang/Integer && class1 != java/lang/Boolean && class1 != java/lang/Double) || ra1.getClass().getAnnotation(com/flurry/android/monolithic/sdk/impl/rz) == null;)
        {
            return false;
        }

        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("(@JsonValue serializer for method ").append(a.getDeclaringClass()).append("#").append(a.getName()).append(")").toString();
    }
}
