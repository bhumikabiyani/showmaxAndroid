// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mi, mq, ml, mw, 
//            nc, jh, ng, mo, 
//            nj, ms, lx, mv, 
//            mt, ly, mu, ni, 
//            ji, js

public class mh extends mi
{

    static final boolean b;
    private lx d;

    mh(ji ji, ji ji1, lx lx1)
        throws IOException
    {
        this(a(ji, ji1), lx1);
    }

    private mh(Object obj, lx lx1)
        throws IOException
    {
        super((mq)obj, lx1);
    }

    public static Object a(ji ji, ji ji1)
        throws IOException
    {
        if (ji == null)
        {
            throw new NullPointerException("writer cannot be null!");
        }
        if (ji1 == null)
        {
            throw new NullPointerException("reader cannot be null!");
        } else
        {
            return (new ml()).a(ji, ji1);
        }
    }

    public mq a(mq mq1, mq mq2)
        throws IOException
    {
        if (mq2 instanceof mw)
        {
            if (mq1 == mq.s)
            {
                return mq2;
            } else
            {
                return null;
            }
        }
        if (mq2 instanceof nc)
        {
            mq2 = (nc)mq2;
            if (((nc) (mq2)).B != mq1)
            {
                throw new jh((new StringBuilder()).append("Found ").append(((nc) (mq2)).B).append(" while looking for ").append(mq1).toString());
            } else
            {
                return ((nc) (mq2)).z;
            }
        }
        if (mq2 instanceof ng)
        {
            mq1 = ((ng)mq2).z;
            a.d(mq1);
        } else
        if (mq2 instanceof nj)
        {
            mq1 = (ms)a.c();
            a.c(mq1.a(c.s()));
        } else
        {
            if (mq2 instanceof mv)
            {
                throw new jh(((mv)mq2).z);
            }
            if (mq2 instanceof mt)
            {
                mq1 = (mt)mq2;
                d = c;
                c = ly.a().a(((mt) (mq1)).z, null);
            } else
            if (mq2 == mq.x)
            {
                c = d;
            } else
            {
                throw new jh((new StringBuilder()).append("Unknown action: ").append(mq2).toString());
            }
        }
        return null;
    }

    public long e()
        throws IOException
    {
        mq mq1 = a.a(mq.f);
        if (mq1 == mq.e)
        {
            return (long)c.d();
        }
        if (mq1 == mq.h)
        {
            return (long)c.g();
        }
        if (!b && mq1 != mq.f)
        {
            throw new AssertionError();
        } else
        {
            return c.e();
        }
    }

    public float f()
        throws IOException
    {
        mq mq1 = a.a(mq.g);
        if (mq1 == mq.e)
        {
            return (float)c.d();
        }
        if (mq1 == mq.f)
        {
            return (float)c.e();
        }
        if (!b && mq1 != mq.g)
        {
            throw new AssertionError();
        } else
        {
            return c.f();
        }
    }

    public double g()
        throws IOException
    {
        mq mq1 = a.a(mq.h);
        if (mq1 == mq.e)
        {
            return (double)c.d();
        }
        if (mq1 == mq.f)
        {
            return (double)c.e();
        }
        if (mq1 == mq.g)
        {
            return (double)c.f();
        }
        if (!b && mq1 != mq.h)
        {
            throw new AssertionError();
        } else
        {
            return c.g();
        }
    }

    public int k()
        throws IOException
    {
        a.a(mq.l);
        Object obj = (mu)a.c();
        int i = c.k();
        obj = ((mu) (obj)).z[i];
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        } else
        {
            throw new jh((String)obj);
        }
    }

    public void l()
        throws IOException
    {
        Object obj = a.c();
        if (obj instanceof nc)
        {
            a.c(((nc)obj).z);
        } else
        {
            if (obj instanceof ng)
            {
                a.c(((ng)obj).z);
                return;
            }
            if (obj instanceof nj)
            {
                obj = (ms)a.c();
                a.c(((ms) (obj)).a(c.s()));
                return;
            }
            if (obj instanceof mv)
            {
                throw new jh(((mv)obj).z);
            }
            if (obj instanceof mt)
            {
                obj = (mt)obj;
                d = c;
                c = ly.a().a(((mt) (obj)).z, null);
                return;
            }
            if (obj == mq.x)
            {
                c = d;
                return;
            }
        }
    }

    public int s()
        throws IOException
    {
        a.a(mq.m);
        ni ni1 = (ni)a.c();
        a.c(ni1.B);
        return ni1.z;
    }

    public final js[] u()
        throws IOException
    {
        return ((mw)a.a(mq.s)).z;
    }

    public final void v()
        throws IOException
    {
        a.a();
    }

    static 
    {
        boolean flag;
        if (!com/flurry/android/monolithic/sdk/impl/mh.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
