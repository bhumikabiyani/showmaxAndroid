// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedHashMap;

class hv
{

    public static LinkedHashMap a(int i, long l)
    {
        int j = i;
        if (i < 1)
        {
            j = 1;
        }
        long l1 = l;
        if (l < 0L)
        {
            l1 = 0L;
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        i = 0;
        while (i < j) 
        {
            if (i == 0)
            {
                l = 0L;
            } else
            {
                l = l1;
            }
            linkedhashmap.put(Integer.valueOf(i), Long.valueOf(l));
            i++;
        }
        return linkedhashmap;
    }
}
