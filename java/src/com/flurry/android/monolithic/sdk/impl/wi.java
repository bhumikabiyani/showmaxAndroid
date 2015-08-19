// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class wi extends we
{

    wi()
    {
        super(java/lang/Character);
    }

    public Object b(String s, qm qm1)
        throws Exception
    {
        return c(s, qm1);
    }

    public Character c(String s, qm qm1)
        throws qw
    {
        if (s.length() == 1)
        {
            return Character.valueOf(s.charAt(0));
        } else
        {
            throw qm1.a(a, s, "can only convert 1-character Strings");
        }
    }
}
