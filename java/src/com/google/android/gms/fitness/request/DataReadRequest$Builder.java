// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataReadRequest

public static class zzaaZ
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

    static List zza(zzaaZ zzaaz)
    {
        return zzaaz.zzYA;
    }

    static List zzb(zzYA zzya)
    {
        return zzya.zzaaO;
    }

    static long zzc(zzaaO zzaao)
    {
        return zzaao.zzON;
    }

    static long zzd(zzON zzon)
    {
        return zzon.zzYq;
    }

    static List zze(zzYq zzyq)
    {
        return zzyq.zzaaT;
    }

    static List zzf(zzaaT zzaat)
    {
        return zzaat.zzaaU;
    }

    static int zzg(zzaaU zzaau)
    {
        return zzaau.zzYE;
    }

    static long zzh(zzYE zzye)
    {
        return zzye.zzaaV;
    }

    static DataSource zzi(zzaaV zzaav)
    {
        return zzaav.zzaaW;
    }

    static int zzj(zzaaW zzaaw)
    {
        return zzaaw.zzaaX;
    }

    static boolean zzk(zzaaX zzaax)
    {
        return zzaax.zzaaY;
    }

    static boolean zzl(zzaaY zzaay)
    {
        return zzaay.zzaaZ;
    }

    public zzaaZ aggregate(DataSource datasource, DataType datatype)
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

    public zzaaU aggregate(DataType datatype, DataType datatype1)
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

    public zzaaT bucketByActivitySegment(int i, TimeUnit timeunit)
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

    public zzaaV bucketByActivitySegment(int i, TimeUnit timeunit, DataSource datasource)
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

    public zzaaV bucketByActivityType(int i, TimeUnit timeunit)
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

    public zzaaV bucketByActivityType(int i, TimeUnit timeunit, DataSource datasource)
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

    public zzaaV bucketBySession(int i, TimeUnit timeunit)
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

    public zzaaV bucketByTime(int i, TimeUnit timeunit)
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
        return new DataReadRequest(this, null);
    }

    public zzYE enableServerQueries()
    {
        zzaaZ = true;
        return this;
    }

    public zzaaZ read(DataSource datasource)
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

    public zzaaO read(DataType datatype)
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

    public zzYA setLimit(int i)
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

    public zzaaX setTimeRange(long l, long l1, TimeUnit timeunit)
    {
        zzON = timeunit.toMillis(l);
        zzYq = timeunit.toMillis(l1);
        return this;
    }

    public ()
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
