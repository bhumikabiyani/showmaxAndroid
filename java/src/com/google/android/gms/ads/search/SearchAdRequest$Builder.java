// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.search;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;

// Referenced classes of package com.google.android.gms.ads.search:
//            SearchAdRequest

public static final class zzAE
{

    private int zzAA;
    private int zzAB;
    private int zzAC;
    private int zzAD;
    private int zzAE;
    private int zzAF;
    private String zzAG;
    private int zzAH;
    private String zzAI;
    private int zzAJ;
    private int zzAK;
    private String zzAL;
    private int zzAy;
    private int zzAz;
    private final com.google.android.gms.internal.r.zzlh zzlh = new com.google.android.gms.internal.r.zzlh();

    static int zza(zzAE zzae)
    {
        return zzae.zzAy;
    }

    static int zzb(zzAy zzay)
    {
        return zzay.zzAz;
    }

    static int zzc(zzAz zzaz)
    {
        return zzaz.zzAA;
    }

    static int zzd(zzAA zzaa)
    {
        return zzaa.zzAB;
    }

    static int zze(zzAB zzab)
    {
        return zzab.zzAC;
    }

    static int zzf(zzAC zzac)
    {
        return zzac.zzAD;
    }

    static int zzg(zzAD zzad)
    {
        return zzad.zzAE;
    }

    static int zzh(zzAE zzae)
    {
        return zzae.zzAF;
    }

    static String zzi(zzAF zzaf)
    {
        return zzaf.zzAG;
    }

    static int zzj(zzAG zzag)
    {
        return zzag.zzAH;
    }

    static String zzk(zzAH zzah)
    {
        return zzah.zzAI;
    }

    static int zzl(zzAI zzai)
    {
        return zzai.zzAJ;
    }

    static int zzm(zzAJ zzaj)
    {
        return zzaj.zzAK;
    }

    static String zzn(zzAK zzak)
    {
        return zzak.zzAL;
    }

    static com.google.android.gms.internal.r zzo(zzAL zzal)
    {
        return zzal.zzlh;
    }

    public zzlh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.zzlh(class1, bundle);
        return this;
    }

    public zzlh addNetworkExtras(NetworkExtras networkextras)
    {
        zzlh.zzlh(networkextras);
        return this;
    }

    public zzlh addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.zzlh(class1, bundle);
        return this;
    }

    public zzlh addTestDevice(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public SearchAdRequest build()
    {
        return new SearchAdRequest(this, null);
    }

    public zzlh setAnchorTextColor(int i)
    {
        zzAy = i;
        return this;
    }

    public zzAy setBackgroundColor(int i)
    {
        zzAz = i;
        zzAA = Color.argb(0, 0, 0, 0);
        zzAB = Color.argb(0, 0, 0, 0);
        return this;
    }

    public zzAB setBackgroundGradient(int i, int j)
    {
        zzAz = Color.argb(0, 0, 0, 0);
        zzAA = j;
        zzAB = i;
        return this;
    }

    public zzAB setBorderColor(int i)
    {
        zzAC = i;
        return this;
    }

    public zzAC setBorderThickness(int i)
    {
        zzAD = i;
        return this;
    }

    public zzAD setBorderType(int i)
    {
        zzAE = i;
        return this;
    }

    public zzAE setCallButtonColor(int i)
    {
        zzAF = i;
        return this;
    }

    public zzAF setCustomChannels(String s)
    {
        zzAG = s;
        return this;
    }

    public zzAG setDescriptionTextColor(int i)
    {
        zzAH = i;
        return this;
    }

    public zzAH setFontFace(String s)
    {
        zzAI = s;
        return this;
    }

    public zzAI setHeaderTextColor(int i)
    {
        zzAJ = i;
        return this;
    }

    public zzAJ setHeaderTextSize(int i)
    {
        zzAK = i;
        return this;
    }

    public zzAK setLocation(Location location)
    {
        zzlh.zzlh(location);
        return this;
    }

    public zzlh setQuery(String s)
    {
        zzAL = s;
        return this;
    }

    public zzAL setRequestAgent(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public zzlh tagForChildDirectedTreatment(boolean flag)
    {
        zzlh.zzlh(flag);
        return this;
    }

    public ()
    {
        zzAE = 0;
    }
}
