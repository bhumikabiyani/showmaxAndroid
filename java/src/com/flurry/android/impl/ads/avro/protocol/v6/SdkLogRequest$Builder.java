// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;
import java.util.List;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            SdkLogRequest

public class <init> extends nv
{

    private CharSequence a;
    private List b;
    private List c;
    private long d;
    private boolean e;

    public <init> a(long l)
    {
        a(b()[3], Long.valueOf(l));
        d = l;
        c()[3] = true;
        return this;
    }

    public c a(CharSequence charsequence)
    {
        a(b()[0], charsequence);
        a = charsequence;
        c()[0] = true;
        return this;
    }

    public c a(List list)
    {
        a(b()[1], list);
        b = list;
        c()[1] = true;
        return this;
    }

    public c a(boolean flag)
    {
        a(b()[4], Boolean.valueOf(flag));
        e = flag;
        c()[4] = true;
        return this;
    }

    public SdkLogRequest a()
    {
        SdkLogRequest sdklogrequest = new SdkLogRequest();
        if (!c()[0]) goto _L2; else goto _L1
_L1:
        Object obj = a;
_L9:
        sdklogrequest.a = ((CharSequence) (obj));
        if (!c()[1]) goto _L4; else goto _L3
_L3:
        obj = b;
_L10:
        sdklogrequest.b = ((List) (obj));
        if (!c()[2]) goto _L6; else goto _L5
_L5:
        obj = c;
_L11:
        sdklogrequest.c = ((List) (obj));
        if (!c()[3]) goto _L8; else goto _L7
_L7:
        long l = d;
_L12:
        boolean flag;
        sdklogrequest.d = l;
        if (!c()[4])
        {
            break MISSING_BLOCK_LABEL_178;
        }
        flag = e;
_L13:
        sdklogrequest.e = flag;
        return sdklogrequest;
_L2:
        try
        {
            obj = (CharSequence)a(b()[0]);
        }
        catch (Exception exception)
        {
            throw new jg(exception);
        }
          goto _L9
_L4:
        obj = (List)a(b()[1]);
          goto _L10
_L6:
        obj = (List)a(b()[2]);
          goto _L11
_L8:
        l = ((Long)a(b()[3])).longValue();
          goto _L12
        flag = ((Boolean)a(b()[4])).booleanValue();
          goto _L13
    }

    public b b(List list)
    {
        a(b()[2], list);
        c = list;
        c()[2] = true;
        return this;
    }

    private ()
    {
        super(SdkLogRequest.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
