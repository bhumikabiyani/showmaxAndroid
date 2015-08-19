// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zznv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzd

public class DataDeleteRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private long zzON;
        private List zzYA;
        private long zzYq;
        private List zzaaO;
        private List zzaaP;
        private boolean zzaaQ;
        private boolean zzaaR;

        static long zza(Builder builder)
        {
            return builder.zzON;
        }

        static long zzb(Builder builder)
        {
            return builder.zzYq;
        }

        static List zzc(Builder builder)
        {
            return builder.zzaaO;
        }

        static List zzd(Builder builder)
        {
            return builder.zzYA;
        }

        static List zze(Builder builder)
        {
            return builder.zzaaP;
        }

        static boolean zzf(Builder builder)
        {
            return builder.zzaaQ;
        }

        static boolean zzg(Builder builder)
        {
            return builder.zzaaR;
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

        public Builder addDataSource(DataSource datasource)
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

        public Builder addDataType(DataType datatype)
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

        public Builder addSession(Session session)
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
            return new DataDeleteRequest(this);
        }

        public Builder deleteAllData()
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

        public Builder deleteAllSessions()
        {
            zzx.zzb(zzaaP.isEmpty(), "Specific sessions already added for deletion: %s", new Object[] {
                zzaaP
            });
            zzaaR = true;
            return this;
        }

        public Builder setTimeInterval(long l, long l1, TimeUnit timeunit)
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

        public Builder()
        {
            zzaaO = new ArrayList();
            zzYA = new ArrayList();
            zzaaP = new ArrayList();
            zzaaQ = false;
            zzaaR = false;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    private final int zzFG;
    private final String zzFO;
    private final long zzON;
    private final List zzYA;
    private final long zzYq;
    private final zznv zzaaN;
    private final List zzaaO;
    private final List zzaaP;
    private final boolean zzaaQ;
    private final boolean zzaaR;

    DataDeleteRequest(int i, long l, long l1, List list, List list1, 
            List list2, boolean flag, boolean flag1, IBinder ibinder, String s)
    {
        zzFG = i;
        zzON = l;
        zzYq = l1;
        zzaaO = Collections.unmodifiableList(list);
        zzYA = Collections.unmodifiableList(list1);
        zzaaP = list2;
        zzaaQ = flag;
        zzaaR = flag1;
        if (ibinder == null)
        {
            list = null;
        } else
        {
            list = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = list;
        zzFO = s;
    }

    public DataDeleteRequest(long l, long l1, List list, List list1, List list2, 
            boolean flag, boolean flag1, zznv zznv1, String s)
    {
        zzFG = 2;
        zzON = l;
        zzYq = l1;
        zzaaO = Collections.unmodifiableList(list);
        zzYA = Collections.unmodifiableList(list1);
        zzaaP = list2;
        zzaaQ = flag;
        zzaaR = flag1;
        zzaaN = zznv1;
        zzFO = s;
    }

    private DataDeleteRequest(Builder builder)
    {
        this(Builder.zza(builder), Builder.zzb(builder), Builder.zzc(builder), Builder.zzd(builder), Builder.zze(builder), Builder.zzf(builder), Builder.zzg(builder), null, null);
    }


    public DataDeleteRequest(DataDeleteRequest datadeleterequest, zznv zznv1, String s)
    {
        this(datadeleterequest.zzON, datadeleterequest.zzYq, datadeleterequest.zzaaO, datadeleterequest.zzYA, datadeleterequest.zzaaP, datadeleterequest.zzaaQ, datadeleterequest.zzaaR, zznv1, s);
    }

    private boolean zzb(DataDeleteRequest datadeleterequest)
    {
        return zzON == datadeleterequest.zzON && zzYq == datadeleterequest.zzYq && zzw.equal(zzaaO, datadeleterequest.zzaaO) && zzw.equal(zzYA, datadeleterequest.zzYA) && zzw.equal(zzaaP, datadeleterequest.zzaaP) && zzaaQ == datadeleterequest.zzaaQ && zzaaR == datadeleterequest.zzaaR;
    }

    public boolean deleteAllData()
    {
        return zzaaQ;
    }

    public boolean deleteAllSessions()
    {
        return zzaaR;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof DataDeleteRequest) && zzb((DataDeleteRequest)obj);
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

    public String getPackageName()
    {
        return zzFO;
    }

    public List getSessions()
    {
        return zzaaP;
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
            Long.valueOf(zzON), Long.valueOf(zzYq)
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("startTimeMillis", Long.valueOf(zzON)).zza("endTimeMillis", Long.valueOf(zzYq)).zza("dataSources", zzaaO).zza("dateTypes", zzYA).zza("sessions", zzaaP).zza("deleteAllData", Boolean.valueOf(zzaaQ)).zza("deleteAllSessions", Boolean.valueOf(zzaaR)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
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

    public boolean zzlR()
    {
        return zzaaQ;
    }

    public boolean zzlS()
    {
        return zzaaR;
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
