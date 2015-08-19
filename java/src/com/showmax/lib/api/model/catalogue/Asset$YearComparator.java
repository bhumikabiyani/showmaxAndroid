// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import java.util.Comparator;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public static class mDescending
    implements Comparator
{

    private boolean mDescending;

    private int resolveDirection(int i)
    {
        int j = i;
        if (mDescending)
        {
            j = -i;
        }
        return j;
    }

    public int compare(Asset asset, Asset asset1)
    {
        boolean flag = false;
        if (asset != null || asset1 == null) goto _L2; else goto _L1
_L1:
        int i = resolveDirection(-1);
_L4:
        return i;
_L2:
        if (asset != null && asset1 == null)
        {
            return resolveDirection(1);
        }
        if (asset != null)
        {
            break; /* Loop/switch isn't completed */
        }
        i = ((flag) ? 1 : 0);
        if (asset1 == null) goto _L4; else goto _L3
_L3:
        if (asset.year < asset1.year)
        {
            return resolveDirection(-1);
        }
        i = ((flag) ? 1 : 0);
        if (asset.year > asset1.year)
        {
            return resolveDirection(1);
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((Asset)obj, (Asset)obj1);
    }

    public (boolean flag)
    {
        mDescending = flag;
    }
}
