// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.UUID;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class wt extends we
{

    protected wt()
    {
        super(java/util/UUID);
    }

    public Object b(String s, qm qm)
        throws Exception
    {
        return c(s, qm);
    }

    public UUID c(String s, qm qm)
        throws IllegalArgumentException, qw
    {
        return UUID.fromString(s);
    }
}
