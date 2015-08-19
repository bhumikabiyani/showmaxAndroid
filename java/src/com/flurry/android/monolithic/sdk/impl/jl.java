// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


final class jl extends ThreadLocal
{

    jl()
    {
    }

    protected Boolean a()
    {
        return Boolean.valueOf(true);
    }

    protected Object initialValue()
    {
        return a();
    }
}
