// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oi

public class om extends oi
{

    private final byte a[];
    private final Charset b;

    public om(String s)
        throws UnsupportedEncodingException
    {
        this(s, "text/plain", null);
    }

    public om(String s, String s1, Charset charset)
        throws UnsupportedEncodingException
    {
        super(s1);
        if (s == null)
        {
            throw new IllegalArgumentException("Text may not be null");
        }
        s1 = charset;
        if (charset == null)
        {
            s1 = Charset.forName("US-ASCII");
        }
        a = s.getBytes(s1.name());
        b = s1;
    }

    public void a(OutputStream outputstream)
        throws IOException
    {
        if (outputstream == null)
        {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(a);
        byte abyte0[] = new byte[4096];
        do
        {
            int i = bytearrayinputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                outputstream.flush();
                return;
            }
        } while (true);
    }

    public String b()
    {
        return null;
    }

    public String c()
    {
        return b.name();
    }

    public String d()
    {
        return "8bit";
    }

    public long e()
    {
        return (long)a.length;
    }
}
