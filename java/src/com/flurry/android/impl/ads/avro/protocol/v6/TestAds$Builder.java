// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            TestAds

public class <init> extends nv
{

    private int a;

    public <init> a(int i)
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

    private ()
    {
        super(TestAds.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
