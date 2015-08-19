// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aak, aau, ra

public class aaj
{

    private final aak a[];
    private final int b;

    public aaj(Map map)
    {
        int i = a(map.size());
        b = i;
        aak aaak[] = new aak[i];
        for (map = map.entrySet().iterator(); map.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            aau aau1 = (aau)entry.getKey();
            int j = aau1.hashCode() & i - 1;
            aaak[j] = new aak(aaak[j], aau1, (ra)entry.getValue());
        }

        a = aaak;
    }

    private static final int a(int i)
    {
        int j;
        if (i <= 64)
        {
            i += i;
        } else
        {
            i = (i >> 2) + i;
        }
        for (j = 8; j < i; j += j) { }
        return j;
    }

    public ra a(aau aau1)
    {
        int i = aau1.hashCode();
        int j = a.length;
        aak aak2 = a[i & j - 1];
        if (aak2 == null)
        {
            return null;
        }
        aak aak1 = aak2;
        if (aau1.equals(aak2.a))
        {
            return aak2.b;
        }
        do
        {
            aak aak3 = aak1.c;
            if (aak3 != null)
            {
                aak1 = aak3;
                if (aau1.equals(aak3.a))
                {
                    return aak3.b;
                }
            } else
            {
                return null;
            }
        } while (true);
    }
}
