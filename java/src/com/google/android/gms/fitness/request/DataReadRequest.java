// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzng;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzg

public class DataReadRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private long zzON;
        private List zzYA;
        private int zzYE;
        private long zzYq;
        private List zzaaO;
        private List zzaaT;
        private List zzaaU;
        private long zzaaV;
        private DataSource zzaaW;
        private int zzaaX;
        private boolean zzaaY;
        private boolean zzaaZ;

        static List zza(Builder builder)
        {
            return builder.zzYA;
        }

        static List zzb(Builder builder)
        {
            return builder.zzaaO;
        }

        static long zzc(Builder builder)
        {
            return builder.zzON;
        }

        static long zzd(Builder builder)
        {
            return builder.zzYq;
        }

        static List zze(Builder builder)
        {
            return builder.zzaaT;
        }

        static List zzf(Builder builder)
        {
            return builder.zzaaU;
        }

        static int zzg(Builder builder)
        {
            return builder.zzYE;
        }

        static long zzh(Builder builder)
        {
            return builder.zzaaV;
        }

        static DataSource zzi(Builder builder)
        {
            return builder.zzaaW;
        }

        static int zzj(Builder builder)
        {
            return builder.zzaaX;
        }

        static boolean zzk(Builder builder)
        {
            return builder.zzaaY;
        }

        static boolean zzl(Builder builder)
        {
            return builder.zzaaZ;
        }

        public Builder aggregate(DataSource datasource, DataType datatype)
        {
            zzx.zzb(datasource, "Attempting to add a null data source");
            DataType datatype1;
            boolean flag;
            if (!zzaaO.contains(datasource))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Cannot add the same data source for aggregated and detailed");
            datatype1 = datasource.getDataType();
            zzx.zzb(DataType.AGGREGATE_INPUT_TYPES.contains(datatype1), "Unsupported input data type specified for aggregation: %s", new Object[] {
                datatype1
            });
            zzx.zzb(DataType.getAggregatesForInput(datatype1).contains(datatype), "Invalid output aggregate data type specified: %s -> %s", new Object[] {
                datatype1, datatype
            });
            if (!zzaaU.contains(datasource))
            {
                zzaaU.add(datasource);
            }
            return this;
        }

        public Builder aggregate(DataType datatype, DataType datatype1)
        {
            zzx.zzb(datatype, "Attempting to use a null data type");
            boolean flag;
            if (!zzYA.contains(datatype))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Cannot add the same data type as aggregated and detailed");
            zzx.zzb(DataType.AGGREGATE_INPUT_TYPES.contains(datatype), "Unsupported input data type specified for aggregation: %s", new Object[] {
                datatype
            });
            zzx.zzb(DataType.getAggregatesForInput(datatype).contains(datatype1), "Invalid output aggregate data type specified: %s -> %s", new Object[] {
                datatype, datatype1
            });
            if (!zzaaT.contains(datatype))
            {
                zzaaT.add(datatype);
            }
            return this;
        }

        public Builder bucketByActivitySegment(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            zzYE = 4;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public Builder bucketByActivitySegment(int i, TimeUnit timeunit, DataSource datasource)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            if (datasource != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid activity data source specified");
            zzx.zzb(datasource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", new Object[] {
                datasource
            });
            zzaaW = datasource;
            zzYE = 4;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public Builder bucketByActivityType(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            zzYE = 3;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public Builder bucketByActivityType(int i, TimeUnit timeunit, DataSource datasource)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            if (datasource != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid activity data source specified");
            zzx.zzb(datasource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", new Object[] {
                datasource
            });
            zzaaW = datasource;
            zzYE = 3;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public Builder bucketBySession(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            zzYE = 2;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public Builder bucketByTime(int i, TimeUnit timeunit)
        {
            boolean flag;
            if (zzYE == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Bucketing strategy already set to %s", new Object[] {
                Integer.valueOf(zzYE)
            });
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Must specify a valid minimum duration for an activity segment: %d", new Object[] {
                Integer.valueOf(i)
            });
            zzYE = 1;
            zzaaV = timeunit.toMillis(i);
            return this;
        }

        public DataReadRequest build()
        {
label0:
            {
                boolean flag2 = true;
                boolean flag;
                boolean flag1;
                if (!zzaaO.isEmpty() || !zzYA.isEmpty() || !zzaaU.isEmpty() || !zzaaT.isEmpty())
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                zzx.zza(flag1, "Must add at least one data source (aggregated or detailed)");
                if (zzON > 0L)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                zzx.zza(flag1, "Invalid start time: %s", new Object[] {
                    Long.valueOf(zzON)
                });
                if (zzYq > 0L && zzYq > zzON)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                zzx.zza(flag1, "Invalid end time: %s", new Object[] {
                    Long.valueOf(zzYq)
                });
                if (zzaaU.isEmpty() && zzaaT.isEmpty())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    flag1 = flag2;
                    if (zzYE == 0)
                    {
                        break label0;
                    }
                }
                if (!flag && zzYE != 0)
                {
                    flag1 = flag2;
                } else
                {
                    flag1 = false;
                }
            }
            zzx.zza(flag1, "Must specify a valid bucketing strategy while requesting aggregation");
            return new DataReadRequest(this);
        }

        public Builder enableServerQueries()
        {
            zzaaZ = true;
            return this;
        }

        public Builder read(DataSource datasource)
        {
            zzx.zzb(datasource, "Attempting to add a null data source");
            boolean flag;
            if (!zzaaU.contains(datasource))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Cannot add the same data source as aggregated and detailed");
            if (!zzaaO.contains(datasource))
            {
                zzaaO.add(datasource);
            }
            return this;
        }

        public Builder read(DataType datatype)
        {
            zzx.zzb(datatype, "Attempting to use a null data type");
            boolean flag;
            if (!zzaaT.contains(datatype))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Cannot add the same data type as aggregated and detailed");
            if (!zzYA.contains(datatype))
            {
                zzYA.add(datatype);
            }
            return this;
        }

        public Builder setLimit(int i)
        {
            boolean flag;
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid limit %d is specified", new Object[] {
                Integer.valueOf(i)
            });
            zzaaX = i;
            return this;
        }

        public Builder setTimeRange(long l, long l1, TimeUnit timeunit)
        {
            zzON = timeunit.toMillis(l);
            zzYq = timeunit.toMillis(l1);
            return this;
        }

        public Builder()
        {
            zzYA = new ArrayList();
            zzaaO = new ArrayList();
            zzaaT = new ArrayList();
            zzaaU = new ArrayList();
            zzYE = 0;
            zzaaV = 0L;
            zzaaX = 0;
            zzaaY = false;
            zzaaZ = false;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzg();
    public static final int NO_LIMIT = 0;
    private final int zzFG;
    private final String zzFO;
    private final long zzON;
    private final List zzYA;
    private final int zzYE;
    private final long zzYq;
    private final List zzaaO;
    private final List zzaaT;
    private final List zzaaU;
    private final long zzaaV;
    private final DataSource zzaaW;
    private final int zzaaX;
    private final boolean zzaaY;
    private final boolean zzaaZ;
    private final zzng zzaba;

    DataReadRequest(int i, List list, List list1, long l, long l1, 
            List list2, List list3, int j, long l2, DataSource datasource, int k, 
            boolean flag, boolean flag1, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYA = Collections.unmodifiableList(list);
        zzaaO = Collections.unmodifiableList(list1);
        zzON = l;
        zzYq = l1;
        zzaaT = Collections.unmodifiableList(list2);
        zzaaU = Collections.unmodifiableList(list3);
        zzYE = j;
        zzaaV = l2;
        zzaaW = datasource;
        zzaaX = k;
        zzaaY = flag;
        zzaaZ = flag1;
        if (ibinder == null)
        {
            list = null;
        } else
        {
            list = com.google.android.gms.internal.zzng.zza.zzaD(ibinder);
        }
        zzaba = list;
        zzFO = s;
    }

    private DataReadRequest(Builder builder)
    {
        this(Builder.zza(builder), Builder.zzb(builder), Builder.zzc(builder), Builder.zzd(builder), Builder.zze(builder), Builder.zzf(builder), Builder.zzg(builder), Builder.zzh(builder), Builder.zzi(builder), Builder.zzj(builder), Builder.zzk(builder), Builder.zzl(builder), null, null);
    }


    public DataReadRequest(DataReadRequest datareadrequest, zzng zzng1, String s)
    {
        this(datareadrequest.zzYA, datareadrequest.zzaaO, datareadrequest.zzON, datareadrequest.zzYq, datareadrequest.zzaaT, datareadrequest.zzaaU, datareadrequest.zzYE, datareadrequest.zzaaV, datareadrequest.zzaaW, datareadrequest.zzaaX, datareadrequest.zzaaY, datareadrequest.zzaaZ, zzng1, s);
    }

    public DataReadRequest(List list, List list1, long l, long l1, List list2, 
            List list3, int i, long l2, DataSource datasource, int j, boolean flag, 
            boolean flag1, zzng zzng1, String s)
    {
        zzFG = 3;
        zzYA = Collections.unmodifiableList(list);
        zzaaO = Collections.unmodifiableList(list1);
        zzON = l;
        zzYq = l1;
        zzaaT = Collections.unmodifiableList(list2);
        zzaaU = Collections.unmodifiableList(list3);
        zzYE = i;
        zzaaV = l2;
        zzaaW = datasource;
        zzaaX = j;
        zzaaY = flag;
        zzaaZ = flag1;
        zzaba = zzng1;
        zzFO = s;
    }

    private boolean zzb(DataReadRequest datareadrequest)
    {
        return zzYA.equals(datareadrequest.zzYA) && zzaaO.equals(datareadrequest.zzaaO) && zzON == datareadrequest.zzON && zzYq == datareadrequest.zzYq && zzYE == datareadrequest.zzYE && zzaaU.equals(datareadrequest.zzaaU) && zzaaT.equals(datareadrequest.zzaaT) && zzw.equal(zzaaW, datareadrequest.zzaaW) && zzaaV == datareadrequest.zzaaV && zzaaZ == datareadrequest.zzaaZ;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataReadRequest) && zzb((DataReadRequest)obj);
    }

    public DataSource getActivityDataSource()
    {
        return zzaaW;
    }

    public List getAggregatedDataSources()
    {
        return zzaaU;
    }

    public List getAggregatedDataTypes()
    {
        return zzaaT;
    }

    public long getBucketDuration(TimeUnit timeunit)
    {
        return timeunit.convert(zzaaV, TimeUnit.MILLISECONDS);
    }

    public int getBucketType()
    {
        return zzYE;
    }

    public List getDataSources()
    {
        return zzaaO;
    }

    public List getDataTypes()
    {
        return zzYA;
    }

    public long getEndTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzYq, TimeUnit.MILLISECONDS);
    }

    public int getLimit()
    {
        return zzaaX;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    public long getStartTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzON, TimeUnit.MILLISECONDS);
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(zzYE), Long.valueOf(zzON), Long.valueOf(zzYq)
        });
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DataReadRequest{");
        if (!zzYA.isEmpty())
        {
            for (Iterator iterator = zzYA.iterator(); iterator.hasNext(); stringbuilder.append(((DataType)iterator.next()).zzlB()).append(" ")) { }
        }
        if (!zzaaO.isEmpty())
        {
            for (Iterator iterator1 = zzaaO.iterator(); iterator1.hasNext(); stringbuilder.append(((DataSource)iterator1.next()).toDebugString()).append(" ")) { }
        }
        if (zzYE != 0)
        {
            stringbuilder.append("bucket by ").append(Bucket.zzdg(zzYE));
            if (zzaaV > 0L)
            {
                stringbuilder.append(" >").append(zzaaV).append("ms");
            }
            stringbuilder.append(": ");
        }
        if (!zzaaT.isEmpty())
        {
            for (Iterator iterator2 = zzaaT.iterator(); iterator2.hasNext(); stringbuilder.append(((DataType)iterator2.next()).zzlB()).append(" ")) { }
        }
        if (!zzaaU.isEmpty())
        {
            for (Iterator iterator3 = zzaaU.iterator(); iterator3.hasNext(); stringbuilder.append(((DataSource)iterator3.next()).toDebugString()).append(" ")) { }
        }
        stringbuilder.append(String.format("(%tF %tT - %tF %tT)", new Object[] {
            Long.valueOf(zzON), Long.valueOf(zzON), Long.valueOf(zzYq), Long.valueOf(zzYq)
        }));
        if (zzaaW != null)
        {
            stringbuilder.append("activities: ").append(zzaaW.toDebugString());
        }
        if (zzaaZ)
        {
            stringbuilder.append(" +server");
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzg.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzaba == null)
        {
            return null;
        } else
        {
            return zzaba.asBinder();
        }
    }

    public boolean zzlV()
    {
        return zzaaZ;
    }

    public boolean zzlW()
    {
        return zzaaY;
    }

    public long zzlX()
    {
        return zzaaV;
    }

    public long zzlp()
    {
        return zzON;
    }

    public long zzlq()
    {
        return zzYq;
    }

}
