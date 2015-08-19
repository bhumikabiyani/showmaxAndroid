// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jh, kq, lb, ji, 
//            kj, mc, js, ld

public class la
{

    private final kq a;
    private ji b;

    protected la(ji ji1, kq kq1)
    {
        this(kq1);
        a(ji1);
    }

    protected la(kq kq1)
    {
        a = kq1;
    }

    private void b(ji ji1, Object obj)
    {
        throw new jh((new StringBuilder()).append("Not a ").append(ji1).append(": ").append(obj).toString());
    }

    protected int a(ji ji1, Object obj)
    {
        return a.a(ji1, obj);
    }

    protected long a(Object obj)
    {
        return (long)((Collection)obj).size();
    }

    protected NullPointerException a(NullPointerException nullpointerexception, String s)
    {
        s = new NullPointerException((new StringBuilder()).append(nullpointerexception.getMessage()).append(s).toString());
        if (nullpointerexception.getCause() != null)
        {
            nullpointerexception = nullpointerexception.getCause();
        }
        s.initCause(nullpointerexception);
        return s;
    }

    public void a(ji ji1)
    {
        b = ji1;
    }

    protected void a(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        lb.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 1 14: default 271
    //                   1 87
    //                   2 124
    //                   3 132
    //                   4 140
    //                   5 148
    //                   6 183
    //                   7 191
    //                   8 199
    //                   9 206
    //                   10 218
    //                   11 230
    //                   12 242
    //                   13 254
    //                   14 266;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
        b(ji1, obj);
        return;
_L2:
        try
        {
            b(ji1, obj, mc1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw a(((NullPointerException) (obj)), (new StringBuilder()).append(" of ").append(ji1.g()).toString());
        }
_L3:
        c(ji1, obj, mc1);
        return;
_L4:
        d(ji1, obj, mc1);
        return;
_L5:
        e(ji1, obj, mc1);
        return;
_L6:
        int i = a(ji1, obj);
        mc1.b(i);
        a((ji)ji1.k().get(i), obj, mc1);
        return;
_L7:
        g(ji1, obj, mc1);
        return;
_L8:
        f(ji1, obj, mc1);
        return;
_L9:
        c(obj, mc1);
        return;
_L10:
        mc1.c(((Number)obj).intValue());
        return;
_L11:
        mc1.b(((Long)obj).longValue());
        return;
_L12:
        mc1.a(((Float)obj).floatValue());
        return;
_L13:
        mc1.a(((Double)obj).doubleValue());
        return;
_L14:
        mc1.a(((Boolean)obj).booleanValue());
        return;
_L15:
        mc1.a();
        return;
    }

    public void a(Object obj, mc mc1)
        throws IOException
    {
        a(b, obj, mc1);
    }

    protected Iterator b(Object obj)
    {
        return ((Collection)obj).iterator();
    }

    protected void b(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        Object obj1 = a.a(obj, ji1);
        for (Iterator iterator = ji1.b().iterator(); iterator.hasNext();)
        {
            ji1 = (js)iterator.next();
            Object obj2 = a.b(obj, ji1.a(), ji1.b(), obj1);
            try
            {
                a(ji1.c(), obj2, mc1);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw a(((NullPointerException) (obj)), (new StringBuilder()).append(" in field ").append(ji1.a()).toString());
            }
        }

    }

    protected void b(Object obj, mc mc1)
        throws IOException
    {
        mc1.a((CharSequence)obj);
    }

    protected int c(Object obj)
    {
        return ((Map)obj).size();
    }

    protected void c(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        mc1.a(ji1.c(obj.toString()));
    }

    protected void c(Object obj, mc mc1)
        throws IOException
    {
        mc1.a((ByteBuffer)obj);
    }

    protected Iterable d(Object obj)
    {
        return ((Map)obj).entrySet();
    }

    protected void d(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        ji1 = ji1.i();
        long l = a(obj);
        mc1.b();
        mc1.a(l);
        for (obj = b(obj); ((Iterator) (obj)).hasNext(); a(ji1, ((Iterator) (obj)).next(), mc1))
        {
            mc1.c();
        }

        mc1.d();
    }

    protected void e(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        ji1 = ji1.j();
        int i = c(obj);
        mc1.e();
        mc1.a(i);
        java.util.Map.Entry entry;
        for (obj = d(obj).iterator(); ((Iterator) (obj)).hasNext(); a(ji1, entry.getValue(), mc1))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj)).next();
            mc1.c();
            b(entry.getKey(), mc1);
        }

        mc1.f();
    }

    protected void f(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        b(obj, mc1);
    }

    protected void g(ji ji1, Object obj, mc mc1)
        throws IOException
    {
        mc1.b(((ld)obj).b(), 0, ji1.l());
    }
}
