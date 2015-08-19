// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.File;
import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class acp extends abq
{

    public acp()
    {
        super(java/io/File);
    }

    public void a(File file, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(file.getAbsolutePath());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((File)obj, or1, ru);
    }
}
