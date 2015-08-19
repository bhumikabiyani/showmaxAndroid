// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lw, ky, kq, nx, 
//            mh, ly, ji, lx, 
//            ko, ks, ld, kz, 
//            kj, jg, ku, js, 
//            nw

public class kx
    implements lw
{

    private static final ThreadLocal f = new ky();
    private final kq a;
    private ji b;
    private ji c;
    private mh d;
    private final Thread e;

    public kx()
    {
        this(null, null, kq.a());
    }

    protected kx(ji ji1, ji ji2, kq kq1)
    {
        d = null;
        b = ji1;
        c = ji2;
        a = kq1;
        e = Thread.currentThread();
    }

    public kq a()
    {
        return a;
    }

    protected final mh a(ji ji1, ji ji2)
        throws IOException
    {
        Thread thread = Thread.currentThread();
        if (thread == e && d != null)
        {
            ji1 = d;
        } else
        {
            Object obj = (Map)((Map)f.get()).get(ji1);
            if (obj == null)
            {
                obj = new nx();
                ((Map)f.get()).put(ji1, obj);
            }
            mh mh2 = (mh)((Map) (obj)).get(ji2);
            mh mh1 = mh2;
            if (mh2 == null)
            {
                mh1 = ly.a().a(ji.a(ji1, ji2), ji2, null);
                ((Map) (obj)).put(ji2, mh1);
            }
            ji1 = mh1;
            if (thread == e)
            {
                d = mh1;
                return mh1;
            }
        }
        return ji1;
    }

    protected Object a(ji ji1, lx lx1)
        throws IOException
    {
        return a((String)ji1.c().get(lx1.k()), ji1);
    }

    protected Object a(Object obj)
    {
        if (obj instanceof ko)
        {
            return ((ko)obj).b();
        } else
        {
            return null;
        }
    }

    protected Object a(Object obj, int i)
    {
        if (obj instanceof Map)
        {
            ((Map)obj).clear();
            return obj;
        } else
        {
            return new HashMap(i);
        }
    }

    protected Object a(Object obj, int i, ji ji1)
    {
        if (obj instanceof Collection)
        {
            ((Collection)obj).clear();
            return obj;
        } else
        {
            return new ks(i, ji1);
        }
    }

    protected Object a(Object obj, ji ji1, lx lx1)
        throws IOException
    {
        obj = (ld)a.c(obj, ji1);
        lx1.b(((ld) (obj)).b(), 0, ji1.l());
        return obj;
    }

    protected Object a(Object obj, ji ji1, mh mh1)
        throws IOException
    {
        switch (kz.a[ji1.a().ordinal()])
        {
        default:
            throw new jg((new StringBuilder()).append("Unknown type: ").append(ji1).toString());

        case 1: // '\001'
            return b(obj, ji1, mh1);

        case 2: // '\002'
            return a(ji1, ((lx) (mh1)));

        case 3: // '\003'
            return c(obj, ji1, mh1);

        case 4: // '\004'
            return d(obj, ji1, mh1);

        case 5: // '\005'
            return a(obj, (ji)ji1.k().get(mh1.s()), mh1);

        case 6: // '\006'
            return a(obj, ji1, ((lx) (mh1)));

        case 7: // '\007'
            return b(obj, ji1, mh1);

        case 8: // '\b'
            return c(obj, mh1);

        case 9: // '\t'
            return c(obj, ji1, mh1);

        case 10: // '\n'
            return Long.valueOf(mh1.e());

        case 11: // '\013'
            return Float.valueOf(mh1.f());

        case 12: // '\f'
            return Double.valueOf(mh1.g());

        case 13: // '\r'
            return Boolean.valueOf(mh1.c());

        case 14: // '\016'
            mh1.b();
            break;
        }
        return null;
    }

    public Object a(Object obj, lx lx1)
        throws IOException
    {
        mh mh1 = a(b, c);
        mh1.a(lx1);
        obj = a(obj, c, mh1);
        mh1.v();
        return obj;
    }

    protected Object a(String s, ji ji1)
    {
        return new ku(ji1, s);
    }

    protected void a(Object obj, long l, Object obj1)
    {
        ((Collection)obj).add(obj1);
    }

    protected void a(Object obj, Object obj1, Object obj2)
    {
        ((Map)obj).put(obj1, obj2);
    }

    protected Object b(Object obj, ji ji1, lx lx1)
        throws IOException
    {
        kq kq1 = a;
        kq1 = a;
        if ("String".equals(ji1.a("avro.java.string")))
        {
            return lx1.h();
        } else
        {
            return b(obj, lx1);
        }
    }

    protected Object b(Object obj, ji ji1, mh mh1)
        throws IOException
    {
        Object obj1 = a.d(obj, ji1);
        Object obj2 = a.a(obj1, ji1);
        js ajs[] = mh1.u();
        int j = ajs.length;
        int i = 0;
        while (i < j) 
        {
            js js1 = ajs[i];
            int k = js1.b();
            String s = js1.a();
            if (obj != null)
            {
                ji1 = ((ji) (a.b(obj1, s, k, obj2)));
            } else
            {
                ji1 = null;
            }
            a.a(obj1, s, k, a(ji1, js1.c(), mh1), obj2);
            i++;
        }
        return obj1;
    }

    protected Object b(Object obj, lx lx1)
        throws IOException
    {
        if (obj instanceof nw)
        {
            obj = (nw)obj;
        } else
        {
            obj = null;
        }
        return lx1.a(((nw) (obj)));
    }

    protected Object c(Object obj, ji ji1, lx lx1)
        throws IOException
    {
        return Integer.valueOf(lx1.d());
    }

    protected Object c(Object obj, ji ji1, mh mh1)
        throws IOException
    {
        ji ji2 = ji1.i();
        long l = mh1.m();
        long l1 = 0L;
        if (l > 0L)
        {
            obj = a(obj, (int)l, ji1);
            long l3;
            do
            {
                for (long l2 = 0L; l2 < l; l2++)
                {
                    a(obj, l1 + l2, a(a(obj), ji2, mh1));
                }

                l1 += l;
                l3 = mh1.n();
                l = l3;
            } while (l3 > 0L);
            return obj;
        } else
        {
            return a(obj, 0, ji1);
        }
    }

    protected Object c(Object obj, lx lx1)
        throws IOException
    {
        if (obj instanceof ByteBuffer)
        {
            obj = (ByteBuffer)obj;
        } else
        {
            obj = null;
        }
        return lx1.a(((ByteBuffer) (obj)));
    }

    protected Object d(Object obj, ji ji1, mh mh1)
        throws IOException
    {
        ji ji2 = ji1.j();
        long l = mh1.p();
        obj = a(obj, (int)l);
        long l1;
        if (l > 0L)
        {
            do
            {
                for (int i = 0; (long)i < l; i++)
                {
                    a(obj, b(null, ji1, mh1), a(null, ji2, mh1));
                }

                l1 = mh1.q();
                l = l1;
            } while (l1 > 0L);
        }
        return obj;
    }

}
