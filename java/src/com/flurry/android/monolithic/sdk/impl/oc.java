// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            of, oa, od, oe, 
//            oj, ob, og

public class oc
{

    private static final ByteArrayBuffer a;
    private static final ByteArrayBuffer b;
    private static final ByteArrayBuffer c;
    private final String d;
    private final Charset e;
    private final String f;
    private final List g = new ArrayList();
    private final oe h;

    public oc(String s, Charset charset, String s1, oe oe1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Multipart subtype may not be null");
        }
        if (s1 == null)
        {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
        d = s;
        if (charset == null)
        {
            charset = of.a;
        }
        e = charset;
        f = s1;
        h = oe1;
    }

    private static ByteArrayBuffer a(Charset charset, String s)
    {
        charset = charset.encode(CharBuffer.wrap(s));
        s = new ByteArrayBuffer(charset.remaining());
        s.append(charset.array(), charset.position(), charset.remaining());
        return s;
    }

    private void a(oe oe1, OutputStream outputstream, boolean flag)
        throws IOException
    {
        ByteArrayBuffer bytearraybuffer;
        Iterator iterator;
        bytearraybuffer = a(e, b());
        iterator = g.iterator();
_L2:
        oa oa1;
        Object obj;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_222;
        }
        oa1 = (oa)iterator.next();
        a(c, outputstream);
        a(bytearraybuffer, outputstream);
        a(b, outputstream);
        obj = oa1.c();
        switch (od.a[oe1.ordinal()])
        {
        default:
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break;
        }
        break MISSING_BLOCK_LABEL_170;
_L3:
        a(b, outputstream);
        if (flag)
        {
            oa1.b().a(outputstream);
        }
        a(b, outputstream);
        if (true) goto _L2; else goto _L1
_L1:
        obj = ((ob) (obj)).iterator();
        while (((Iterator) (obj)).hasNext()) 
        {
            a((og)((Iterator) (obj)).next(), outputstream);
        }
          goto _L3
        a(oa1.c().a("Content-Disposition"), e, outputstream);
        if (oa1.b().b() != null)
        {
            a(oa1.c().a("Content-Type"), e, outputstream);
        }
          goto _L3
        a(c, outputstream);
        a(bytearraybuffer, outputstream);
        a(c, outputstream);
        a(b, outputstream);
        return;
    }

    private static void a(og og1, OutputStream outputstream)
        throws IOException
    {
        a(og1.a(), outputstream);
        a(a, outputstream);
        a(og1.b(), outputstream);
        a(b, outputstream);
    }

    private static void a(og og1, Charset charset, OutputStream outputstream)
        throws IOException
    {
        a(og1.a(), charset, outputstream);
        a(a, outputstream);
        a(og1.b(), charset, outputstream);
        a(b, outputstream);
    }

    private static void a(String s, OutputStream outputstream)
        throws IOException
    {
        a(a(of.a, s), outputstream);
    }

    private static void a(String s, Charset charset, OutputStream outputstream)
        throws IOException
    {
        a(a(charset, s), outputstream);
    }

    private static void a(ByteArrayBuffer bytearraybuffer, OutputStream outputstream)
        throws IOException
    {
        outputstream.write(bytearraybuffer.buffer(), 0, bytearraybuffer.length());
    }

    public List a()
    {
        return g;
    }

    public void a(oa oa1)
    {
        if (oa1 == null)
        {
            return;
        } else
        {
            g.add(oa1);
            return;
        }
    }

    public void a(OutputStream outputstream)
        throws IOException
    {
        a(h, outputstream, true);
    }

    public String b()
    {
        return f;
    }

    public long c()
    {
        Object obj = g.iterator();
        long l = 0L;
        while (((Iterator) (obj)).hasNext()) 
        {
            long l1 = ((oa)((Iterator) (obj)).next()).b().e();
            if (l1 >= 0L)
            {
                l = l1 + l;
            } else
            {
                return -1L;
            }
        }
        obj = new ByteArrayOutputStream();
        int i;
        try
        {
            a(h, ((OutputStream) (obj)), false);
            i = ((ByteArrayOutputStream) (obj)).toByteArray().length;
        }
        catch (IOException ioexception)
        {
            return -1L;
        }
        return (long)i + l;
    }

    static 
    {
        a = a(of.a, ": ");
        b = a(of.a, "\r\n");
        c = a(of.a, "--");
    }
}
