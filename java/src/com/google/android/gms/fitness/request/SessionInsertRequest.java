// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zznv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzag

public class SessionInsertRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private List zzYD;
        private Session zzYs;
        private List zzabA;
        private List zzabB;

        static Session zza(Builder builder)
        {
            return builder.zzYs;
        }

        static List zzb(Builder builder)
        {
            return builder.zzYD;
        }

        static List zzc(Builder builder)
        {
            return builder.zzabA;
        }

        private void zzd(DataPoint datapoint)
        {
            zzf(datapoint);
            zze(datapoint);
        }

        private void zze(DataPoint datapoint)
        {
            long l2 = zzYs.getStartTime(TimeUnit.NANOSECONDS);
            long l3 = zzYs.getEndTime(TimeUnit.NANOSECONDS);
            long l4 = datapoint.getStartTime(TimeUnit.NANOSECONDS);
            long l1 = datapoint.getEndTime(TimeUnit.NANOSECONDS);
            if (l4 != 0L && l1 != 0L)
            {
                TimeUnit timeunit = TimeUnit.MILLISECONDS;
                long l = l1;
                if (l1 > l3)
                {
                    l = zzmo.zza(l1, TimeUnit.NANOSECONDS, timeunit);
                }
                boolean flag;
                if (l4 >= l2 && l <= l3)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zzx.zza(flag, "Data point %s has start and end times outside session interval [%d, %d]", new Object[] {
                    datapoint, Long.valueOf(l2), Long.valueOf(l3)
                });
                if (l != datapoint.getEndTime(TimeUnit.NANOSECONDS))
                {
                    Log.w("Fitness", String.format("Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[] {
                        Long.valueOf(datapoint.getEndTime(TimeUnit.NANOSECONDS)), Long.valueOf(l), timeunit
                    }));
                    datapoint.setTimeInterval(l4, l, TimeUnit.NANOSECONDS);
                }
            }
        }

        private void zzf(DataPoint datapoint)
        {
label0:
            {
                TimeUnit timeunit;
                long l;
                long l2;
                long l3;
label1:
                {
                    l2 = zzYs.getStartTime(TimeUnit.NANOSECONDS);
                    l3 = zzYs.getEndTime(TimeUnit.NANOSECONDS);
                    long l1 = datapoint.getTimestamp(TimeUnit.NANOSECONDS);
                    if (l1 == 0L)
                    {
                        break label0;
                    }
                    timeunit = TimeUnit.MILLISECONDS;
                    if (l1 >= l2)
                    {
                        l = l1;
                        if (l1 <= l3)
                        {
                            break label1;
                        }
                    }
                    l = zzmo.zza(l1, TimeUnit.NANOSECONDS, timeunit);
                }
                boolean flag;
                if (l >= l2 && l <= l3)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zzx.zza(flag, "Data point %s has time stamp outside session interval [%d, %d]", new Object[] {
                    datapoint, Long.valueOf(l2), Long.valueOf(l3)
                });
                if (datapoint.getTimestamp(TimeUnit.NANOSECONDS) != l)
                {
                    Log.w("Fitness", String.format("Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[] {
                        Long.valueOf(datapoint.getTimestamp(TimeUnit.NANOSECONDS)), Long.valueOf(l), timeunit
                    }));
                    datapoint.setTimestamp(l, TimeUnit.NANOSECONDS);
                }
            }
        }

        private void zzmi()
        {
            for (Iterator iterator = zzYD.iterator(); iterator.hasNext();)
            {
                Iterator iterator2 = ((DataSet)iterator.next()).getDataPoints().iterator();
                while (iterator2.hasNext()) 
                {
                    zzd((DataPoint)iterator2.next());
                }
            }

            for (Iterator iterator1 = zzabA.iterator(); iterator1.hasNext(); zzd((DataPoint)iterator1.next())) { }
        }

        public Builder addAggregateDataPoint(DataPoint datapoint)
        {
            com.google.android.gms.fitness.data.DataSource datasource;
            long l;
            long l1;
            boolean flag;
            if (datapoint != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid aggregate data point.");
            l = datapoint.getStartTime(TimeUnit.NANOSECONDS);
            l1 = datapoint.getEndTime(TimeUnit.NANOSECONDS);
            if (l > 0L && l1 > l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Aggregate data point should have valid start and end times: %s", new Object[] {
                datapoint
            });
            datasource = datapoint.getDataSource();
            if (!zzabB.contains(datasource))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Data set/Aggregate data point for this data source %s is already added.", new Object[] {
                datasource
            });
            zzabB.add(datasource);
            zzabA.add(datapoint);
            return this;
        }

        public Builder addDataSet(DataSet dataset)
        {
            boolean flag1 = true;
            com.google.android.gms.fitness.data.DataSource datasource;
            boolean flag;
            if (dataset != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid data set.");
            datasource = dataset.getDataSource();
            if (!zzabB.contains(datasource))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Data set for this data source %s is already added.", new Object[] {
                datasource
            });
            if (!dataset.getDataPoints().isEmpty())
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "No data points specified in the input data set.");
            zzabB.add(datasource);
            zzYD.add(dataset);
            return this;
        }

        public SessionInsertRequest build()
        {
            boolean flag1 = true;
            boolean flag;
            if (zzYs != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must specify a valid session.");
            if (zzYs.getEndTime(TimeUnit.MILLISECONDS) != 0L)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must specify a valid end time, cannot insert a continuing session.");
            zzmi();
            return new SessionInsertRequest(this);
        }

        public Builder setSession(Session session)
        {
            zzYs = session;
            return this;
        }

        public Builder()
        {
            zzYD = new ArrayList();
            zzabA = new ArrayList();
            zzabB = new ArrayList();
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzag();
    private final int zzFG;
    private final String zzFO;
    private final List zzYD;
    private final Session zzYs;
    private final zznv zzaaN;
    private final List zzabA;

    SessionInsertRequest(int i, Session session, List list, List list1, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYs = session;
        zzYD = Collections.unmodifiableList(list);
        zzabA = Collections.unmodifiableList(list1);
        if (ibinder == null)
        {
            session = null;
        } else
        {
            session = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = session;
        zzFO = s;
    }

    public SessionInsertRequest(Session session, List list, List list1, zznv zznv1, String s)
    {
        zzFG = 2;
        zzYs = session;
        zzYD = Collections.unmodifiableList(list);
        zzabA = Collections.unmodifiableList(list1);
        zzaaN = zznv1;
        zzFO = s;
    }

    private SessionInsertRequest(Builder builder)
    {
        this(Builder.zza(builder), Builder.zzb(builder), Builder.zzc(builder), null, null);
    }


    public SessionInsertRequest(SessionInsertRequest sessioninsertrequest, zznv zznv1, String s)
    {
        this(sessioninsertrequest.zzYs, sessioninsertrequest.zzYD, sessioninsertrequest.zzabA, zznv1, s);
    }

    private boolean zzb(SessionInsertRequest sessioninsertrequest)
    {
        return zzw.equal(zzYs, sessioninsertrequest.zzYs) && zzw.equal(zzYD, sessioninsertrequest.zzYD) && zzw.equal(zzabA, sessioninsertrequest.zzabA);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof SessionInsertRequest) && zzb((SessionInsertRequest)obj);
    }

    public List getAggregateDataPoints()
    {
        return zzabA;
    }

    public List getDataSets()
    {
        return zzYD;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    public Session getSession()
    {
        return zzYs;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYs, zzYD, zzabA
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("session", zzYs).zza("dataSets", zzYD).zza("aggregateDataPoints", zzabA).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzag.zza(this, parcel, i);
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

}
