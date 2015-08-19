// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.net.URL;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class uu extends um
{

    public uu()
    {
        super(java/net/URL);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected URL b(String s, qm qm)
        throws IOException
    {
        return new URL(s);
    }
}
