// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zznv;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzaq, zzt, BleScanCallback

public class StartBleScanRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private zzt zzabH;
        private int zzabI;
        private DataType zzabg[];

        static DataType[] zza(Builder builder)
        {
            return builder.zzabg;
        }

        static zzt zzb(Builder builder)
        {
            return builder.zzabH;
        }

        static int zzc(Builder builder)
        {
            return builder.zzabI;
        }

        public StartBleScanRequest build()
        {
            boolean flag;
            if (zzabH != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must set BleScanCallback");
            return new StartBleScanRequest(this);
        }

        public Builder setBleScanCallback(BleScanCallback blescancallback)
        {
            zza(com.google.android.gms.fitness.request.zza.zza.zzlO().zza(blescancallback));
            return this;
        }

        public transient Builder setDataTypes(DataType adatatype[])
        {
            zzabg = adatatype;
            return this;
        }

        public Builder setTimeoutSecs(int i)
        {
            boolean flag1 = true;
            boolean flag;
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Stop time must be greater than zero");
            if (i <= 60)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Stop time must be less than 1 minute");
            zzabI = i;
            return this;
        }

        public Builder zza(zzt zzt1)
        {
            zzabH = zzt1;
            return this;
        }

        public Builder()
        {
            zzabg = new DataType[0];
            zzabI = 10;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzaq();
    private final int zzFG;
    private final String zzFO;
    private final List zzYA;
    private final zznv zzaaN;
    private final zzt zzabH;
    private final int zzabI;

    StartBleScanRequest(int i, List list, IBinder ibinder, int j, IBinder ibinder1, String s)
    {
        zzFG = i;
        zzYA = list;
        zzabH = zzt.zza.zzaV(ibinder);
        zzabI = j;
        if (ibinder1 == null)
        {
            list = null;
        } else
        {
            list = com.google.android.gms.internal.zznv.zza.zzaS(ibinder1);
        }
        zzaaN = list;
        zzFO = s;
    }

    private StartBleScanRequest(Builder builder)
    {
        this(((List) (zzls.zzb(Builder.zza(builder)))), Builder.zzb(builder), Builder.zzc(builder), null, null);
    }


    public StartBleScanRequest(StartBleScanRequest startblescanrequest, zznv zznv1, String s)
    {
        this(startblescanrequest.zzYA, startblescanrequest.zzabH, startblescanrequest.zzabI, zznv1, s);
    }

    public StartBleScanRequest(List list, zzt zzt1, int i, zznv zznv1, String s)
    {
        zzFG = 3;
        zzYA = list;
        zzabH = zzt1;
        zzabI = i;
        zzaaN = zznv1;
        zzFO = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public List getDataTypes()
    {
        return Collections.unmodifiableList(zzYA);
    }

    public String getPackageName()
    {
        return zzFO;
    }

    public int getTimeoutSecs()
    {
        return zzabI;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public String toString()
    {
        return zzw.zzk(this).zza("dataTypes", zzYA).zza("timeoutSecs", Integer.valueOf(zzabI)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaq.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzaaN == null)
        {
            return null;
        } else
        {
            return zzaaN.asBinder();
        }
    }

    public IBinder zzmk()
    {
        return zzabH.asBinder();
    }

}
