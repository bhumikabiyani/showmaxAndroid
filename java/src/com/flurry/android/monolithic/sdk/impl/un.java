// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.nio.charset.Charset;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class un extends um
{

    public un()
    {
        super(java/nio/charset/Charset);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected Charset b(String s, qm qm)
        throws IOException
    {
        return Charset.forName(s);
    }
}
