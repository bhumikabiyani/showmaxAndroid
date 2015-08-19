// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.ref.ReferenceQueue;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nz, ny

public class nx
    implements Map
{

    private final ReferenceQueue a = new ReferenceQueue();
    private Map b;

    public nx()
    {
        b = new HashMap();
    }

    static ReferenceQueue a(nx nx1)
    {
        return nx1.a;
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = a.poll();
_L2:
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (nz)obj;
        b.remove(obj);
        obj = a.poll();
        if (true) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        b.clear();
        a();
    }

    public boolean containsKey(Object obj)
    {
        a();
        return b.containsKey(new nz(this, obj));
    }

    public boolean containsValue(Object obj)
    {
        a();
        return b.containsValue(obj);
    }

    public Set entrySet()
    {
        a();
        HashSet hashset = new HashSet();
        java.util.Map.Entry entry;
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); hashset.add(new ny(this, ((nz)entry.getKey()).get(), entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return Collections.unmodifiableSet(hashset);
    }

    public boolean equals(Object obj)
    {
        return b.equals(((nx)obj).b);
    }

    public Object get(Object obj)
    {
        a();
        return b.get(new nz(this, obj));
    }

    public int hashCode()
    {
        a();
        return b.hashCode();
    }

    public boolean isEmpty()
    {
        a();
        return b.isEmpty();
    }

    public Set keySet()
    {
        a();
        HashSet hashset = new HashSet();
        for (Iterator iterator = b.keySet().iterator(); iterator.hasNext(); hashset.add(((nz)iterator.next()).get())) { }
        return Collections.unmodifiableSet(hashset);
    }

    public Object put(Object obj, Object obj1)
    {
        a();
        return b.put(new nz(this, obj), obj1);
    }

    public void putAll(Map map)
    {
        throw new UnsupportedOperationException();
    }

    public Object remove(Object obj)
    {
        a();
        return b.remove(new nz(this, obj));
    }

    public int size()
    {
        a();
        return b.size();
    }

    public Collection values()
    {
        a();
        return b.values();
    }
}
