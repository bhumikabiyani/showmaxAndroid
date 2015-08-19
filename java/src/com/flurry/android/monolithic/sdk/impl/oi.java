// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oj

public abstract class oi
    implements oj
{

    private final String a;
    private final String b;
    private final String c;

    public oi(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("MIME type may not be null");
        }
        a = s;
        int i = s.indexOf('/');
        if (i != -1)
        {
            b = s.substring(0, i);
            c = s.substring(i + 1);
            return;
        } else
        {
            b = s;
            c = null;
            return;
        }
    }

    public String a()
    {
        return a;
    }
}
