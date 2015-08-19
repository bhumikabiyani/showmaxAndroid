// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aep, oz, rx, or, 
//            ru

public abstract class afg extends aep
{

    protected afg()
    {
    }

    public void a(or or, ru ru, rx rx1)
        throws IOException, oz
    {
        rx1.a(this, or);
        a(or, ru);
        rx1.d(this, or);
    }

    public String toString()
    {
        return m();
    }
}
