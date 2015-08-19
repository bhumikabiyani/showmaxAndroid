// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzs, DataType, DataSource

public class Subscription
    implements SafeParcelable
{
    public static class zza
    {

        private DataType zzYo;
        private DataSource zzYp;
        private long zzZQ;
        private int zzZR;

        static DataType zza(zza zza1)
        {
            return zza1.zzYo;
        }

        static DataSource zzb(zza zza1)
        {
            return zza1.zzYp;
        }

        static long zzc(zza zza1)
        {
            return zza1.zzZQ;
        }

        static int zzd(zza zza1)
        {
            return zza1.zzZR;
        }

        public zza zzb(DataSource datasource)
        {
            zzYp = datasource;
            return this;
        }

        public zza zzb(DataType datatype)
        {
            zzYo = datatype;
            return this;
        }

        public Subscription zzlK()
        {
label0:
            {
                boolean flag1 = false;
                boolean flag;
                if (zzYp != null || zzYo != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zzx.zza(flag, "Must call setDataSource() or setDataType()");
                if (zzYo != null && zzYp != null)
                {
                    flag = flag1;
                    if (!zzYo.equals(zzYp.getDataType()))
                    {
                        break label0;
                    }
                }
                flag = true;
            }
            zzx.zza(flag, "Specified data type is incompatible with specified data source");
            return new Subscription(this);
        }

        public zza()
        {
            zzZQ = -1L;
            zzZR = 2;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzs();
    private final int zzFG;
    private final DataType zzYo;
    private final DataSource zzYp;
    private final long zzZQ;
    private final int zzZR;

    Subscription(int i, DataSource datasource, DataType datatype, long l, int j)
    {
        zzFG = i;
        zzYp = datasource;
        zzYo = datatype;
        zzZQ = l;
        zzZR = j;
    }

    private Subscription(zza zza1)
    {
        zzFG = 1;
        zzYo = zza.zza(zza1);
        zzYp = zza.zzb(zza1);
        zzZQ = zza.zzc(zza1);
        zzZR = zza.zzd(zza1);
    }


    private boolean zza(Subscription subscription)
    {
        return zzw.equal(zzYp, subscription.zzYp) && zzw.equal(zzYo, subscription.zzYo) && zzZQ == subscription.zzZQ && zzZR == subscription.zzZR;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof Subscription) && zza((Subscription)obj);
    }

    public int getAccuracyMode()
    {
        return zzZR;
    }

    public DataSource getDataSource()
    {
        return zzYp;
    }

    public DataType getDataType()
    {
        return zzYo;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, zzYp, Long.valueOf(zzZQ), Integer.valueOf(zzZR)
        });
    }

    public String toDebugString()
    {
        String s;
        if (zzYp == null)
        {
            s = zzYo.getName();
        } else
        {
            s = zzYp.toDebugString();
        }
        return String.format("Subscription{%s}", new Object[] {
            s
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("dataSource", zzYp).zza("dataType", zzYo).zza("samplingIntervalMicros", Long.valueOf(zzZQ)).zza("accuracyMode", Integer.valueOf(zzZR)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzs.zza(this, parcel, i);
    }

    public long zzlI()
    {
        return zzZQ;
    }

    public DataType zzlJ()
    {
        if (zzYo == null)
        {
            return zzYp.getDataType();
        } else
        {
            return zzYo;
        }
    }

}
