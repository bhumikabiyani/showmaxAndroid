// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            js, ji, kj, jg, 
//            ou, md, ml, lr, 
//            ly, kq, lw, ll

public abstract class kn
{

    private static final ConcurrentMap a = new ConcurrentHashMap();
    private static final js b[] = new js[0];
    private final ji c;
    private final js d[];
    private final boolean e[];
    private final kq f;
    private lr g;
    private ll h;

    protected kn(ji ji1, kq kq1)
    {
        g = null;
        h = null;
        c = ji1;
        f = kq1;
        d = (js[])(js[])ji1.b().toArray(b);
        e = new boolean[d.length];
    }

    protected static boolean b(js js1, Object obj)
    {
label0:
        {
            if (obj != null)
            {
                return true;
            }
            js1 = js1.c();
            obj = js1.a();
            if (obj == kj.n)
            {
                return true;
            }
            if (obj != kj.e)
            {
                break label0;
            }
            js1 = js1.k().iterator();
            do
            {
                if (!js1.hasNext())
                {
                    break label0;
                }
            } while (((ji)js1.next()).a() != kj.n);
            return true;
        }
        return false;
    }

    protected Object a(js js1)
        throws IOException
    {
        ou ou1 = js1.e();
        if (ou1 == null)
        {
            throw new jg((new StringBuilder()).append("Field ").append(js1).append(" not set and has no default value").toString());
        }
        if (ou1.g() && (js1.c().a() == kj.n || js1.c().a() == kj.e && ((ji)js1.c().k().get(0)).a() == kj.n))
        {
            return null;
        }
        Object obj = (ConcurrentMap)a.get(c.g());
        ConcurrentMap concurrentmap = ((ConcurrentMap) (obj));
        if (obj == null)
        {
            a.putIfAbsent(c.g(), new ConcurrentHashMap(d.length));
            concurrentmap = (ConcurrentMap)a.get(c.g());
        }
        Object obj1 = concurrentmap.get(Integer.valueOf(js1.b()));
        obj = obj1;
        if (obj1 == null)
        {
            obj = new ByteArrayOutputStream();
            g = md.a().a(((java.io.OutputStream) (obj)), g);
            ml.a(g, js1.c(), ou1);
            g.flush();
            h = ly.a().a(((ByteArrayOutputStream) (obj)).toByteArray(), h);
            obj = f.a(js1.c()).a(null, h);
            concurrentmap.putIfAbsent(Integer.valueOf(js1.b()), obj);
        }
        return f.b(js1.c(), obj);
    }

    protected void a(js js1, Object obj)
    {
        while (b(js1, obj) || js1.e() != null) 
        {
            return;
        }
        throw new jg((new StringBuilder()).append("Field ").append(js1).append(" does not accept null values").toString());
    }

    protected final js[] b()
    {
        return d;
    }

    protected final boolean[] c()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (kn)obj;
        if (!Arrays.equals(e, ((kn) (obj)).e))
        {
            return false;
        }
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((kn) (obj)).c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.equals(((kn) (obj)).c)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        int j = Arrays.hashCode(e);
        int i;
        if (c == null)
        {
            i = 0;
        } else
        {
            i = c.hashCode();
        }
        return i + (j + 31) * 31;
    }

}
