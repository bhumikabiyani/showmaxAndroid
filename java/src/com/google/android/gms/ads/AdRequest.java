// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzbo;
import java.util.Date;
import java.util.Set;

public final class AdRequest
{
    public static final class Builder
    {

        private final com.google.android.gms.internal.zzbo.zza zzlh = new com.google.android.gms.internal.zzbo.zza();

        static com.google.android.gms.internal.zzbo.zza zza(Builder builder)
        {
            return builder.zzlh;
        }

        public Builder addCustomEventExtrasBundle(Class class1, Bundle bundle)
        {
            zzlh.zzb(class1, bundle);
            return this;
        }

        public Builder addKeyword(String s)
        {
            zzlh.zzr(s);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkextras)
        {
            zzlh.zza(networkextras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class class1, Bundle bundle)
        {
            zzlh.zza(class1, bundle);
            if (class1.equals(com/google/ads/mediation/admob/AdMobAdapter) && bundle.getBoolean("_emulatorLiveAds"))
            {
                zzlh.zzt(AdRequest.DEVICE_ID_EMULATOR);
            }
            return this;
        }

        public Builder addTestDevice(String s)
        {
            zzlh.zzs(s);
            return this;
        }

        public AdRequest build()
        {
            return new AdRequest(this);
        }

        public Builder setBirthday(Date date)
        {
            zzlh.zza(date);
            return this;
        }

        public Builder setContentUrl(String s)
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
            zzlh.zzu(s);
            return this;
        }

        public Builder setGender(int i)
        {
            zzlh.zzh(i);
            return this;
        }

        public Builder setLocation(Location location)
        {
            zzlh.zza(location);
            return this;
        }

        public Builder setRequestAgent(String s)
        {
            zzlh.zzw(s);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean flag)
        {
            zzlh.zzk(flag);
            return this;
        }

        public Builder()
        {
            zzlh.zzs(AdRequest.DEVICE_ID_EMULATOR);
        }
    }


    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    private final zzbo zzlg;

    private AdRequest(Builder builder)
    {
        zzlg = new zzbo(Builder.zza(builder));
    }


    public Date getBirthday()
    {
        return zzlg.getBirthday();
    }

    public String getContentUrl()
    {
        return zzlg.getContentUrl();
    }

    public Bundle getCustomEventExtrasBundle(Class class1)
    {
        return zzlg.getCustomEventExtrasBundle(class1);
    }

    public int getGender()
    {
        return zzlg.getGender();
    }

    public Set getKeywords()
    {
        return zzlg.getKeywords();
    }

    public Location getLocation()
    {
        return zzlg.getLocation();
    }

    public NetworkExtras getNetworkExtras(Class class1)
    {
        return zzlg.getNetworkExtras(class1);
    }

    public Bundle getNetworkExtrasBundle(Class class1)
    {
        return zzlg.getNetworkExtrasBundle(class1);
    }

    public boolean isTestDevice(Context context)
    {
        return zzlg.isTestDevice(context);
    }

    zzbo zzY()
    {
        return zzlg;
    }

    static 
    {
        DEVICE_ID_EMULATOR = zzbo.DEVICE_ID_EMULATOR;
    }
}
