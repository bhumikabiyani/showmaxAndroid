// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hm, ja

class hs
{

    private LinkedList a;

    hs()
    {
        a = new LinkedList();
    }

    public hm a()
    {
        if (a.size() > 0)
        {
            return (hm)a.getFirst();
        } else
        {
            ja.a(6, "AppCloudOperationsManager", "NO SUCH OPERATION");
            return null;
        }
    }

    public void a(hm hm1)
    {
        a.add(hm1);
    }

    public hm b()
    {
        return (hm)a.removeFirst();
    }
}
