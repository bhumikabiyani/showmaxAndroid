// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;


public class FlurryWalletInfo
{

    private final String a;
    private final float b;

    public FlurryWalletInfo(String s, float f)
    {
        a = s;
        b = f;
    }

    public float getCurrencyAmount()
    {
        return b;
    }

    public String getCurrencyKey()
    {
        return a;
    }
}