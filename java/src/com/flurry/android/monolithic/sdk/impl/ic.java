// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            id

public class ic
{

    private Map a;
    private Map b;

    ic()
    {
        a = new HashMap();
        b = new HashMap();
    }

    private boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    private void b(String s, Object obj)
    {
        if (b.get(s) != null)
        {
            for (Iterator iterator = ((List)b.get(s)).iterator(); iterator.hasNext(); ((id)iterator.next()).a(s, obj)) { }
        }
    }

    public Object a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = ((String) (a.get(s)));
        this;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public void a(String s, id id1)
    {
        this;
        JVM INSTR monitorenter ;
        if (id1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        List list = (List)b.get(s);
        Object obj;
        obj = list;
        if (list != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        obj = new LinkedList();
        ((List) (obj)).add(id1);
        b.put(s, obj);
        if (true) goto _L1; else goto _L3
_L3:
        s;
        throw s;
    }

    public void a(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = TextUtils.isEmpty(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (a(obj, a.get(s))) goto _L1; else goto _L3
_L3:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        a.remove(s);
_L4:
        b(s, obj);
          goto _L1
        s;
        throw s;
        a.put(s, obj);
          goto _L4
    }

    public boolean b(String s, id id1)
    {
        this;
        JVM INSTR monitorenter ;
        if (id1 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        s = (List)b.get(s);
        if (s == null)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = s.remove(id1);
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }
}
