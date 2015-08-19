// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.util.Pair;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ca

public class bz
{

    private final Map a = new HashMap();
    private List b;

    public bz()
    {
        b = new LinkedList();
    }

    public List a(String s, int i)
    {
        this;
        JVM INSTR monitorenter ;
        s = Pair.create(s, Integer.valueOf(i));
        s = (List)a.get(s);
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = new ArrayList(s);
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public void a(ca ca1)
    {
        this;
        JVM INSTR monitorenter ;
        b.add(ca1);
        this;
        JVM INSTR monitorexit ;
        return;
        ca1;
        throw ca1;
    }

    public void a(String s, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Pair pair;
        List list;
        pair = Pair.create(s, Integer.valueOf(i));
        list = (List)a.get(pair);
        if (list != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (j <= -1) goto _L4; else goto _L3
_L3:
        if (j <= list.size()) goto _L5; else goto _L4
_L4:
        a.remove(pair);
_L8:
        c(s, i);
        if (true) goto _L1; else goto _L6
_L6:
        s;
        throw s;
_L5:
        if (j <= 0) goto _L8; else goto _L7
_L7:
        list.subList(0, j).clear();
        a.put(pair, list);
          goto _L8
    }

    public void a(String s, int i, AdUnit adunit)
    {
        this;
        JVM INSTR monitorenter ;
        if (adunit != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        List list;
        Pair pair;
        pair = Pair.create(s, Integer.valueOf(i));
        list = (List)a.get(pair);
        Object obj;
        obj = list;
        if (list != null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        obj = new ArrayList();
        ((List) (obj)).add(adunit);
        a.put(pair, obj);
        c(s, i);
        if (true) goto _L1; else goto _L3
_L3:
        s;
        throw s;
    }

    public void a(String s, int i, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = Pair.create(s, Integer.valueOf(i));
        obj = (List)a.get(obj);
        if (obj != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            if (((AdUnit)((Iterator) (obj)).next()).f().toString().equals(s1))
            {
                ((Iterator) (obj)).remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_93;
        s;
        throw s;
        c(s, i);
          goto _L1
    }

    public int b(String s, int i)
    {
        this;
        JVM INSTR monitorenter ;
        s = Pair.create(s, Integer.valueOf(i));
        s = (List)a.get(s);
        if (s != null) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        this;
        JVM INSTR monitorexit ;
        return i;
_L2:
        i = s.size();
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public boolean b(String s, int i, AdUnit adunit)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = Pair.create(s, Integer.valueOf(i));
        obj = (List)a.get(obj);
        if (obj != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        boolean flag1 = ((List) (obj)).remove(adunit);
        flag = flag1;
        if (!flag1)
        {
            continue; /* Loop/switch isn't completed */
        }
        c(s, i);
        flag = flag1;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    void c(String s, int i)
    {
        Object obj = Pair.create(s, Integer.valueOf(i));
        obj = (List)a.get(obj);
        Iterator iterator;
        int j;
        if (obj == null)
        {
            j = 0;
        } else
        {
            j = ((List) (obj)).size();
        }
        iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ca ca1 = (ca)iterator.next();
            if (ca1 != null)
            {
                ca1.a(s, i, j, ((List) (obj)));
            }
        } while (true);
    }
}
