// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;

public class TestAds extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"TestAds\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]}");
    public int a;

    public TestAds()
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
            break;
        }
    }


    private class Builder extends nv
    {

        private int a;

        public Builder a(int i)
        {
            a(b()[0], Integer.valueOf(i));
            a = i;
            c()[0] = true;
            return this;
        }

        public TestAds a()
        {
            TestAds testads;
            int i;
            testads = new TestAds();
            if (!c()[0])
            {
                break MISSING_BLOCK_LABEL_29;
            }
            i = a;
_L1:
            testads.a = i;
            return testads;
            try
            {
                i = ((Integer)a(b()[0])).intValue();
            }
            catch (Exception exception)
            {
                throw new jg(exception);
            }
              goto _L1
        }

        private Builder()
        {
            super(TestAds.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
