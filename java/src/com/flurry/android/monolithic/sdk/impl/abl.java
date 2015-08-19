// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abc, rp, adk, aal, 
//            afm, qw, aap, ru, 
//            oq, oz, or, rr, 
//            ra, rx, qc

public class abl extends abc
    implements rp
{

    protected static final afm a = adk.b();
    protected final qc b;
    protected final HashSet c;
    protected final boolean d;
    protected final afm e;
    protected final afm f;
    protected ra g;
    protected ra h;
    protected final rx i;
    protected aal j;

    protected abl()
    {
        this((HashSet)null, null, null, false, null, null, null, null);
    }

    protected abl(HashSet hashset, afm afm1, afm afm2, boolean flag, rx rx1, ra ra1, ra ra2, 
            qc qc)
    {
        super(java/util/Map, false);
        b = qc;
        c = hashset;
        e = afm1;
        f = afm2;
        d = flag;
        i = rx1;
        g = ra1;
        h = ra2;
        j = aal.a();
    }

    public static abl a(String as[], afm afm1, boolean flag, rx rx1, qc qc, ra ra1, ra ra2)
    {
        HashSet hashset = a(as);
        if (afm1 == null)
        {
            as = a;
            afm1 = as;
        } else
        {
            as = afm1.k();
            afm1 = afm1.g();
        }
        if (!flag)
        {
            if (afm1 != null && afm1.u())
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        return new abl(hashset, as, afm1, flag, rx1, ra1, ra2, qc);
    }

    private static HashSet a(String as[])
    {
        if (as != null && as.length != 0) goto _L2; else goto _L1
_L1:
        HashSet hashset = null;
_L4:
        return hashset;
_L2:
        HashSet hashset1 = new HashSet(as.length);
        int l = as.length;
        int k = 0;
        do
        {
            hashset = hashset1;
            if (k >= l)
            {
                continue;
            }
            hashset1.add(as[k]);
            k++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public abc a(rx rx1)
    {
        rx1 = new abl(c, e, f, d, rx1, g, h, b);
        if (h != null)
        {
            rx1.h = h;
        }
        return rx1;
    }

    protected final ra a(aal aal1, afm afm1, ru ru1)
        throws qw
    {
        afm1 = aal1.a(afm1, ru1, b);
        if (aal1 != ((aap) (afm1)).b)
        {
            j = ((aap) (afm1)).b;
        }
        return ((aap) (afm1)).a;
    }

    protected final ra a(aal aal1, Class class1, ru ru1)
        throws qw
    {
        class1 = aal1.a(class1, ru1, b);
        if (aal1 != ((aap) (class1)).b)
        {
            j = ((aap) (class1)).b;
        }
        return ((aap) (class1)).a;
    }

    public void a(ru ru1)
        throws qw
    {
        if (d && h == null)
        {
            h = ru1.a(f, b);
        }
        if (g == null)
        {
            g = ru1.b(e, b);
        }
    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((Map)obj, or1, ru1);
    }

    public volatile void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oz
    {
        a((Map)obj, or1, ru1, rx1);
    }

    public void a(Map map, or or1, ru ru1)
        throws IOException, oq
    {
        or1.d();
        if (!map.isEmpty())
        {
            if (h != null)
            {
                a(map, or1, ru1, h);
            } else
            {
                b(map, or1, ru1);
            }
        }
        or1.e();
    }

    protected void a(Map map, or or1, ru ru1, ra ra1)
        throws IOException, oq
    {
        ra ra2;
        HashSet hashset;
        rx rx1;
        Object obj;
        Object obj1;
        boolean flag;
        ra2 = g;
        hashset = c;
        rx1 = i;
        Iterator iterator;
        if (!ru1.a(rr.v))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        iterator = map.entrySet().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (java.util.Map.Entry)iterator.next();
        obj = ((java.util.Map.Entry) (obj1)).getValue();
        obj1 = ((java.util.Map.Entry) (obj1)).getKey();
        if (obj1 == null)
        {
            ru1.c().a(null, or1, ru1);
        } else
        {
            if (flag && obj == null || hashset != null && hashset.contains(obj1))
            {
                continue; /* Loop/switch isn't completed */
            }
            ra2.a(obj1, or1, ru1);
        }
        if (obj == null)
        {
            ru1.a(or1);
            continue; /* Loop/switch isn't completed */
        }
        if (rx1 == null)
        {
            try
            {
                ra1.a(obj, or1, ru1);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                a(ru1, ((Throwable) (obj)), map, (new StringBuilder()).append("").append(obj1).toString());
            }
            continue; /* Loop/switch isn't completed */
        }
        ra1.a(obj, or1, ru1, rx1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(Map map, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.b(map, or1);
        if (!map.isEmpty())
        {
            if (h != null)
            {
                a(map, or1, ru1, h);
            } else
            {
                b(map, or1, ru1);
            }
        }
        rx1.e(map, or1);
    }

    public void b(Map map, or or1, ru ru1)
        throws IOException, oq
    {
        if (i == null) goto _L2; else goto _L1
_L1:
        c(map, or1, ru1);
_L4:
        return;
_L2:
        Object obj;
        ra ra1;
        HashSet hashset;
        Object obj3;
        Object obj4;
        boolean flag;
        ra1 = g;
        hashset = c;
        java.util.Map.Entry entry;
        Iterator iterator;
        if (!ru1.a(rr.v))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = j;
        iterator = map.entrySet().iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        entry = (java.util.Map.Entry)iterator.next();
        obj3 = entry.getValue();
        obj4 = entry.getKey();
        if (obj4 != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        ru1.c().a(null, or1, ru1);
_L7:
        if (obj3 == null)
        {
            ru1.a(or1);
        } else
        {
            Object obj2 = obj3.getClass();
            Object obj1 = ((aal) (obj)).a(((Class) (obj2)));
            if (obj1 == null)
            {
                Exception exception;
                if (f.e())
                {
                    obj = a(((aal) (obj)), ru1.a(f, ((Class) (obj2))), ru1);
                } else
                {
                    obj = a(((aal) (obj)), ((Class) (obj2)), ru1);
                }
                obj2 = j;
                obj1 = obj;
                obj = obj2;
            }
            try
            {
                ((ra) (obj1)).a(obj3, or1, ru1);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                a(ru1, exception, map, (new StringBuilder()).append("").append(obj4).toString());
            }
        }
          goto _L5
          goto _L4
        if (flag && obj3 == null || hashset != null && hashset.contains(obj4)) goto _L5; else goto _L6
_L6:
        ra1.a(obj4, or1, ru1);
          goto _L7
    }

    protected void c(Map map, or or1, ru ru1)
        throws IOException, oq
    {
        ra ra1 = g;
        HashSet hashset = c;
        Object obj;
        Class class1;
        Iterator iterator;
        boolean flag;
        if (!ru1.a(rr.v))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        iterator = map.entrySet().iterator();
        class1 = null;
        obj = null;
        do
        {
            if (iterator.hasNext())
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                Object obj1 = entry.getValue();
                Object obj2 = entry.getKey();
                if (obj2 == null)
                {
                    ru1.c().a(null, or1, ru1);
                } else
                {
                    if (flag && obj1 == null || hashset != null && hashset.contains(obj2))
                    {
                        continue;
                    }
                    ra1.a(obj2, or1, ru1);
                }
                if (obj1 == null)
                {
                    ru1.a(or1);
                } else
                {
                    Class class2 = obj1.getClass();
                    Exception exception;
                    if (class2 == class1)
                    {
                        class2 = ((Class) (obj));
                        exception = ((Exception) (obj));
                        obj = class2;
                    } else
                    {
                        exception = ru1.a(class2, b);
                        obj = exception;
                        class1 = class2;
                    }
                    try
                    {
                        exception.a(obj1, or1, ru1, i);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Exception exception)
                    {
                        a(ru1, exception, map, (new StringBuilder()).append("").append(obj2).toString());
                    }
                }
                continue;
            }
            return;
        } while (true);
    }

}
