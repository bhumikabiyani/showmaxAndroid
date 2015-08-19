// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Timer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ft, ha, fq, hb, 
//            fz, hy, ja, hc

public class gz
{

    public long a;
    protected HashMap b;
    private String c;
    private String d;
    private boolean e;

    gz(String s)
    {
        c = null;
        d = null;
        e = false;
        a = 30000L;
        b = new HashMap();
        c = s;
        d = null;
    }

    private long a(int i)
    {
        if (i == 0)
        {
            return 0L;
        } else
        {
            return a;
        }
    }

    private void a(String s, long l)
    {
        ft ft1;
        if (!TextUtils.isEmpty(d))
        {
            break MISSING_BLOCK_LABEL_43;
        }
        ft1 = new ft();
        ft1.b(c);
        ft1.a(new ha(this, s, l));
        return;
        s;
        s.printStackTrace();
        return;
    }

    private boolean a(fq fq1, String s)
    {
        while (fq1 == null || fq1.a() || !fq1.b().equals("invalid user session")) 
        {
            return true;
        }
        if (b.containsKey(s))
        {
            for (fq1 = ((hb)b.get(s)).c().iterator(); fq1.hasNext(); ((fz)fq1.next()).a(new hy(405, "Session not valid, user has to relogin!"))) { }
        }
        return false;
    }

    static boolean a(gz gz1, fq fq1, String s)
    {
        return gz1.a(fq1, s);
    }

    private void c(String s)
    {
        if (((hb)b.get(s)).a == null)
        {
            return;
        }
        hb hb1 = (hb)b.get(s);
        if (hb1 == null)
        {
            ja.a(6, "ObserverItem", "stopTimerForKey ERROR, info == null");
            return;
        }
        hb1.b();
        if (hb1.b() != null)
        {
            hb1.b().cancel();
            hb1.a(null);
        }
        b.put(s, hb1);
    }

    private void d(String s)
    {
        a(s, Long.valueOf(a(0)));
    }

    private void e()
    {
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); d((String)((java.util.Map.Entry)iterator.next()).getKey())) { }
    }

    private void f()
    {
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); c((String)((java.util.Map.Entry)iterator.next()).getKey())) { }
    }

    public int a()
    {
        return b.size();
    }

    protected void a(String s, fz fz1)
    {
        if (!b.containsKey(s)) goto _L2; else goto _L1
_L1:
        hb hb1 = (hb)b.get(s);
        if (hb1 != null) goto _L4; else goto _L3
_L3:
        ja.a(6, "ObserverItem", "addObserverForKey ERROR, info == null");
_L9:
        return;
_L4:
        hb1.c().add(fz1);
        b.put(s, hb1);
_L7:
        if (e)
        {
            d(s);
            return;
        }
          goto _L5
_L2:
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(fz1);
        b.put(s, new hb(this, linkedlist));
        if (true) goto _L7; else goto _L6
_L6:
_L5:
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected void a(String s, Long long1)
    {
        c(s);
        if (!e)
        {
            return;
        }
        hb hb1 = (hb)b.get(s);
        if (hb1 == null)
        {
            ja.a(6, "ObserverItem", "scheduleTimerForKey ERROR, info == null");
            return;
        } else
        {
            hb1.a = new Timer();
            hc hc1 = new hc(this, s);
            ja.a(4, "ObserverItem", "schedule");
            hb1.a.schedule(hc1, long1.longValue());
            b.put(s, hb1);
            return;
        }
    }

    public void a(String s, String s1)
    {
        if (b.containsKey(s))
        {
            for (Iterator iterator = ((hb)b.get(s)).c().iterator(); iterator.hasNext(); ((fz)iterator.next()).a(s, s1)) { }
        }
    }

    public boolean a(fz fz1)
    {
        Iterator iterator = b.entrySet().iterator();
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            List list = ((hb)((java.util.Map.Entry)iterator.next()).getValue()).c();
            if (list.contains(fz1))
            {
                list.remove(fz1);
                if (list.size() == 0)
                {
                    iterator.remove();
                }
                flag = true;
            }
        } while (true);
        return flag;
    }

    protected boolean a(String s)
    {
        if (!b.containsKey(s))
        {
            return false;
        } else
        {
            c(s);
            b.remove(s);
            return true;
        }
    }

    public void b()
    {
        e = true;
        e();
    }

    protected void b(String s)
    {
        hb hb1 = (hb)b.get(s);
        if (hb1 == null)
        {
            ja.a(6, "ObserverItem", "addObserverForKey ERROR, info == null");
            return;
        } else
        {
            hb1.a();
            long l = a(hb1.d());
            b.put(s, hb1);
            a(s, l);
            return;
        }
    }

    void c()
    {
        if (e)
        {
            e();
        }
    }

    void d()
    {
        f();
    }
}
