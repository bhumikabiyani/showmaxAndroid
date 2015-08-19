// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation;

import android.location.Location;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

public class MediationAdRequest
{

    private final Date zzd;
    private final com.google.ads.AdRequest.Gender zze;
    private final Set zzf;
    private final boolean zzg;
    private final Location zzh;

    public MediationAdRequest(Date date, com.google.ads.AdRequest.Gender gender, Set set, boolean flag, Location location)
    {
        zzd = date;
        zze = gender;
        zzf = set;
        zzg = flag;
        zzh = location;
    }

    public Integer getAgeInYears()
    {
label0:
        {
            Integer integer;
label1:
            {
                if (zzd == null)
                {
                    break label0;
                }
                Calendar calendar = Calendar.getInstance();
                Calendar calendar1 = Calendar.getInstance();
                calendar.setTime(zzd);
                Integer integer1 = Integer.valueOf(calendar1.get(1) - calendar.get(1));
                if (calendar1.get(2) >= calendar.get(2))
                {
                    integer = integer1;
                    if (calendar1.get(2) != calendar.get(2))
                    {
                        break label1;
                    }
                    integer = integer1;
                    if (calendar1.get(5) >= calendar.get(5))
                    {
                        break label1;
                    }
                }
                integer = Integer.valueOf(integer1.intValue() - 1);
            }
            return integer;
        }
        return null;
    }

    public Date getBirthday()
    {
        return zzd;
    }

    public com.google.ads.AdRequest.Gender getGender()
    {
        return zze;
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
}
