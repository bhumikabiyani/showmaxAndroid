// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.zzx;
import java.util.Date;

// Referenced classes of package com.google.android.gms.ads:
//            AdRequest

public static final class D_EMULATOR
{

    private final com.google.android.gms.internal.LATOR zzlh = new com.google.android.gms.internal.LATOR();

    static com.google.android.gms.internal.LATOR zza(D_EMULATOR d_emulator)
    {
        return d_emulator.zzlh;
    }

    public zzlh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.LATOR(class1, bundle);
        return this;
    }

    public zzlh addKeyword(String s)
    {
        zzlh.LATOR(s);
        return this;
    }

    public xtras addNetworkExtras(NetworkExtras networkextras)
    {
        zzlh.(networkextras);
        return this;
    }

    public xtras addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.(class1, bundle);
        if (class1.equals(com/google/ads/mediation/admob/AdMobAdapter) && bundle.getBoolean("_emulatorLiveAds"))
        {
            zzlh.(AdRequest.DEVICE_ID_EMULATOR);
        }
        return this;
    }

    public D_EMULATOR addTestDevice(String s)
    {
        zzlh.LATOR(s);
        return this;
    }

    public AdRequest build()
    {
        return new AdRequest(this, null);
    }

    public zzlh setBirthday(Date date)
    {
        zzlh.LATOR(date);
        return this;
    }

    public zzlh setContentUrl(String s)
    {
        zzx.zzb(s, "Content URL must be non-null.");
        zzx.zzb(s, "Content URL must be non-empty.");
        boolean flag;
        if (s.length() <= 512)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Content URL must not exceed %d in length.  Provided length was %d.", new Object[] {
            Integer.valueOf(512), Integer.valueOf(s.length())
        });
        zzlh.LATOR(s);
        return this;
    }

    public zzlh setGender(int i)
    {
        zzlh.LATOR(i);
        return this;
    }

    public zzlh setLocation(Location location)
    {
        zzlh.LATOR(location);
        return this;
    }

    public zzlh setRequestAgent(String s)
    {
        zzlh.LATOR(s);
        return this;
    }

    public zzlh tagForChildDirectedTreatment(boolean flag)
    {
        zzlh.LATOR(flag);
        return this;
    }

    public xtras()
    {
        zzlh.(AdRequest.DEVICE_ID_EMULATOR);
    }
}
