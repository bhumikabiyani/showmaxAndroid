// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oz, qw, sw, afm, 
//            xo

public abstract class th
{

    public th()
    {
    }

    public Object a(double d1)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON floating-point number").toString());
    }

    public Object a(int i1)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON int number").toString());
    }

    public Object a(long l1)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON long number").toString());
    }

    public Object a(Object obj)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" using delegate").toString());
    }

    public Object a(String s)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON String").toString());
    }

    public Object a(boolean flag)
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON boolean value").toString());
    }

    public Object a(Object aobj[])
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" with arguments").toString());
    }

    public abstract String a();

    public boolean b()
    {
        return h() || i() || j() || c() || d() || e() || f() || g();
    }

    public boolean c()
    {
        return false;
    }

    public boolean d()
    {
        return false;
    }

    public boolean e()
    {
        return false;
    }

    public boolean f()
    {
        return false;
    }

    public boolean g()
    {
        return false;
    }

    public boolean h()
    {
        return n() != null;
    }

    public boolean i()
    {
        return l() != null;
    }

    public boolean j()
    {
        return false;
    }

    public sw[] k()
    {
        return null;
    }

    public afm l()
    {
        return null;
    }

    public Object m()
        throws IOException, oz
    {
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append("; no default creator found").toString());
    }

    public xo n()
    {
        return null;
    }

    public xo o()
    {
        return null;
    }
}
