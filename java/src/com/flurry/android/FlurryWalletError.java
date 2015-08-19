// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;


public class FlurryWalletError
{

    private int a;
    private String b;

    public FlurryWalletError(int i, String s)
    {
        a = i;
        b = s;
    }

    public int getErrorCode()
    {
        return a;
    }

    public String getErrorMessage()
    {
        return b;
    }
}
