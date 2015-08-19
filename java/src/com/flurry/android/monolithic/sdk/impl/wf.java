// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class wf extends we
{

    wf()
    {
        super(java/lang/Boolean);
    }

    public Object b(String s, qm qm1)
        throws Exception
    {
        return c(s, qm1);
    }

    public Boolean c(String s, qm qm1)
        throws qw
    {
        if ("true".equals(s))
        {
            return Boolean.TRUE;
        }
        if ("false".equals(s))
        {
            return Boolean.FALSE;
        } else
        {
            throw qm1.a(a, s, "value not 'true' or 'false'");
        }
    }
}
