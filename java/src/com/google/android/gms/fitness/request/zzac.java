// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.zzk;
import com.google.android.gms.internal.zznv;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzad, SensorRequest

public class zzac
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzad();
    private final PendingIntent mPendingIntent;
    private final int zzFG;
    private final String zzFO;
    private final DataType zzYo;
    private final DataSource zzYp;
    private final long zzZQ;
    private final int zzZR;
    private final zznv zzaaN;
    private zzk zzabp;
    int zzabq;
    int zzabr;
    private final long zzabs;
    private final long zzabt;
    private final List zzabu;
    private final long zzabv;
    private final List zzabw;

    zzac(int i, DataSource datasource, DataType datatype, IBinder ibinder, int j, int k, long l, long l1, PendingIntent pendingintent, long l2, int i1, 
            List list, long l3, IBinder ibinder1, String s)
    {
        zzFG = i;
        zzYp = datasource;
        zzYo = datatype;
        long l4;
        if (ibinder == null)
        {
            datasource = null;
        } else
        {
            datasource = com.google.android.gms.fitness.data.zzk.zza.zzav(ibinder);
        }
        zzabp = datasource;
        l4 = l;
        if (l == 0L)
        {
            l4 = j;
        }
        zzZQ = l4;
        zzabt = l2;
        l = l1;
        if (l1 == 0L)
        {
            l = k;
        }
        zzabs = l;
        zzabu = list;
        mPendingIntent = pendingintent;
        zzZR = i1;
        zzabw = Collections.emptyList();
        zzabv = l3;
        if (ibinder1 == null)
        {
            datasource = null;
        } else
        {
            datasource = com.google.android.gms.internal.zznv.zza.zzaS(ibinder1);
        }
        zzaaN = datasource;
        zzFO = s;
    }

    public zzac(DataSource datasource, DataType datatype, zzk zzk1, PendingIntent pendingintent, long l, long l1, long l2, int i, List list, List list1, long l3, zznv zznv1, String s)
    {
        zzFG = 5;
        zzYp = datasource;
        zzYo = datatype;
        zzabp = zzk1;
        mPendingIntent = pendingintent;
        zzZQ = l;
        zzabt = l1;
        zzabs = l2;
        zzZR = i;
        zzabu = list;
        zzabw = list1;
        zzabv = l3;
        zzaaN = zznv1;
        zzFO = s;
    }

    public zzac(SensorRequest sensorrequest, zzk zzk1, PendingIntent pendingintent, zznv zznv1, String s)
    {
        this(sensorrequest.getDataSource(), sensorrequest.getDataType(), zzk1, pendingintent, sensorrequest.getSamplingRate(TimeUnit.MICROSECONDS), sensorrequest.getFastestRate(TimeUnit.MICROSECONDS), sensorrequest.getMaxDeliveryLatency(TimeUnit.MICROSECONDS), sensorrequest.getAccuracyMode(), null, Collections.emptyList(), sensorrequest.zzmh(), zznv1, s);
    }

    private boolean zzb(zzac zzac1)
    {
        return zzw.equal(zzYp, zzac1.zzYp) && zzw.equal(zzYo, zzac1.zzYo) && zzZQ == zzac1.zzZQ && zzabt == zzac1.zzabt && zzabs == zzac1.zzabs && zzZR == zzac1.zzZR && zzw.equal(zzabu, zzac1.zzabu);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof zzac) && zzb((zzac)obj);
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

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, zzYo, zzabp, Long.valueOf(zzZQ), Long.valueOf(zzabt), Long.valueOf(zzabs), Integer.valueOf(zzZR), zzabu
        });
    }

    public String toString()
    {
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", new Object[] {
            zzYo, zzYp, Long.valueOf(zzZQ), Long.valueOf(zzabt), Long.valueOf(zzabs)
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzad.zza(this, parcel, i);
    }

    public long zzlI()
    {
        return zzZQ;
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

    public PendingIntent zzmb()
    {
        return mPendingIntent;
    }

    public long zzmc()
    {
        return zzabt;
    }

    public long zzmd()
    {
        return zzabs;
    }

    public List zzme()
    {
        return zzabu;
    }

    public long zzmf()
    {
        return zzabv;
    }

    IBinder zzmg()
    {
        if (zzabp == null)
        {
            return null;
        } else
        {
            return zzabp.asBinder();
        }
    }

}
