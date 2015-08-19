// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.SystemClock;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;
import java.util.concurrent.TimeUnit;

public class SensorRequest
{
    public static class Builder
    {

        private DataType zzYo;
        private DataSource zzYp;
        private long zzZQ;
        private int zzZR;
        private long zzabs;
        private long zzabt;
        private long zzaby;
        private boolean zzabz;

        static DataSource zza(Builder builder)
        {
            return builder.zzYp;
        }

        static DataType zzb(Builder builder)
        {
            return builder.zzYo;
        }

        static long zzc(Builder builder)
        {
            return builder.zzZQ;
        }

        static long zzd(Builder builder)
        {
            return builder.zzabt;
        }

        static long zze(Builder builder)
        {
            return builder.zzabs;
        }

        static int zzf(Builder builder)
        {
            return builder.zzZR;
        }

        static long zzg(Builder builder)
        {
            return builder.zzaby;
        }

        public SensorRequest build()
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
            return new SensorRequest(this);
        }

        public Builder setAccuracyMode(int i)
        {
            zzZR = SensorRequest.zzdP(i);
            return this;
        }

        public Builder setDataSource(DataSource datasource)
        {
            zzYp = datasource;
            return this;
        }

        public Builder setDataType(DataType datatype)
        {
            zzYo = datatype;
            return this;
        }

        public Builder setFastestRate(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Cannot use a negative interval");
            zzabz = true;
            zzabt = timeunit.toMicros(i);
            return this;
        }

        public Builder setMaxDeliveryLatency(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Cannot use a negative delivery interval");
            zzabs = timeunit.toMicros(i);
            return this;
        }

        public Builder setSamplingRate(long l, TimeUnit timeunit)
        {
            boolean flag;
            if (l >= 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Cannot use a negative sampling interval");
            zzZQ = timeunit.toMicros(l);
            if (!zzabz)
            {
                zzabt = zzZQ / 2L;
            }
            return this;
        }

        public Builder setTimeout(long l, TimeUnit timeunit)
        {
            boolean flag1 = true;
            boolean flag;
            if (l > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid time out value specified: %d", new Object[] {
                Long.valueOf(l)
            });
            if (timeunit != null)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid time unit specified");
            zzaby = timeunit.toMicros(l);
            return this;
        }

        public Builder()
        {
            zzZQ = -1L;
            zzabt = 0L;
            zzabs = 0L;
            zzabz = false;
            zzZR = 2;
            zzaby = 0x7fffffffffffffffL;
        }
    }


    public static final int ACCURACY_MODE_DEFAULT = 2;
    public static final int ACCURACY_MODE_HIGH = 3;
    public static final int ACCURACY_MODE_LOW = 1;
    private final DataType zzYo;
    private final DataSource zzYp;
    private final long zzZQ;
    private final int zzZR;
    private final long zzabs;
    private final long zzabt;
    private final LocationRequest zzabx;
    private final long zzaby;

    private SensorRequest(DataSource datasource, LocationRequest locationrequest)
    {
        zzabx = locationrequest;
        zzZQ = TimeUnit.MILLISECONDS.toMicros(locationrequest.getInterval());
        zzabt = TimeUnit.MILLISECONDS.toMicros(locationrequest.getFastestInterval());
        zzabs = zzZQ;
        zzYo = datasource.getDataType();
        zzZR = zza(locationrequest);
        zzYp = datasource;
        long l = locationrequest.getExpirationTime();
        if (l == 0x7fffffffffffffffL)
        {
            zzaby = 0x7fffffffffffffffL;
            return;
        } else
        {
            zzaby = TimeUnit.MILLISECONDS.toMicros(l - SystemClock.elapsedRealtime());
            return;
        }
    }

    private SensorRequest(Builder builder)
    {
        zzYp = Builder.zza(builder);
        zzYo = Builder.zzb(builder);
        zzZQ = Builder.zzc(builder);
        zzabt = Builder.zzd(builder);
        zzabs = Builder.zze(builder);
        zzZR = Builder.zzf(builder);
        zzabx = null;
        zzaby = Builder.zzg(builder);
    }


    public static SensorRequest fromLocationRequest(DataSource datasource, LocationRequest locationrequest)
    {
        return new SensorRequest(datasource, locationrequest);
    }

    private static int zza(LocationRequest locationrequest)
    {
        switch (locationrequest.getPriority())
        {
        default:
            return 2;

        case 100: // 'd'
            return 3;

        case 104: // 'h'
            return 1;
        }
    }

    private boolean zza(SensorRequest sensorrequest)
    {
        return zzw.equal(zzYp, sensorrequest.zzYp) && zzw.equal(zzYo, sensorrequest.zzYo) && zzZQ == sensorrequest.zzZQ && zzabt == sensorrequest.zzabt && zzabs == sensorrequest.zzabs && zzZR == sensorrequest.zzZR && zzw.equal(zzabx, sensorrequest.zzabx) && zzaby == sensorrequest.zzaby;
    }

    public static int zzdP(int i)
    {
        int j = i;
        switch (i)
        {
        case 2: // '\002'
        default:
            j = 2;
            // fall through

        case 1: // '\001'
        case 3: // '\003'
            return j;
        }
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof SensorRequest) && zza((SensorRequest)obj);
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

    public long getFastestRate(TimeUnit timeunit)
    {
        return timeunit.convert(zzabt, TimeUnit.MICROSECONDS);
    }

    public long getMaxDeliveryLatency(TimeUnit timeunit)
    {
        return timeunit.convert(zzabs, TimeUnit.MICROSECONDS);
    }

    public long getSamplingRate(TimeUnit timeunit)
    {
        return timeunit.convert(zzZQ, TimeUnit.MICROSECONDS);
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, zzYo, Long.valueOf(zzZQ), Long.valueOf(zzabt), Long.valueOf(zzabs), Integer.valueOf(zzZR), zzabx, Long.valueOf(zzaby)
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("dataSource", zzYp).zza("dataType", zzYo).zza("samplingRateMicros", Long.valueOf(zzZQ)).zza("deliveryLatencyMicros", Long.valueOf(zzabs)).zza("timeOutMicros", Long.valueOf(zzaby)).toString();
    }

    public long zzmh()
    {
        return zzaby;
    }
}
