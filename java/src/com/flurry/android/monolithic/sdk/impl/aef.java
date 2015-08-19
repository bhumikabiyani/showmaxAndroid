// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedHashMap;

public class aef extends LinkedHashMap
{

    protected final int a;

    public aef(int i, int j)
    {
        super(i, 0.8F, true);
        a = j;
    }

    protected boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        return size() > a;
    }
}
