// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;

// Referenced classes of package com.google.android.gms.common.internal:
//            zzk, zzl

protected final class zzPW extends zzPW
{

    final zzk zzPT;
    public final IBinder zzPW;

    protected boolean zzje()
    {
        Object obj;
        try
        {
            obj = zzPW.getInterfaceDescriptor();
        }
        catch (RemoteException remoteexception)
        {
            Log.w("GmsClient", "service probably died");
            return false;
        }
        if (zzPT.zzcG().equals(obj))
        {
            if ((remoteexception = zzPT.zzp(zzPW)) != null && zzk.zza(zzPT, 2, 3, remoteexception))
            {
                zzk.zza(zzPT).zzfe();
                GooglePlayServicesUtil.zzL(zzk.zze(zzPT));
                return true;
            }
        }
        return false;
    }

    public sUtil(zzk zzk1, int i, IBinder ibinder, Bundle bundle)
    {
        zzPT = zzk1;
        super(zzk1, i, bundle);
        zzPW = ibinder;
    }
}
