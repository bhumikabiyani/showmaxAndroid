// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


final class afk
{

    private final String a;
    private final afk b;

    public afk(String s, afk afk1)
    {
        a = s;
        b = afk1;
    }

    public String a()
    {
        return a;
    }

    public String a(char ac[], int i, int j)
    {
        afk afk1;
        String s;
        s = a;
        afk1 = b;
_L7:
        int k;
        if (s.length() != j)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        k = 0;
_L5:
        if (s.charAt(k) == ac[i + k]) goto _L2; else goto _L1
_L1:
        if (k == j)
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_72;
_L2:
        int l = k + 1;
        k = l;
        if (l < j)
        {
            break; /* Loop/switch isn't completed */
        }
        k = l;
        if (true) goto _L1; else goto _L3
_L3:
        if (true) goto _L5; else goto _L4
_L4:
        if (afk1 == null)
        {
            return null;
        }
        s = afk1.a();
        afk1 = afk1.b();
        if (true) goto _L7; else goto _L6
_L6:
    }

    public afk b()
    {
        return b;
    }
}
