// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zd, zj, qw, rq, 
//            xq, afm, rt, rv, 
//            zk, zh, rr, xl, 
//            zc, abl, py, yh, 
//            yj, xk, qd, zp, 
//            adz, zf, zm, adp, 
//            qe, pz, xj, qc, 
//            ra, rx, adj

public class zi extends zd
{

    public static final zi e = new zi(null);
    protected final rt f;

    protected zi(rt rt1)
    {
        Object obj = rt1;
        if (rt1 == null)
        {
            obj = new zj();
        }
        f = ((rt) (obj));
    }

    public ra a(rq rq1, afm afm1, qc qc)
        throws qw
    {
        xq xq1 = (xq)rq1.b(afm1);
        ra ra = a(rq1, ((xg) (xq1.c())), qc);
        if (ra != null)
        {
            afm1 = ra;
        } else
        {
            afm afm2 = a(rq1, ((xg) (xq1.c())), afm1);
            boolean flag;
            if (afm2 != afm1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (afm1.f())
            {
                return b(rq1, afm2, xq1, qc, flag);
            }
            for (afm1 = f.c().iterator(); afm1.hasNext();)
            {
                ra ra1 = ((rv)afm1.next()).a(rq1, afm2, xq1, qc);
                if (ra1 != null)
                {
                    return ra1;
                }
            }

            ra ra2 = a(afm2, rq1, xq1, qc, flag);
            afm1 = ra2;
            if (ra2 == null)
            {
                ra ra3 = b(afm2, rq1, xq1, qc, flag);
                afm1 = ra3;
                if (ra3 == null)
                {
                    ra ra4 = a(rq1, afm2, xq1, qc);
                    afm1 = ra4;
                    if (ra4 == null)
                    {
                        return a(rq1, afm2, xq1, qc, flag);
                    }
                }
            }
        }
        return afm1;
    }

    public ra a(rq rq1, afm afm1, xq xq1, qc qc)
        throws qw
    {
        if (b(afm1.p())) goto _L2; else goto _L1
_L1:
        qc = null;
_L4:
        return qc;
_L2:
label0:
        {
            afm1 = a(rq1, xq1, qc);
            if (!f.b())
            {
                break label0;
            }
            Iterator iterator = f.e().iterator();
            do
            {
                qc = afm1;
                if (!iterator.hasNext())
                {
                    break;
                }
                afm1 = ((zk)iterator.next()).a(rq1, xq1, afm1);
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return afm1;
    }

    protected ra a(rq rq1, xq xq1, qc qc)
        throws qw
    {
        if (xq1.b() == java/lang/Object)
        {
            throw new IllegalArgumentException("Can not create bean serializer for Object.class");
        }
        zh zh1 = a(xq1);
        Object obj1 = c(rq1, xq1);
        Object obj = obj1;
        if (obj1 == null)
        {
            obj = new ArrayList();
        }
        if (f.b())
        {
            Iterator iterator1 = f.e().iterator();
            do
            {
                obj1 = obj;
                if (!iterator1.hasNext())
                {
                    break;
                }
                obj = ((zk)iterator1.next()).a(rq1, xq1, ((List) (obj)));
            } while (true);
        } else
        {
            obj1 = obj;
        }
        obj = b(rq1, xq1, a(rq1, xq1, ((List) (obj1))));
        if (f.b())
        {
            Iterator iterator2 = f.e().iterator();
            do
            {
                obj1 = obj;
                if (!iterator2.hasNext())
                {
                    break;
                }
                obj = ((zk)iterator2.next()).b(rq1, xq1, ((List) (obj)));
            } while (true);
        } else
        {
            obj1 = obj;
        }
        zh1.a(((List) (obj1)));
        zh1.a(b(rq1, xq1));
        obj = xq1.p();
        if (obj != null)
        {
            if (rq1.a(rr.e))
            {
                ((xl) (obj)).k();
            }
            afm afm1 = ((xl) (obj)).a(xq1.j());
            zh1.a(new zc(((xl) (obj)), abl.a(null, afm1, rq1.a(rr.h), b(rq1, afm1.g(), qc), qc, null, null)));
        }
        a(rq1, zh1);
        if (f.b())
        {
            Iterator iterator = f.e().iterator();
            qc = zh1;
            do
            {
                obj = qc;
                if (!iterator.hasNext())
                {
                    break;
                }
                qc = ((zk)iterator.next()).a(rq1, xq1, qc);
            } while (true);
        } else
        {
            obj = zh1;
        }
        qc = ((zh) (obj)).b();
        rq1 = qc;
        if (qc == null)
        {
            rq1 = qc;
            if (xq1.h())
            {
                rq1 = ((zh) (obj)).c();
            }
        }
        return rq1;
    }

    public rx a(afm afm1, rq rq1, xk xk1, qc qc)
        throws qw
    {
        py py1 = rq1.a();
        yj yj1 = py1.a(rq1, xk1, afm1);
        if (yj1 == null)
        {
            return b(rq1, afm1, qc);
        } else
        {
            return yj1.a(rq1, afm1, rq1.l().a(xk1, rq1, py1), qc);
        }
    }

    protected zf a(rq rq1, adj adj, zp zp1, boolean flag, String s, xk xk1)
        throws qw
    {
        if (rq1.a(rr.e))
        {
            xk1.k();
        }
        afm afm1 = xk1.a(adj);
        qd qd1 = new qd(s, afm1, zp1.a(), xk1);
        ra ra = a(rq1, ((xg) (xk1)), ((qc) (qd1)));
        adj = null;
        if (adz.e(afm1.p()))
        {
            adj = b(afm1, rq1, xk1, qd1);
        }
        adj = zp1.a(s, afm1, ra, a(afm1, rq1, xk1, ((qc) (qd1))), adj, xk1, flag);
        adj.a(rq1.a().g(xk1));
        return adj;
    }

    protected zf a(zf zf1, Class aclass[])
    {
        return zm.a(zf1, aclass);
    }

    protected zh a(xq xq1)
    {
        return new zh(xq1);
    }

    protected zp a(rq rq1, xq xq1)
    {
        return new zp(rq1, xq1);
    }

    protected Iterable a()
    {
        return f.c();
    }

    protected List a(rq rq1, xq xq1, List list)
    {
        rq1 = rq1.a().c(xq1.c());
        if (rq1 != null && rq1.length > 0)
        {
            rq1 = adp.a(rq1);
            xq1 = list.iterator();
            do
            {
                if (!xq1.hasNext())
                {
                    break;
                }
                if (rq1.contains(((zf)xq1.next()).d()))
                {
                    xq1.remove();
                }
            } while (true);
        }
        return list;
    }

    protected void a(rq rq1, zh zh1)
    {
        List list;
        int i;
        int k;
        int l;
        boolean flag;
        list = zh1.a();
        flag = rq1.a(rr.i);
        l = list.size();
        rq1 = new zf[l];
        k = 0;
        i = 0;
_L2:
        zf zf1;
        Class aclass[];
        int j;
        if (k >= l)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        zf1 = (zf)list.get(k);
        aclass = zf1.h();
        if (aclass != null)
        {
            break; /* Loop/switch isn't completed */
        }
        j = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        rq1[k] = zf1;
_L3:
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        j = i + 1;
        rq1[k] = a(zf1, aclass);
        i = j;
          goto _L3
        if (flag && i == 0)
        {
            return;
        } else
        {
            zh1.a(rq1);
            return;
        }
    }

    public rx b(afm afm1, rq rq1, xk xk1, qc qc)
        throws qw
    {
        afm afm2 = afm1.g();
        py py1 = rq1.a();
        afm1 = py1.b(rq1, xk1, afm1);
        if (afm1 == null)
        {
            return b(rq1, afm2, qc);
        } else
        {
            return afm1.a(rq1, afm2, rq1.l().a(xk1, rq1, py1), qc);
        }
    }

    protected Object b(rq rq1, xq xq1)
    {
        return rq1.a().f(xq1.c());
    }

    protected List b(rq rq1, xq xq1, List list)
    {
        return list;
    }

    protected boolean b(Class class1)
    {
        return adz.a(class1) == null && !adz.c(class1);
    }

    public ra c(rq rq1, afm afm1, qc qc)
    {
        ra ra;
        ra ra1;
        ra = null;
        ra1 = null;
        if (f.a()) goto _L2; else goto _L1
_L1:
        ra = ra1;
_L4:
        return ra;
_L2:
        xq xq1 = (xq)rq1.c(afm1.p());
        Iterator iterator = f.d().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            ra1 = ((rv)iterator.next()).a(rq1, afm1, xq1, qc);
            ra = ra1;
        } while (ra1 == null);
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return ra1;
    }

    protected List c(rq rq1, xq xq1)
        throws qw
    {
        Object obj = xq1.d();
        py py1 = rq1.a();
        c(rq1, xq1, ((List) (obj)));
        if (rq1.a(rr.f))
        {
            d(rq1, xq1, ((List) (obj)));
        }
        if (((List) (obj)).isEmpty())
        {
            return null;
        }
        boolean flag = a(rq1, xq1, ((rx) (null)), null);
        zp zp1 = a(rq1, xq1);
        ArrayList arraylist = new ArrayList(((List) (obj)).size());
        xq1 = xq1.j();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            Object obj1 = (qe)((Iterator) (obj)).next();
            xk xk1 = ((qe) (obj1)).j();
            pz pz1 = py1.a(xk1);
            if (pz1 == null || !pz1.c())
            {
                obj1 = ((qe) (obj1)).a();
                if (xk1 instanceof xl)
                {
                    arraylist.add(a(rq1, xq1, zp1, flag, ((String) (obj1)), (xl)xk1));
                } else
                {
                    arraylist.add(a(rq1, xq1, zp1, flag, ((String) (obj1)), (xj)xk1));
                }
            }
        } while (true);
        return arraylist;
    }

    protected void c(rq rq1, xq xq1, List list)
    {
        py py1 = rq1.a();
        HashMap hashmap = new HashMap();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xq1 = ((qe)iterator.next()).j();
            if (xq1 == null)
            {
                iterator.remove();
            } else
            {
                Class class1 = xq1.d();
                list = (Boolean)hashmap.get(class1);
                xq1 = list;
                if (list == null)
                {
                    list = py1.e(((xq)rq1.c(class1)).c());
                    xq1 = list;
                    if (list == null)
                    {
                        xq1 = Boolean.FALSE;
                    }
                    hashmap.put(class1, xq1);
                }
                if (xq1.booleanValue())
                {
                    iterator.remove();
                }
            }
        } while (true);
    }

    protected void d(rq rq1, xq xq1, List list)
    {
        rq1 = list.iterator();
        do
        {
            if (!rq1.hasNext())
            {
                break;
            }
            if (!((qe)rq1.next()).f())
            {
                rq1.remove();
            }
        } while (true);
    }

}
