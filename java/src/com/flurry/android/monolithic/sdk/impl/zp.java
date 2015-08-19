// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rq, xq, py, afm, 
//            zi, sg, xg, xj, 
//            xl, zq, sf, zf, 
//            aeb, rr, zr, zs, 
//            xh, zu, zt, ado, 
//            ra, rx, xk

public class zp
{

    protected final rq a;
    protected final xq b;
    protected final sf c;
    protected final py d;
    protected Object e;

    public zp(rq rq1, xq xq1)
    {
        a = rq1;
        b = xq1;
        c = xq1.a(rq1.g());
        d = a.a();
    }

    public ado a()
    {
        return b.i();
    }

    protected afm a(xg xg1, boolean flag, afm afm1)
    {
        boolean flag1 = true;
        Object obj = d.e(xg1);
        if (obj != null)
        {
            Class class1 = afm1.p();
            if (((Class) (obj)).isAssignableFrom(class1))
            {
                afm1 = afm1.h(((Class) (obj)));
            } else
            {
                if (!class1.isAssignableFrom(((Class) (obj))))
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Illegal concrete-type annotation for method '").append(xg1.b()).append("': class ").append(((Class) (obj)).getName()).append(" not a super-type of (declared) class ").append(class1.getName()).toString());
                }
                afm1 = a.a(afm1, ((Class) (obj)));
            }
            flag = true;
        }
        obj = zi.b(a, xg1, afm1);
        if (obj != afm1)
        {
            afm1 = ((afm) (obj));
            flag = true;
        }
        if (!flag)
        {
            xg1 = d.f(xg1);
            if (xg1 != null)
            {
                if (xg1 == sg.b)
                {
                    flag = flag1;
                } else
                {
                    flag = false;
                }
            }
        }
        if (flag)
        {
            return afm1;
        } else
        {
            return null;
        }
    }

    protected zf a(String s, afm afm1, ra ra, rx rx, rx rx1, xk xk, boolean flag)
    {
        Method method;
        Field field;
        afm afm2;
        Object obj;
        sf sf1;
        boolean flag1;
        boolean flag2;
        if (xk instanceof xj)
        {
            method = null;
            field = ((xj)xk).e();
        } else
        {
            method = ((xl)xk).e();
            field = null;
        }
        afm2 = a(((xg) (xk)), flag, afm1);
        if (rx1 != null)
        {
            afm afm3 = afm2;
            if (afm2 == null)
            {
                afm3 = afm1;
            }
            if (afm3.g() == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Problem trying to create BeanPropertyWriter for property '").append(s).append("' (of type ").append(b.a()).append("); serialization type ").append(afm3).append(" has no content").toString());
            }
            afm2 = afm3.e(rx1);
            afm2.g();
        }
        obj = null;
        flag = false;
        flag2 = false;
        sf1 = d.a(xk, c);
        flag1 = flag2;
        rx1 = ((rx) (obj));
        if (sf1 == null) goto _L2; else goto _L1
_L1:
        zq.a[sf1.ordinal()];
        JVM INSTR tableswitch 1 4: default 220
    //                   1 296
    //                   2 354
    //                   3 368
    //                   4 371;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        rx1 = ((rx) (obj));
        flag1 = flag2;
_L2:
        flag = flag1;
_L8:
        afm1 = new zf(xk, b.i(), s, afm1, ra, rx, afm2, method, field, flag, rx1);
        ra = d.b(xk);
        s = afm1;
        if (ra != null)
        {
            s = afm1;
            if (ra.booleanValue())
            {
                s = afm1.c();
            }
        }
        return s;
_L4:
label0:
        {
            obj = a(s, method, field);
            if (obj != null)
            {
                break label0;
            }
            flag = true;
            rx1 = ((rx) (obj));
        }
          goto _L8
        flag1 = flag2;
        rx1 = ((rx) (obj));
        if (!obj.getClass().isArray()) goto _L2; else goto _L9
_L9:
        rx1 = ((rx) (aeb.a(obj)));
        flag = false;
          goto _L8
_L5:
        rx1 = ((rx) (b(s, afm1)));
        flag = true;
          goto _L8
_L6:
        flag = true;
_L7:
        flag1 = flag;
        rx1 = ((rx) (obj));
        if (!afm1.f()) goto _L2; else goto _L10
_L10:
        rx1 = ((rx) (a(s, afm1)));
          goto _L8
    }

    protected Object a(Exception exception, String s, Object obj)
    {
        for (; exception.getCause() != null; exception = exception.getCause()) { }
        if (exception instanceof Error)
        {
            throw (Error)exception;
        }
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Failed to get property '").append(s).append("' of default ").append(obj.getClass().getName()).append(" instance").toString());
        }
    }

    protected Object a(String s, afm afm1)
    {
        if (!a.a(rr.w))
        {
            if (afm1.b())
            {
                return new zr();
            }
            if (java/util/Collection.isAssignableFrom(afm1.p()))
            {
                return new zs();
            }
        }
        return null;
    }

    protected Object a(String s, Method method, Field field)
    {
        Object obj;
        obj = b();
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        return method.invoke(obj, new Object[0]);
        method = ((Method) (field.get(obj)));
        return method;
        method;
        return a(((Exception) (method)), s, obj);
    }

    protected Object b()
    {
        if (e == null)
        {
            e = b.a(a.a(rr.e));
            if (e == null)
            {
                Class class1 = b.c().e();
                throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getName()).append(" has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation").toString());
            }
        }
        return e;
    }

    protected Object b(String s, afm afm1)
    {
        s = afm1.p();
        if (s == java/lang/String)
        {
            return new zu();
        }
        if (afm1.b())
        {
            return new zr();
        }
        if (java/util/Collection.isAssignableFrom(s))
        {
            return new zs();
        }
        if (java/util/Map.isAssignableFrom(s))
        {
            return new zt();
        } else
        {
            return null;
        }
    }
}
