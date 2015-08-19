// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;
import java.nio.ByteBuffer;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            AdReportedId

public class <init> extends nv
{

    private int a;
    private ByteBuffer b;

    public <init> a(int i)
    {
        a(b()[0], Integer.valueOf(i));
        a = i;
        c()[0] = true;
        return this;
    }

    public c a(ByteBuffer bytebuffer)
    {
        a(b()[1], bytebuffer);
        b = bytebuffer;
        c()[1] = true;
        return this;
    }

    public AdReportedId a()
    {
        AdReportedId adreportedid = new AdReportedId();
        if (!c()[0]) goto _L2; else goto _L1
_L1:
        int i = a;
_L3:
        ByteBuffer bytebuffer;
        adreportedid.a = i;
        if (!c()[1])
        {
            break MISSING_BLOCK_LABEL_68;
        }
        bytebuffer = b;
_L4:
        adreportedid.b = bytebuffer;
        return adreportedid;
_L2:
        try
        {
            i = ((Integer)a(b()[0])).intValue();
        }
        catch (Exception exception)
        {
            throw new jg(exception);
        }
          goto _L3
        bytebuffer = (ByteBuffer)a(b()[1]);
          goto _L4
    }

    private ()
    {
        super(AdReportedId.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
