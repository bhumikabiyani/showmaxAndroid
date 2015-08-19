// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryWalletError;
import com.flurry.android.FlurryWalletHandler;
import com.flurry.android.FlurryWalletInfo;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fz, hy

public final class ga
    implements fz
{

    private final FlurryWalletHandler a;

    public ga(FlurryWalletHandler flurrywallethandler)
    {
        a = flurrywallethandler;
    }

    public void a(hy hy1)
    {
        if (a != null && hy1 != null)
        {
            a.onError(new FlurryWalletError(hy1.a(), hy1.b()));
        }
    }

    public void a(String s, String s1)
    {
        if (a != null)
        {
            s = new FlurryWalletInfo(s, Float.parseFloat(s1));
            a.onValueUpdated(s);
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ga))
            {
                return false;
            }
            obj = (ga)obj;
            if (a != ((ga) (obj)).a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        if (a == null)
        {
            i = 0;
        } else
        {
            i = a.hashCode();
        }
        return i + 527;
    }
}
