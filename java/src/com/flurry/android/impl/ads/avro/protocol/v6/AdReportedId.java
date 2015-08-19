// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;
import java.nio.ByteBuffer;

public class AdReportedId extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdReportedId\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}");
    public int a;
    public ByteBuffer b;

    public AdReportedId()
    {
    }

    public static Builder b()
    {
        return new Builder(null);
    }

    public ji a()
    {
        return SCHEMA$;
    }

    public Object a(int i)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            return Integer.valueOf(a);

        case 1: // '\001'
            return b;
        }
    }

    public void a(int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = ((Integer)obj).intValue();
            return;

        case 1: // '\001'
            b = (ByteBuffer)obj;
            break;
        }
    }


    private class Builder extends nv
    {

        private int a;
        private ByteBuffer b;

        public Builder a(int i)
        {
            a(b()[0], Integer.valueOf(i));
            a = i;
            c()[0] = true;
            return this;
        }

        public Builder a(ByteBuffer bytebuffer)
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

        private Builder()
        {
            super(AdReportedId.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
