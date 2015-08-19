// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryWallet;
import com.flurry.android.FlurryWalletError;
import com.flurry.android.FlurryWalletHandler;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hz, hy, ft

public final class f
    implements hz
{

    final String a;
    final FlurryWalletHandler b;

    public f(String s, FlurryWalletHandler flurrywallethandler)
    {
        a = s;
        b = flurrywallethandler;
        super();
    }

    public void a(ft ft)
    {
        FlurryWallet.a(a, b);
    }

    public void a(hy hy1)
    {
        b.onError(new FlurryWalletError(hy1.a(), hy1.b()));
    }
}
