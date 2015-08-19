// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public final class cd
{

    private String a;
    private long b;
    private long c;
    private int d;
    private int e;
    private int f;
    private int g;

    public cd()
    {
    }

    public cd(DataInput datainput)
        throws IOException
    {
        a = datainput.readUTF();
        b = datainput.readLong();
        c = datainput.readLong();
        d = datainput.readInt();
        e = datainput.readInt();
        f = datainput.readInt();
        g = datainput.readInt();
    }

    public cd(String s, long l, long l1, int j, int k, 
            int i1)
    {
        a = s;
        b = l;
        c = l1;
        e = j;
        f = k;
        g = i1;
        d = 0;
    }

    public cd a()
    {
        cd cd1 = new cd(b(), i(), h(), e(), f(), g());
        cd1.a(c());
        return cd1;
    }

    public void a(int j)
    {
        d = j;
    }

    public void a(DataOutput dataoutput)
        throws IOException
    {
        dataoutput.writeUTF(a);
        dataoutput.writeLong(b);
        dataoutput.writeLong(c);
        dataoutput.writeInt(d);
        dataoutput.writeInt(e);
        dataoutput.writeInt(f);
        dataoutput.writeInt(g);
    }

    public String b()
    {
        return a;
    }

    public int c()
    {
        return d;
    }

    public void d()
    {
        d = d + 1;
    }

    public int e()
    {
        return e;
    }

    public int f()
    {
        return f;
    }

    public int g()
    {
        return g;
    }

    public long h()
    {
        return c;
    }

    public long i()
    {
        return b;
    }
}
