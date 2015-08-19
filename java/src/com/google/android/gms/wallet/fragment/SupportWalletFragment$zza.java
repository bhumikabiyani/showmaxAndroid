// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            SupportWalletFragment

static class zzaED extends com.google.android.gms.internal.nt.zza
{

    private ateChangedListener zzaEC;
    private final SupportWalletFragment zzaED;

    public void zza(int i, int j, Bundle bundle)
    {
        if (zzaEC != null)
        {
            zzaEC.onStateChanged(zzaED, i, j, bundle);
        }
    }

    public void zza(ateChangedListener atechangedlistener)
    {
        zzaEC = atechangedlistener;
    }

    ateChangedListener(SupportWalletFragment supportwalletfragment)
    {
        zzaED = supportwalletfragment;
    }
}
