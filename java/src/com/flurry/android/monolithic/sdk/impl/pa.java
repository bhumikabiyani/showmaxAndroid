// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public abstract class pa
{

    protected int a;
    protected int b;

    protected pa()
    {
    }

    public final boolean a()
    {
        return a == 1;
    }

    public final boolean b()
    {
        return a == 0;
    }

    public final boolean c()
    {
        return a == 2;
    }

    public final String d()
    {
        switch (a)
        {
        default:
            return "?";

        case 0: // '\0'
            return "ROOT";

        case 1: // '\001'
            return "ARRAY";

        case 2: // '\002'
            return "OBJECT";
        }
    }

    public final int e()
    {
        return b + 1;
    }

    public final int f()
    {
        if (b < 0)
        {
            return 0;
        } else
        {
            return b;
        }
    }
}
