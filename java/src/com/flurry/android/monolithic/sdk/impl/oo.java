// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            on

public final class oo
{

    public static final on a;
    public static final on b;
    public static final on c;
    public static final on d;

    public static on a()
    {
        return b;
    }

    static 
    {
        a = new on("MIME", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", true, '=', 76);
        b = new on(a, "MIME-NO-LINEFEEDS", 0x7fffffff);
        c = new on(a, "PEM", true, '=', 64);
        StringBuffer stringbuffer = new StringBuffer("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        stringbuffer.setCharAt(stringbuffer.indexOf("+"), '-');
        stringbuffer.setCharAt(stringbuffer.indexOf("/"), '_');
        d = new on("MODIFIED-FOR-URL", stringbuffer.toString(), false, '\0', 0x7fffffff);
    }
}
