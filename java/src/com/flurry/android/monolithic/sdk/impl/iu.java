// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            is, it

final class iu
    implements Thread.UncaughtExceptionHandler
{

    final is a;

    private iu(is is1)
    {
        a = is1;
        super();
    }

    iu(is is1, it it)
    {
        this(is1);
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        is.a(a, thread, throwable);
        is.b(a, thread, throwable);
    }
}
