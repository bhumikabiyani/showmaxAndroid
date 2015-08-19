// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zznz;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzi

public final class Device
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzi();
    public static final int TYPE_CHEST_STRAP = 4;
    public static final int TYPE_PHONE = 1;
    public static final int TYPE_SCALE = 5;
    public static final int TYPE_TABLET = 2;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_WATCH = 3;
    private final int zzFG;
    private final int zzJp;
    private final String zzYw;
    private final String zzZe;
    private final String zzZf;
    private final String zzZg;
    private final int zzZh;

    Device(int i, String s, String s1, String s2, String s3, int j, int k)
    {
        zzFG = i;
        zzZe = (String)zzx.zzl(s);
        zzZf = (String)zzx.zzl(s1);
        zzYw = "";
        zzZg = (String)zzx.zzl(s3);
        zzJp = j;
        zzZh = k;
    }

    public Device(String s, String s1, String s2, int i)
    {
        this(s, s1, "", s2, i, 0);
    }

    public Device(String s, String s1, String s2, String s3, int i)
    {
        this(s, s1, s3, i);
    }

    public Device(String s, String s1, String s2, String s3, int i, int j)
    {
        this(1, s, s1, "", s3, i, j);
    }

    public static Device getLocalDevice(Context context)
    {
        int i = zzU(context);
        context = zzT(context);
        return new Device(Build.MANUFACTURER, Build.MODEL, android.os.Build.VERSION.RELEASE, context, i, 2);
    }

    private static String zzT(Context context)
    {
        return android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    private static int zzU(Context context)
    {
        int i;
        boolean flag;
        flag = false;
        i = ((flag) ? 1 : 0);
        zzW(context);
        JVM INSTR tableswitch 8 10: default 36
    //                   8 45
    //                   9 45
    //                   10 47;
           goto _L1 _L2 _L2 _L3
_L1:
        if (!zzY(context)) goto _L5; else goto _L4
_L4:
        i = 1;
_L2:
        return i;
_L3:
        i = ((flag) ? 1 : 0);
        if (!zzV(context)) goto _L2; else goto _L6
_L6:
        return 3;
_L5:
        return 2;
    }

    public static boolean zzV(Context context)
    {
        return (context.getResources().getConfiguration().uiMode & 0xf) == 6;
    }

    private static int zzW(Context context)
    {
        return (zzX(context) % 1000) / 100 + 5;
    }

    private static int zzX(Context context)
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.w("Fitness", "Could not find package info for Google Play Services");
            return -1;
        }
        return i;
    }

    private static boolean zzY(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getPhoneType() != 0;
    }

    private boolean zza(Device device)
    {
        return zzw.equal(zzZe, device.zzZe) && zzw.equal(zzZf, device.zzZf) && zzw.equal(zzYw, device.zzYw) && zzw.equal(zzZg, device.zzZg) && zzJp == device.zzJp && zzZh == device.zzZh;
    }

    private boolean zzlE()
    {
        return zzlD() == 1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof Device) && zza((Device)obj);
    }

    public String getManufacturer()
    {
        return zzZe;
    }

    public String getModel()
    {
        return zzZf;
    }

    String getStreamIdentifier()
    {
        return String.format("%s:%s:%s", new Object[] {
            zzZe, zzZf, zzZg
        });
    }

    public int getType()
    {
        return zzJp;
    }

    public String getUid()
    {
        return zzZg;
    }

    public String getVersion()
    {
        return zzYw;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzZe, zzZf, zzYw, zzZg, Integer.valueOf(zzJp)
        });
    }

    public String toString()
    {
        return String.format("Device{%s:%s:%s:%s}", new Object[] {
            getStreamIdentifier(), zzYw, Integer.valueOf(zzJp), Integer.valueOf(zzZh)
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzi.zza(this, parcel, i);
    }

    public int zzlD()
    {
        return zzZh;
    }

    public String zzlF()
    {
        if (zznz.zzlM() || zzlE())
        {
            return zzZg;
        } else
        {
            return zznz.zzbM(zzZg);
        }
    }

}
