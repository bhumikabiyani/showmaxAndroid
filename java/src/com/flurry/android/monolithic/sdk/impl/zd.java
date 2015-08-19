// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.TimeZone;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rs, acw, acy, zz, 
//            aad, aae, aac, aab, 
//            aaa, aaf, aba, abd, 
//            aag, aah, acj, ra, 
//            afz, acz, abx, aby, 
//            abz, ace, acc, acd, 
//            acb, aca, xf, rq, 
//            afm, py, adg, rb, 
//            qc, xg, ada, acf, 
//            abo, rv, add, abh, 
//            acg, acv, xq, abl, 
//            qw, qj, sg, rr, 
//            qy, qz, abs, abr, 
//            xl, adz, abk, abi, 
//            acx, abf, adf, adc, 
//            aee, abe, yh, yj, 
//            adk, rx

public abstract class zd extends rs
{

    protected static final HashMap a;
    protected static final HashMap b;
    protected static final HashMap c;
    protected xf d;

    protected zd()
    {
        d = xf.a;
    }

    protected static afm b(rq rq1, xg xg1, afm afm1)
    {
        py py1 = rq1.a();
        Object obj = afm1;
        if (afm1.f())
        {
            obj = py1.a(xg1, afm1.k());
            rq1 = afm1;
            if (obj != null)
            {
                if (!(afm1 instanceof adg))
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Illegal key-type annotation: type ").append(afm1).append(" is not a Map type").toString());
                }
                try
                {
                    rq1 = ((adg)afm1).e(((Class) (obj)));
                }
                // Misplaced declaration of an exception variable
                catch (rq rq1)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Failed to narrow key type ").append(afm1).append(" with key-type annotation (").append(((Class) (obj)).getName()).append("): ").append(rq1.getMessage()).toString());
                }
            }
            xg1 = py1.b(xg1, rq1.g());
            obj = rq1;
            if (xg1 != null)
            {
                try
                {
                    obj = rq1.c(xg1);
                }
                // Misplaced declaration of an exception variable
                catch (afm afm1)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Failed to narrow content type ").append(rq1).append(" with content-type annotation (").append(xg1.getName()).append("): ").append(afm1.getMessage()).toString());
                }
            }
        }
        return ((afm) (obj));
    }

    protected static ra b(rq rq1, xg xg1, qc qc1)
    {
        Class class1;
label0:
        {
            py py1 = rq1.a();
            Class class2 = py1.c(xg1);
            if (class2 != null)
            {
                class1 = class2;
                if (class2 != com/flurry/android/monolithic/sdk/impl/rb)
                {
                    break label0;
                }
            }
            class1 = class2;
            if (qc1 != null)
            {
                class1 = py1.c(qc1.b());
            }
        }
        if (class1 != null && class1 != com/flurry/android/monolithic/sdk/impl/rb)
        {
            return rq1.a(xg1, class1);
        } else
        {
            return null;
        }
    }

    protected static ra c(rq rq1, xg xg1, qc qc1)
    {
        Class class1;
label0:
        {
            py py1 = rq1.a();
            Class class2 = py1.d(xg1);
            if (class2 != null)
            {
                class1 = class2;
                if (class2 != com/flurry/android/monolithic/sdk/impl/rb)
                {
                    break label0;
                }
            }
            class1 = class2;
            if (qc1 != null)
            {
                class1 = py1.d(qc1.b());
            }
        }
        if (class1 != null && class1 != com/flurry/android/monolithic/sdk/impl/rb)
        {
            return rq1.a(xg1, class1);
        } else
        {
            return null;
        }
    }

    protected afm a(rq rq1, xg xg1, afm afm1)
    {
        Class class1 = rq1.a().e(xg1);
        afm afm2 = afm1;
        if (class1 != null)
        {
            try
            {
                afm2 = afm1.h(class1);
            }
            // Misplaced declaration of an exception variable
            catch (rq rq1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Failed to widen type ").append(afm1).append(" with concrete-type annotation (value ").append(class1.getName()).append("), method '").append(xg1.b()).append("': ").append(rq1.getMessage()).toString());
            }
        }
        return b(rq1, xg1, afm2);
    }

    public final ra a(afm afm1, rq rq1, xq xq1, qc qc1, boolean flag)
    {
        afm1 = afm1.p().getName();
        rq1 = (ra)a.get(afm1);
        if (rq1 != null)
        {
            return rq1;
        }
        afm1 = (Class)b.get(afm1);
        if (afm1 != null)
        {
            try
            {
                rq1 = (ra)afm1.newInstance();
            }
            // Misplaced declaration of an exception variable
            catch (rq rq1)
            {
                throw new IllegalStateException((new StringBuilder()).append("Failed to instantiate standard serializer (of type ").append(afm1.getName()).append("): ").append(rq1.getMessage()).toString(), rq1);
            }
            return rq1;
        } else
        {
            return null;
        }
    }

    protected ra a(rq rq1, ada ada1, xq xq1, qc qc1, boolean flag, rx rx, ra ra1)
    {
        rq1 = ada1.p();
        if ([Ljava/lang/String; == rq1)
        {
            rq1 = new acf(qc1);
        } else
        {
            xq1 = (ra)c.get(rq1.getName());
            rq1 = xq1;
            if (xq1 == null)
            {
                return new abo(ada1.g(), flag, rx, qc1, ra1);
            }
        }
        return rq1;
    }

    protected ra a(rq rq1, adc adc1, xq xq1, qc qc1, boolean flag, rx rx, ra ra1)
    {
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            ra ra2 = ((rv)iterator.next()).a(rq1, adc1, xq1, qc1, rx, ra1);
            if (ra2 != null)
            {
                return ra2;
            }
        }

        return null;
    }

    protected ra a(rq rq1, add add1, xq xq1, qc qc1, boolean flag, rx rx, ra ra1)
    {
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            ra ra2 = ((rv)iterator.next()).a(rq1, add1, xq1, qc1, rx, ra1);
            if (ra2 != null)
            {
                return ra2;
            }
        }

        Class class1 = add1.p();
        if (java/util/EnumSet.isAssignableFrom(class1))
        {
            return a(rq1, ((afm) (add1)), xq1, qc1, flag, rx, ra1);
        }
        rq1 = add1.g().p();
        if (a(class1))
        {
            if (rq1 == java/lang/String)
            {
                return new abh(qc1);
            } else
            {
                return acg.a(add1.g(), flag, rx, qc1, ra1);
            }
        }
        if (rq1 == java/lang/String)
        {
            return new acv(qc1);
        } else
        {
            return acg.b(add1.g(), flag, rx, qc1, ra1);
        }
    }

    protected ra a(rq rq1, adf adf1, xq xq1, qc qc1, boolean flag, ra ra1, rx rx, 
            ra ra2)
    {
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            ra ra3 = ((rv)iterator.next()).a(rq1, adf1, xq1, qc1, ra1, rx, ra2);
            if (ra3 != null)
            {
                return ra3;
            }
        }

        return null;
    }

    protected ra a(rq rq1, adg adg1, xq xq1, qc qc1, boolean flag, ra ra1, rx rx, 
            ra ra2)
    {
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            ra ra3 = ((rv)iterator.next()).a(rq1, adg1, xq1, qc1, ra1, rx, ra2);
            if (ra3 != null)
            {
                return ra3;
            }
        }

        if (java/util/EnumMap.isAssignableFrom(adg1.p()))
        {
            return b(rq1, adg1, xq1, qc1, flag, rx, ra2);
        } else
        {
            return abl.a(rq1.a().c(xq1.c()), adg1, flag, rx, qc1, ra1, ra2);
        }
    }

    public final ra a(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag)
        throws qw
    {
        Class class1 = afm1.p();
        if (java/util/Iterator.isAssignableFrom(class1))
        {
            return c(rq1, afm1, xq1, qc1, flag);
        }
        if (java/lang/Iterable.isAssignableFrom(class1))
        {
            return d(rq1, afm1, xq1, qc1, flag);
        }
        if (java/lang/CharSequence.isAssignableFrom(class1))
        {
            return acy.a;
        } else
        {
            return null;
        }
    }

    protected ra a(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag, rx rx, ra ra1)
    {
        afm1 = afm1.g();
        rq1 = afm1;
        if (!afm1.r())
        {
            rq1 = null;
        }
        return acg.a(rq1, qc1);
    }

    protected ra a(rq rq1, xg xg1, qc qc1)
        throws qw
    {
        Object obj = rq1.a().b(xg1);
        if (obj != null) goto _L2; else goto _L1
_L1:
        xg1 = null;
_L4:
        return xg1;
_L2:
        if (!(obj instanceof ra))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (ra)obj;
        xg1 = ((xg) (obj));
        if (obj instanceof qj)
        {
            return ((qj)obj).a(rq1, qc1);
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!(obj instanceof Class))
        {
            throw new IllegalStateException((new StringBuilder()).append("AnnotationIntrospector returned value of type ").append(obj.getClass().getName()).append("; expected type JsonSerializer or Class<JsonSerializer> instead").toString());
        }
        obj = (Class)obj;
        if (!com/flurry/android/monolithic/sdk/impl/ra.isAssignableFrom(((Class) (obj))))
        {
            throw new IllegalStateException((new StringBuilder()).append("AnnotationIntrospector returned Class ").append(((Class) (obj)).getName()).append("; expected Class<JsonSerializer>").toString());
        }
        obj = rq1.a(xg1, ((Class) (obj)));
        xg1 = ((xg) (obj));
        if (obj instanceof qj)
        {
            return ((qj)obj).a(rq1, qc1);
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    protected abstract Iterable a();

    protected boolean a(rq rq1, xq xq1, rx rx, qc qc1)
    {
        if (rx == null)
        {
            rx = rq1.a();
            xq1 = rx.f(xq1.c());
            if (xq1 != null)
            {
                if (xq1 == sg.b)
                {
                    return true;
                }
            } else
            if (rq1.a(rr.h))
            {
                return true;
            }
            if (qc1 != null)
            {
                rq1 = qc1.a();
                if (rq1.f())
                {
                    if (rx.b(qc1.b(), qc1.a()) != null)
                    {
                        return true;
                    }
                    if ((rq1 instanceof adg) && rx.a(qc1.b(), qc1.a()) != null)
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    protected boolean a(Class class1)
    {
        return java/util/RandomAccess.isAssignableFrom(class1);
    }

    public final ra b(afm afm1, rq rq1, xq xq1, qc qc1, boolean flag)
        throws qw
    {
        Class class1 = afm1.p();
        if (!com/flurry/android/monolithic/sdk/impl/qy.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        if (!com/flurry/android/monolithic/sdk/impl/qz.isAssignableFrom(class1)) goto _L4; else goto _L3
_L3:
        afm1 = abs.a;
_L6:
        return afm1;
_L4:
        return abr.a;
_L2:
        xl xl1 = xq1.e();
        if (xl1 != null)
        {
            afm1 = xl1.e();
            if (rq1.a(rr.e))
            {
                adz.a(afm1);
            }
            return new abk(afm1, a(rq1, xl1, qc1), qc1);
        }
        if (java/net/InetAddress.isAssignableFrom(class1))
        {
            return abi.a;
        }
        if (java/util/TimeZone.isAssignableFrom(class1))
        {
            return acx.a;
        }
        if (java/nio/charset/Charset.isAssignableFrom(class1))
        {
            return acy.a;
        }
        qc1 = d.a(rq1, afm1);
        afm1 = qc1;
        if (qc1 == null)
        {
            if (java/lang/Number.isAssignableFrom(class1))
            {
                return aaf.a;
            }
            if (java/lang/Enum.isAssignableFrom(class1))
            {
                return abf.a(class1, rq1, xq1);
            }
            if (java/util/Calendar.isAssignableFrom(class1))
            {
                return aba.a;
            }
            if (java/util/Date.isAssignableFrom(class1))
            {
                return abd.a;
            } else
            {
                return null;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public ra b(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag)
    {
        rx rx = b(rq1, afm1.g(), qc1);
        ra ra1;
        if (rx != null)
        {
            flag = false;
        } else
        if (!flag)
        {
            flag = a(rq1, xq1, rx, qc1);
        }
        ra1 = c(rq1, xq1.c(), qc1);
        if (afm1.j())
        {
            afm1 = (adf)afm1;
            ra ra2 = b(rq1, ((xg) (xq1.c())), qc1);
            if (afm1.l())
            {
                return a(rq1, (adg)afm1, xq1, qc1, flag, ra2, rx, ra1);
            } else
            {
                return a(rq1, afm1, xq1, qc1, flag, ra2, rx, ra1);
            }
        }
        if (afm1.i())
        {
            afm1 = (adc)afm1;
            if (afm1.a_())
            {
                return a(rq1, (add)afm1, xq1, qc1, flag, rx, ra1);
            } else
            {
                return a(rq1, afm1, xq1, qc1, flag, rx, ra1);
            }
        }
        if (afm1.b())
        {
            return a(rq1, (ada)afm1, xq1, qc1, flag, rx, ra1);
        } else
        {
            return null;
        }
    }

    protected ra b(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag, rx rx, ra ra1)
    {
        afm afm2 = afm1.k();
        xq1 = null;
        if (afm2.r())
        {
            xq1 = aee.a(afm2.p(), rq1.a());
        }
        return new abe(afm1.g(), flag, xq1, rx, qc1, ra1);
    }

    public rx b(rq rq1, afm afm1, qc qc1)
    {
        Object obj = ((xq)rq1.c(afm1.p())).c();
        py py1 = rq1.a();
        yj yj1 = py1.a(rq1, ((xh) (obj)), afm1);
        if (yj1 == null)
        {
            yj1 = rq1.d(afm1);
            obj = null;
        } else
        {
            obj = rq1.l().a(((xh) (obj)), rq1, py1);
        }
        if (yj1 == null)
        {
            return null;
        } else
        {
            return yj1.a(rq1, afm1, ((Collection) (obj)), qc1);
        }
    }

    protected ra c(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag)
    {
        Object obj = afm1.b(0);
        afm1 = ((afm) (obj));
        if (obj == null)
        {
            afm1 = adk.b();
        }
        obj = b(rq1, afm1, qc1);
        return acg.a(afm1, a(rq1, xq1, ((rx) (obj)), qc1), ((rx) (obj)), qc1);
    }

    protected ra d(rq rq1, afm afm1, xq xq1, qc qc1, boolean flag)
    {
        Object obj = afm1.b(0);
        afm1 = ((afm) (obj));
        if (obj == null)
        {
            afm1 = adk.b();
        }
        obj = b(rq1, afm1, qc1);
        return acg.b(afm1, a(rq1, xq1, ((rx) (obj)), qc1), ((rx) (obj)), qc1);
    }

    static 
    {
        a = new HashMap();
        b = new HashMap();
        a.put(java/lang/String.getName(), new acw());
        Object obj = acy.a;
        a.put(java/lang/StringBuffer.getName(), obj);
        a.put(java/lang/StringBuilder.getName(), obj);
        a.put(java/lang/Character.getName(), obj);
        a.put(Character.TYPE.getName(), obj);
        a.put(Boolean.TYPE.getName(), new zz(true));
        a.put(java/lang/Boolean.getName(), new zz(false));
        obj = new aad();
        a.put(java/lang/Integer.getName(), obj);
        a.put(Integer.TYPE.getName(), obj);
        a.put(java/lang/Long.getName(), aae.a);
        a.put(Long.TYPE.getName(), aae.a);
        a.put(java/lang/Byte.getName(), aac.a);
        a.put(Byte.TYPE.getName(), aac.a);
        a.put(java/lang/Short.getName(), aac.a);
        a.put(Short.TYPE.getName(), aac.a);
        a.put(java/lang/Float.getName(), aab.a);
        a.put(Float.TYPE.getName(), aab.a);
        a.put(java/lang/Double.getName(), aaa.a);
        a.put(Double.TYPE.getName(), aaa.a);
        obj = new aaf();
        a.put(java/math/BigInteger.getName(), obj);
        a.put(java/math/BigDecimal.getName(), obj);
        a.put(java/util/Calendar.getName(), aba.a);
        obj = abd.a;
        a.put(java/util/Date.getName(), obj);
        a.put(java/sql/Timestamp.getName(), obj);
        a.put(java/sql/Date.getName(), new aag());
        a.put(java/sql/Time.getName(), new aah());
        for (Iterator iterator = (new acj()).a().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj1 = entry.getValue();
            if (obj1 instanceof ra)
            {
                a.put(((Class)entry.getKey()).getName(), (ra)obj1);
            } else
            if (obj1 instanceof Class)
            {
                obj1 = (Class)obj1;
                b.put(((Class)entry.getKey()).getName(), obj1);
            } else
            {
                throw new IllegalStateException((new StringBuilder()).append("Internal error: unrecognized value of type ").append(entry.getClass().getName()).toString());
            }
        }

        b.put(com/flurry/android/monolithic/sdk/impl/afz.getName(), com/flurry/android/monolithic/sdk/impl/acz);
        c = new HashMap();
        c.put([Z.getName(), new abx());
        c.put([B.getName(), new aby());
        c.put([C.getName(), new abz());
        c.put([S.getName(), new ace());
        c.put([I.getName(), new acc());
        c.put([J.getName(), new acd());
        c.put([F.getName(), new acb());
        c.put([D.getName(), new aca());
    }
}
