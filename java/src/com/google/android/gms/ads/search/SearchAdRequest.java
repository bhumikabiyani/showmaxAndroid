// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.zzbo;

public final class SearchAdRequest
{
    public static final class Builder
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
        private final com.google.android.gms.internal.zzbo.zza zzlh = new com.google.android.gms.internal.zzbo.zza();

        static int zza(Builder builder)
        {
            return builder.zzAy;
        }

        static int zzb(Builder builder)
        {
            return builder.zzAz;
        }

        static int zzc(Builder builder)
        {
            return builder.zzAA;
        }

        static int zzd(Builder builder)
        {
            return builder.zzAB;
        }

        static int zze(Builder builder)
        {
            return builder.zzAC;
        }

        static int zzf(Builder builder)
        {
            return builder.zzAD;
        }

        static int zzg(Builder builder)
        {
            return builder.zzAE;
        }

        static int zzh(Builder builder)
        {
            return builder.zzAF;
        }

        static String zzi(Builder builder)
        {
            return builder.zzAG;
        }

        static int zzj(Builder builder)
        {
            return builder.zzAH;
        }

        static String zzk(Builder builder)
        {
            return builder.zzAI;
        }

        static int zzl(Builder builder)
        {
            return builder.zzAJ;
        }

        static int zzm(Builder builder)
        {
            return builder.zzAK;
        }

        static String zzn(Builder builder)
        {
            return builder.zzAL;
        }

        static com.google.android.gms.internal.zzbo.zza zzo(Builder builder)
        {
            return builder.zzlh;
        }

        public Builder addCustomEventExtrasBundle(Class class1, Bundle bundle)
        {
            zzlh.zzb(class1, bundle);
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
            return this;
        }

        public Builder addTestDevice(String s)
        {
            zzlh.zzs(s);
            return this;
        }

        public SearchAdRequest build()
        {
            return new SearchAdRequest(this);
        }

        public Builder setAnchorTextColor(int i)
        {
            zzAy = i;
            return this;
        }

        public Builder setBackgroundColor(int i)
        {
            zzAz = i;
            zzAA = Color.argb(0, 0, 0, 0);
            zzAB = Color.argb(0, 0, 0, 0);
            return this;
        }

        public Builder setBackgroundGradient(int i, int j)
        {
            zzAz = Color.argb(0, 0, 0, 0);
            zzAA = j;
            zzAB = i;
            return this;
        }

        public Builder setBorderColor(int i)
        {
            zzAC = i;
            return this;
        }

        public Builder setBorderThickness(int i)
        {
            zzAD = i;
            return this;
        }

        public Builder setBorderType(int i)
        {
            zzAE = i;
            return this;
        }

        public Builder setCallButtonColor(int i)
        {
            zzAF = i;
            return this;
        }

        public Builder setCustomChannels(String s)
        {
            zzAG = s;
            return this;
        }

        public Builder setDescriptionTextColor(int i)
        {
            zzAH = i;
            return this;
        }

        public Builder setFontFace(String s)
        {
            zzAI = s;
            return this;
        }

        public Builder setHeaderTextColor(int i)
        {
            zzAJ = i;
            return this;
        }

        public Builder setHeaderTextSize(int i)
        {
            zzAK = i;
            return this;
        }

        public Builder setLocation(Location location)
        {
            zzlh.zza(location);
            return this;
        }

        public Builder setQuery(String s)
        {
            zzAL = s;
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
            zzAE = 0;
        }
    }


    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final int zzAA;
    private final int zzAB;
    private final int zzAC;
    private final int zzAD;
    private final int zzAE;
    private final int zzAF;
    private final String zzAG;
    private final int zzAH;
    private final String zzAI;
    private final int zzAJ;
    private final int zzAK;
    private final String zzAL;
    private final int zzAy;
    private final int zzAz;
    private final zzbo zzlg;

    private SearchAdRequest(Builder builder)
    {
        zzAy = Builder.zza(builder);
        zzAz = Builder.zzb(builder);
        zzAA = Builder.zzc(builder);
        zzAB = Builder.zzd(builder);
        zzAC = Builder.zze(builder);
        zzAD = Builder.zzf(builder);
        zzAE = Builder.zzg(builder);
        zzAF = Builder.zzh(builder);
        zzAG = Builder.zzi(builder);
        zzAH = Builder.zzj(builder);
        zzAI = Builder.zzk(builder);
        zzAJ = Builder.zzl(builder);
        zzAK = Builder.zzm(builder);
        zzAL = Builder.zzn(builder);
        zzlg = new zzbo(Builder.zzo(builder), this);
    }


    public int getAnchorTextColor()
    {
        return zzAy;
    }

    public int getBackgroundColor()
    {
        return zzAz;
    }

    public int getBackgroundGradientBottom()
    {
        return zzAA;
    }

    public int getBackgroundGradientTop()
    {
        return zzAB;
    }

    public int getBorderColor()
    {
        return zzAC;
    }

    public int getBorderThickness()
    {
        return zzAD;
    }

    public int getBorderType()
    {
        return zzAE;
    }

    public int getCallButtonColor()
    {
        return zzAF;
    }

    public String getCustomChannels()
    {
        return zzAG;
    }

    public Bundle getCustomEventExtrasBundle(Class class1)
    {
        return zzlg.getCustomEventExtrasBundle(class1);
    }

    public int getDescriptionTextColor()
    {
        return zzAH;
    }

    public String getFontFace()
    {
        return zzAI;
    }

    public int getHeaderTextColor()
    {
        return zzAJ;
    }

    public int getHeaderTextSize()
    {
        return zzAK;
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

    public String getQuery()
    {
        return zzAL;
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
