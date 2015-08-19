// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.StringTokenizer;

final class adn extends StringTokenizer
{

    protected final String a;
    protected int b;
    protected String c;

    public adn(String s)
    {
        super(s, "<,>", true);
        a = s;
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        c = s;
        b = b - s.length();
    }

    public String b()
    {
        return a.substring(b);
    }

    public boolean hasMoreTokens()
    {
        return c != null || super.hasMoreTokens();
    }

    public String nextToken()
    {
        String s;
        if (c != null)
        {
            s = c;
            c = null;
        } else
        {
            s = super.nextToken();
        }
        b = b + s.length();
        return s;
    }
}
