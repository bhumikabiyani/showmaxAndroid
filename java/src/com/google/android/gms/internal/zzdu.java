// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

public final class zzdu
    implements MediationAdRequest
{

    private final Date zzd;
    private final Set zzf;
    private final boolean zzg;
    private final Location zzh;
    private final int zzpo;
    private final int zzsQ;

    public zzdu(Date date, int i, Set set, Location location, boolean flag, int j)
    {
        zzd = date;
        zzpo = i;
        zzf = set;
        zzh = location;
        zzg = flag;
        zzsQ = j;
    }

    public Date getBirthday()
    {
        return zzd;
    }

    public int getGender()
    {
        return zzpo;
    }

    public Set getKeywords()
    {
        return zzf;
    }

    public Location getLocation()
    {
        return zzh;
    }

    public boolean isTesting()
    {
        return zzg;
    }

    public int taggedForChildDirectedTreatment()
    {
        return zzsQ;
    }
}
