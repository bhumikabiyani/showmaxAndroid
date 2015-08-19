// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aac extends abq
{

    static final aac a = new aac();

    public aac()
    {
        super(java/lang/Number);
    }

    public void a(Number number, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(number.intValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Number)obj, or1, ru);
    }

}
