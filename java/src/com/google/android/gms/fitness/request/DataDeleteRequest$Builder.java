// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataDeleteRequest

public static class zzaaR
{

    private long zzON;
    private List zzYA;
    private long zzYq;
    private List zzaaO;
    private List zzaaP;
    private boolean zzaaQ;
    private boolean zzaaR;

    static long zza(zzaaR zzaar)
    {
        return zzaar.zzON;
    }

    static long zzb(zzON zzon)
    {
        return zzon.zzYq;
    }

    static List zzc(zzYq zzyq)
    {
        return zzyq.zzaaO;
    }

    static List zzd(zzaaO zzaao)
    {
        return zzaao.zzYA;
    }

    static List zze(zzYA zzya)
    {
        return zzya.zzaaP;
    }

    static boolean zzf(zzaaP zzaap)
    {
        return zzaap.zzaaQ;
    }

    static boolean zzg(zzaaQ zzaaq)
    {
        return zzaaq.zzaaR;
    }

    private void zzlT()
    {
        if (!zzaaP.isEmpty())
        {
            Iterator iterator = zzaaP.iterator();
            while (iterator.hasNext()) 
            {
                Session session = (Session)iterator.next();
                boolean flag;
                if (session.getStartTime(TimeUnit.MILLISECONDS) >= zzON && session.getEndTime(TimeUnit.MILLISECONDS) <= zzYq)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zzx.zza(flag, "Session %s is outside the time interval [%d, %d]", new Object[] {
                    session, Long.valueOf(zzON), Long.valueOf(zzYq)
                });
            }
        }
    }

    public zzYq addDataSource(DataSource datasource)
    {
        boolean flag1 = true;
        boolean flag;
        if (!zzaaQ)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "All data is already marked for deletion");
        if (datasource != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Must specify a valid data source");
        if (!zzaaO.contains(datasource))
        {
            zzaaO.add(datasource);
        }
        return this;
    }

    public zzaaO addDataType(DataType datatype)
    {
        boolean flag1 = true;
        boolean flag;
        if (!zzaaQ)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "All data is already marked for deletion");
        if (datatype != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Must specify a valid data type");
        if (!zzYA.contains(datatype))
        {
            zzYA.add(datatype);
        }
        return this;
    }

    public zzYA addSession(Session session)
    {
        boolean flag1 = true;
        boolean flag;
        if (!zzaaR)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "All sessions already marked for deletion");
        if (session != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Must specify a valid session");
        if (session.getEndTime(TimeUnit.MILLISECONDS) > 0L)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Must specify a session that has already ended");
        zzaaP.add(session);
        return this;
    }

    public DataDeleteRequest build()
    {
label0:
        {
            boolean flag3 = false;
            boolean flag;
            boolean flag1;
            boolean flag2;
            if (zzON > 0L && zzYq > zzON)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            zzx.zza(flag2, "Must specify a valid time interval");
            if (zzaaQ || !zzaaO.isEmpty() || !zzYA.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (zzaaR || !zzaaP.isEmpty())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (!flag)
            {
                flag2 = flag3;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        zzx.zza(flag2, "No data or session marked for deletion");
        zzlT();
        return new DataDeleteRequest(this, null);
    }

    public zzlT deleteAllData()
    {
        boolean flag;
        if (zzYA.isEmpty() && zzaaO.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Specific data source/type already specified for deletion. DataSources: %s DataTypes: %s", new Object[] {
            zzaaO, zzYA
        });
        zzaaQ = true;
        return this;
    }

    public zzaaQ deleteAllSessions()
    {
        zzx.zzb(zzaaP.isEmpty(), "Specific sessions already added for deletion: %s", new Object[] {
            zzaaP
        });
        zzaaR = true;
        return this;
    }

    public zzaaR setTimeInterval(long l, long l1, TimeUnit timeunit)
    {
        boolean flag;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid start time :%d", new Object[] {
            Long.valueOf(l)
        });
        if (l1 > l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid end time :%d", new Object[] {
            Long.valueOf(l1)
        });
        zzON = timeunit.toMillis(l);
        zzYq = timeunit.toMillis(l1);
        return this;
    }

    public ()
    {
        zzaaO = new ArrayList();
        zzYA = new ArrayList();
        zzaaP = new ArrayList();
        zzaaQ = false;
        zzaaR = false;
    }
}
