// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cb, bz, je, ja, 
//            cd, ce

public class ad
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ad.getSimpleName();
    private bz b;
    private cb c;
    private int d;
    private final Map e = new HashMap();

    public ad()
    {
        d = 0;
        c = new cb();
        b = new bz();
        b.a(c);
    }

    public List a(String s, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1;
        int k;
        k = je.f();
        obj1 = b.a(s, k);
        Object obj;
        obj = obj1;
        i = k;
        if (!b(((List) (obj1))))
        {
            break MISSING_BLOCK_LABEL_136;
        }
        ja.a(3, a, (new StringBuilder()).append("no valid ad units in cache for current orientation for ").append(s).toString());
        if (k == 1)
        {
            i = 2;
        } else
        {
            i = 1;
        }
        obj = b.a(s, i);
        if (b(((List) (obj))) || !a((AdUnit)((List) (obj)).get(0)))
        {
            ja.a(3, a, (new StringBuilder()).append("no valid ad units in cache for other orientation for ").append(s).toString());
        }
        obj1 = new ArrayList();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext() || ((List) (obj1)).size() > j)
            {
                break;
            }
            AdUnit adunit = (AdUnit)((Iterator) (obj)).next();
            if (je.a(adunit.c().longValue()) && adunit.e().intValue() == 1 && adunit.d().size() > 0)
            {
                ((List) (obj1)).add(adunit);
                boolean flag = b.b(s, i, adunit);
                ja.a(3, a, (new StringBuilder()).append("Ad unit was removed = ").append(flag).toString());
            }
        } while (true);
        break MISSING_BLOCK_LABEL_294;
        s;
        throw s;
        this;
        JVM INSTR monitorexit ;
        return ((List) (obj1));
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        if (s.length() > 0)
        {
            int i = je.f();
            d = b.b(s, i);
            e.put(s, Integer.valueOf(d));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void a(String s, int i)
    {
        this;
        JVM INSTR monitorenter ;
        int j = je.f();
        b.a(s, j, i);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        int i = je.f();
        b.a(s, i, s1);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void a(List list)
    {
        this;
        JVM INSTR monitorenter ;
        int i = je.f();
        ja.a(3, a, (new StringBuilder()).append("putting ").append(list.size()).append(" orientation: ").append(i).toString());
        AdUnit adunit;
        String s;
        for (list = list.iterator(); list.hasNext(); b.a(s, i, adunit))
        {
            adunit = (AdUnit)list.next();
            if (adunit.g().length() > 0)
            {
                cd cd1 = new cd(adunit.g().toString(), adunit.h().longValue(), adunit.l().longValue(), adunit.i().intValue(), adunit.j().intValue(), adunit.k().intValue());
                ce.a().a(cd1);
            }
            s = adunit.b().toString();
        }

        break MISSING_BLOCK_LABEL_170;
        list;
        throw list;
        this;
        JVM INSTR monitorexit ;
    }

    public boolean a(AdUnit adunit)
    {
        return ((AdFrame)adunit.d().get(0)).e().e().equals("takeover");
    }

    public int b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = (Integer)e.get(s);
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.intValue();
_L4:
        this;
        JVM INSTR monitorexit ;
        return i;
        s;
        throw s;
_L2:
        i = 0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean b(List list)
    {
        return list == null || list.size() == 0 || ((AdUnit)list.get(0)).d().size() == 0 || ((AdFrame)((AdUnit)list.get(0)).d().get(0)).e() == null;
    }

    public AdUnit c(String s)
    {
        int i = 1;
        this;
        JVM INSTR monitorenter ;
        List list;
        int j;
        j = je.f();
        list = b.a(s, j);
        if (!b(list)) goto _L2; else goto _L1
_L1:
        ja.a(3, a, (new StringBuilder()).append("no valid ad units in cache for current orientation for ").append(s).toString());
        if (j == 1)
        {
            i = 2;
        }
        Object obj = b.a(s, i);
        if (b(((List) (obj)))) goto _L4; else goto _L3
_L3:
        list = ((List) (obj));
        if (a((AdUnit)((List) (obj)).get(0))) goto _L5; else goto _L4
_L4:
        ja.a(3, a, (new StringBuilder()).append("no valid ad units in cache for other orientation for ").append(s).toString());
        s = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        i = j;
_L5:
        if (b(list))
        {
            break MISSING_BLOCK_LABEL_276;
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_276;
            }
            obj = (AdUnit)iterator.next();
        } while (!je.a(((AdUnit) (obj)).c().longValue()) || ((AdUnit) (obj)).d().size() <= 0);
        boolean flag = b.b(s, i, ((AdUnit) (obj)));
        ja.a(3, a, (new StringBuilder()).append("found valid ad unit for ").append(s).toString());
        ja.a(3, a, (new StringBuilder()).append("Ad unit was removed = = ").append(flag).toString());
        s = ((String) (obj));
        continue; /* Loop/switch isn't completed */
        s;
        throw s;
        ja.a(3, a, (new StringBuilder()).append("no valid ad units for ").append(s).toString());
        c.a(s, list);
        s = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean d(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i = je.f();
        s = b.a(s, i);
        if (b(s)) goto _L2; else goto _L1
_L1:
        s = s.iterator();
_L5:
        if (!s.hasNext()) goto _L2; else goto _L3
_L3:
        boolean flag = je.a(((AdUnit)s.next()).c().longValue());
        if (!flag) goto _L5; else goto _L4
_L4:
        flag = true;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L7; else goto _L6
_L6:
        s;
        throw s;
    }

    public int e(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        i = je.f();
        i = b.b(s, i);
        this;
        JVM INSTR monitorexit ;
        return i;
        s;
        throw s;
    }

}
