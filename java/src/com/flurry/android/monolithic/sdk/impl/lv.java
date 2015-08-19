// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lu, lt

class lv extends lu
{

    private final OutputStream a;

    private lv(OutputStream outputstream)
    {
        a = outputstream;
    }

    lv(OutputStream outputstream, lt lt)
    {
        this(outputstream);
    }

    protected void a()
        throws IOException
    {
        a.flush();
    }

    protected void a(byte abyte0[], int i, int j)
        throws IOException
    {
        a.write(abyte0, i, j);
    }
}
