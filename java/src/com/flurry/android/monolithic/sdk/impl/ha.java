// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, gz, fq

class ha
    implements fr
{

    final String a;
    final long b;
    final gz c;

    ha(gz gz1, String s, long l)
    {
        c = gz1;
        a = s;
        b = l;
        super();
    }

    public void a(fq fq)
        throws Exception
    {
        gz.a(c, fq, a);
        c.a(a, Long.valueOf(b));
    }
}
