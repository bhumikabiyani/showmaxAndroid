// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Flushable;
import java.io.IOException;
import java.nio.ByteBuffer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nw

public abstract class mc
    implements Flushable
{

    public mc()
    {
    }

    public abstract void a()
        throws IOException;

    public abstract void a(double d1)
        throws IOException;

    public abstract void a(float f1)
        throws IOException;

    public abstract void a(int i)
        throws IOException;

    public abstract void a(long l)
        throws IOException;

    public abstract void a(nw nw1)
        throws IOException;

    public void a(CharSequence charsequence)
        throws IOException
    {
        if (charsequence instanceof nw)
        {
            a((nw)charsequence);
            return;
        } else
        {
            a(charsequence.toString());
            return;
        }
    }

    public void a(String s)
        throws IOException
    {
        a(new nw(s));
    }

    public abstract void a(ByteBuffer bytebuffer)
        throws IOException;

    public abstract void a(boolean flag)
        throws IOException;

    public void a(byte abyte0[])
        throws IOException
    {
        a(abyte0, 0, abyte0.length);
    }

    public abstract void a(byte abyte0[], int i, int j)
        throws IOException;

    public abstract void b()
        throws IOException;

    public abstract void b(int i)
        throws IOException;

    public abstract void b(long l)
        throws IOException;

    public void b(byte abyte0[])
        throws IOException
    {
        b(abyte0, 0, abyte0.length);
    }

    public abstract void b(byte abyte0[], int i, int j)
        throws IOException;

    public abstract void c()
        throws IOException;

    public abstract void c(int i)
        throws IOException;

    public abstract void d()
        throws IOException;

    public abstract void e()
        throws IOException;

    public abstract void f()
        throws IOException;
}
