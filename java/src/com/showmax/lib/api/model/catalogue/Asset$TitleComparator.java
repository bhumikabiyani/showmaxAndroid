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
        if (asset == null && asset1 != null)
        {
            return resolveDirection(-1);
        }
        if (asset != null && asset1 == null)
        {
            return resolveDirection(1);
        }
        if (asset == null && asset1 == null)
        {
            return 0;
        }
        if (asset.title == null && asset1.title != null)
        {
            return resolveDirection(-1);
        }
        if (asset.title != null && asset1.title == null)
        {
            return resolveDirection(1);
        } else
        {
            return resolveDirection(asset.title.compareTo(asset1.title));
        }
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
