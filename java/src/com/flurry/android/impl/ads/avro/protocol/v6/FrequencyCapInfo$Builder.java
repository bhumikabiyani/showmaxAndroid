// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            FrequencyCapInfo

public class <init> extends nv
{

    private CharSequence a;
    private long b;
    private long c;
    private int d;
    private int e;
    private int f;
    private int g;

    public <init> a(int i)
    {
        a(b()[3], Integer.valueOf(i));
        d = i;
        c()[3] = true;
        return this;
    }

    public c a(long l)
    {
        a(b()[1], Long.valueOf(l));
        b = l;
        c()[1] = true;
        return this;
    }

    public c a(CharSequence charsequence)
    {
        a(b()[0], charsequence);
        a = charsequence;
        c()[0] = true;
        return this;
    }

    public FrequencyCapInfo a()
    {
        FrequencyCapInfo frequencycapinfo = new FrequencyCapInfo();
        if (!c()[0]) goto _L2; else goto _L1
_L1:
        CharSequence charsequence = a;
_L13:
        frequencycapinfo.a = charsequence;
        if (!c()[1]) goto _L4; else goto _L3
_L3:
        long l = b;
_L14:
        frequencycapinfo.b = l;
        if (!c()[2]) goto _L6; else goto _L5
_L5:
        l = c;
_L15:
        frequencycapinfo.c = l;
        if (!c()[3]) goto _L8; else goto _L7
_L7:
        int i = d;
_L16:
        frequencycapinfo.d = i;
        if (!c()[4]) goto _L10; else goto _L9
_L9:
        i = e;
_L17:
        frequencycapinfo.e = i;
        if (!c()[5]) goto _L12; else goto _L11
_L11:
        i = f;
_L18:
        frequencycapinfo.f = i;
        if (!c()[6])
        {
            break MISSING_BLOCK_LABEL_267;
        }
        i = g;
_L19:
        frequencycapinfo.g = i;
        return frequencycapinfo;
_L2:
        try
        {
            charsequence = (CharSequence)a(b()[0]);
        }
        catch (Exception exception)
        {
            throw new jg(exception);
        }
          goto _L13
_L4:
        l = ((Long)a(b()[1])).longValue();
          goto _L14
_L6:
        l = ((Long)a(b()[2])).longValue();
          goto _L15
_L8:
        i = ((Integer)a(b()[3])).intValue();
          goto _L16
_L10:
        i = ((Integer)a(b()[4])).intValue();
          goto _L17
_L12:
        i = ((Integer)a(b()[5])).intValue();
          goto _L18
        i = ((Integer)a(b()[6])).intValue();
          goto _L19
    }

    public b b(int i)
    {
        a(b()[4], Integer.valueOf(i));
        e = i;
        c()[4] = true;
        return this;
    }

    public c b(long l)
    {
        a(b()[2], Long.valueOf(l));
        c = l;
        c()[2] = true;
        return this;
    }

    public c c(int i)
    {
        a(b()[5], Integer.valueOf(i));
        f = i;
        c()[5] = true;
        return this;
    }

    public c d(int i)
    {
        a(b()[6], Integer.valueOf(i));
        g = i;
        c()[6] = true;
        return this;
    }

    private ()
    {
        super(FrequencyCapInfo.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
