// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gk

public class gj
{

    private ExecutorService a;

    public gj()
    {
        a = null;
        a = Executors.newSingleThreadExecutor();
    }

    public void a(String s, String s1, String s2, String s3)
    {
        a.execute(new gk(this, s, s1, s2, s3));
    }
}
