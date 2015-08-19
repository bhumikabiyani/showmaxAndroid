// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zznz;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzg, DataType, zza, Device

public class DataSource
    implements SafeParcelable
{
    public static final class Builder
    {

        private String mName;
        private int zzJp;
        private Device zzYO;
        private zza zzYP;
        private String zzYQ;
        private DataType zzYo;

        static DataType zza(Builder builder)
        {
            return builder.zzYo;
        }

        static int zzb(Builder builder)
        {
            return builder.zzJp;
        }

        static String zzc(Builder builder)
        {
            return builder.mName;
        }

        static Device zzd(Builder builder)
        {
            return builder.zzYO;
        }

        static zza zze(Builder builder)
        {
            return builder.zzYP;
        }

        static String zzf(Builder builder)
        {
            return builder.zzYQ;
        }

        public DataSource build()
        {
            boolean flag1 = true;
            boolean flag;
            if (zzYo != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must set data type");
            if (zzJp >= 0)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must set data source type");
            return new DataSource(this);
        }

        public Builder setAppPackageName(Context context)
        {
            return setAppPackageName(context.getPackageName());
        }

        public Builder setAppPackageName(String s)
        {
            zzYP = com.google.android.gms.fitness.data.zza.zzbI(s);
            return this;
        }

        public Builder setDataType(DataType datatype)
        {
            zzYo = datatype;
            return this;
        }

        public Builder setDevice(Device device)
        {
            zzYO = device;
            return this;
        }

        public Builder setName(String s)
        {
            mName = s;
            return this;
        }

        public Builder setObfuscated(boolean flag)
        {
            return this;
        }

        public Builder setStreamName(String s)
        {
            boolean flag;
            if (s != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid stream name");
            zzYQ = s;
            return this;
        }

        public Builder setType(int i)
        {
            zzJp = i;
            return this;
        }

        public Builder zzb(zza zza1)
        {
            zzYP = zza1;
            return this;
        }

        public Builder()
        {
            zzJp = -1;
            zzYQ = "";
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzg();
    public static final String EXTRA_DATA_SOURCE = "vnd.google.fitness.data_source";
    public static final int TYPE_DERIVED = 1;
    public static final int TYPE_RAW = 0;
    private final String mName;
    private final int zzFG;
    private final int zzJp;
    private final Device zzYO;
    private final zza zzYP;
    private final String zzYQ;
    private final String zzYR;
    private final DataType zzYo;

    DataSource(int i, DataType datatype, String s, int j, Device device, zza zza1, String s1)
    {
        zzFG = i;
        zzYo = datatype;
        zzJp = j;
        mName = s;
        zzYO = device;
        zzYP = zza1;
        zzYQ = s1;
        zzYR = zzlA();
    }

    private DataSource(Builder builder)
    {
        zzFG = 3;
        zzYo = Builder.zza(builder);
        zzJp = Builder.zzb(builder);
        mName = com.google.android.gms.fitness.data.Builder.zzc(builder);
        zzYO = Builder.zzd(builder);
        zzYP = Builder.zze(builder);
        zzYQ = Builder.zzf(builder);
        zzYR = zzlA();
    }


    public static DataSource extract(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return (DataSource)zzc.zza(intent, "vnd.google.fitness.data_source", CREATOR);
        }
    }

    private String getTypeString()
    {
        switch (zzJp)
        {
        default:
            throw new IllegalArgumentException("invalid type value");

        case 0: // '\0'
            return "raw";

        case 1: // '\001'
            return "derived";
        }
    }

    private boolean zza(DataSource datasource)
    {
        return zzYR.equals(datasource.zzYR);
    }

    private String zzlA()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(getTypeString());
        stringbuilder.append(":").append(zzYo.getName());
        if (zzYP != null)
        {
            stringbuilder.append(":").append(zzYP.getPackageName());
        }
        if (zzYO != null)
        {
            stringbuilder.append(":").append(zzYO.getStreamIdentifier());
        }
        if (zzYQ != null)
        {
            stringbuilder.append(":").append(zzYQ);
        }
        return stringbuilder.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataSource) && zza((DataSource)obj);
    }

    public String getAppPackageName()
    {
        if (zzYP == null)
        {
            return null;
        } else
        {
            return zzYP.getPackageName();
        }
    }

    public DataType getDataType()
    {
        return zzYo;
    }

    public Device getDevice()
    {
        return zzYO;
    }

    public String getName()
    {
        return mName;
    }

    public String getStreamIdentifier()
    {
        return zzYR;
    }

    public String getStreamName()
    {
        return zzYQ;
    }

    public int getType()
    {
        return zzJp;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzYR.hashCode();
    }

    public String toDebugString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        if (zzJp == 0)
        {
            s = "r";
        } else
        {
            s = "d";
        }
        stringbuilder = stringbuilder.append(s).append(":").append(zzYo.zzlB());
        if (zzYP == null)
        {
            s = "";
        } else
        if (zzYP.equals(zza.zzYv))
        {
            s = ":gms";
        } else
        {
            s = (new StringBuilder()).append(":").append(zzYP.getPackageName()).toString();
        }
        stringbuilder = stringbuilder.append(s);
        if (zzYO != null)
        {
            s = (new StringBuilder()).append(":").append(zzYO.getModel()).append(":").append(zzYO.getUid()).toString();
        } else
        {
            s = "";
        }
        stringbuilder = stringbuilder.append(s);
        if (zzYQ != null)
        {
            s = (new StringBuilder()).append(":").append(zzYQ).toString();
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).toString();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("DataSource{");
        stringbuilder.append(getTypeString());
        if (mName != null)
        {
            stringbuilder.append(":").append(mName);
        }
        if (zzYP != null)
        {
            stringbuilder.append(":").append(zzYP);
        }
        if (zzYO != null)
        {
            stringbuilder.append(":").append(zzYO);
        }
        if (zzYQ != null)
        {
            stringbuilder.append(":").append(zzYQ);
        }
        stringbuilder.append(":").append(zzYo);
        return stringbuilder.append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzg.zza(zznz.zzc(this), parcel, i);
    }

    public com.google.android.gms.internal.zzxc.zzc zzly()
    {
        if (getDataType() == null)
        {
            return null;
        } else
        {
            return getDataType().zzlC();
        }
    }

    public zza zzlz()
    {
        return zzYP;
    }

}
