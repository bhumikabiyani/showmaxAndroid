// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryWallet;
import com.flurry.android.FlurryWalletError;
import com.flurry.android.FlurryWalletOperationHandler;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hz, hy, ft

public final class g
    implements hz
{

    final String a;
    final float b;
    final FlurryWalletOperationHandler c;

    public g(String s, float f, FlurryWalletOperationHandler flurrywalletoperationhandler)
    {
        a = s;
        b = f;
        c = flurrywalletoperationhandler;
        super();
    }

    public void a(ft ft)
    {
        FlurryWallet.a(a, b, c);
    }

    public void a(hy hy1)
    {
        c.onError(new FlurryWalletError(hy1.a(), hy1.b()));
    }
}
