// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryWalletError;
import com.flurry.android.FlurryWalletOperationHandler;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hx, hy

public final class fk
    implements hx
{

    private final FlurryWalletOperationHandler a;

    public fk(FlurryWalletOperationHandler flurrywalletoperationhandler)
    {
        a = flurrywalletoperationhandler;
    }

    public void a()
    {
        if (a != null)
        {
            a.onOperationSucceed();
        }
    }

    public void a(hy hy1)
    {
        if (a != null && hy1 != null)
        {
            a.onError(new FlurryWalletError(hy1.a(), hy1.b()));
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof fk))
            {
                return false;
            }
            obj = (fk)obj;
            if (a != ((fk) (obj)).a)
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
