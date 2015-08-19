// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cd, ja

public final class ce
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ce.getSimpleName();
    private static ce b;
    private HashMap c;

    ce()
    {
        c = new HashMap();
    }

    public static ce a()
    {
        if (b == null)
        {
            b = new ce();
        }
        return b;
    }

    public cd a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (!c.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_29;
        }
        s = (cd)c.get(s);
        return s;
        this;
        JVM INSTR monitorexit ;
        return null;
        s;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return null;
    }

    public void a(cd cd1)
    {
        if (cd1.b().length() == 0)
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        if (!c.containsKey(cd1.b()))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        c.remove(cd1.b());
        if (cd1.e() != -1)
        {
            c.put(cd1.b(), cd1);
        }
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        cd1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw cd1;
        }
        // Misplaced declaration of an exception variable
        catch (cd cd1)
        {
            cd1.printStackTrace();
        }
        return;
        c.put(cd1.b(), cd1);
          goto _L1
    }

    public boolean a(long l)
    {
        return l <= System.currentTimeMillis();
    }

    public HashMap b()
    {
        return c;
    }

    public void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (c.containsKey(s))
        {
            c.remove(s);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return;
    }

    public List c()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = new ArrayList();
        for (Iterator iterator = b().values().iterator(); iterator.hasNext(); ((List) (obj)).add(((cd)iterator.next()).a())) { }
        break MISSING_BLOCK_LABEL_66;
        obj;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        return null;
        this;
        JVM INSTR monitorexit ;
        return ((List) (obj));
    }

    public void d()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = c().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            cd cd1 = (cd)iterator.next();
            if (a(cd1.h()))
            {
                ja.a(3, a, (new StringBuilder()).append("expiring adunit freq cap for idHash: ").append(cd1.b()).append(" adunit exp: ").append(cd1.h()).append(" device epoch").append(System.currentTimeMillis()).toString());
                b(cd1.b());
            }
        } while (true);
        break MISSING_BLOCK_LABEL_116;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        return;
        this;
        JVM INSTR monitorexit ;
    }

}
