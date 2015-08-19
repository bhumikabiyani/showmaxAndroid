// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.net.URI;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class ut extends um
{

    public ut()
    {
        super(java/net/URI);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected URI b(String s, qm qm)
        throws IllegalArgumentException
    {
        return URI.create(s);
    }
}
