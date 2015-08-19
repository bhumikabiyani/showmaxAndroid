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
import com.google.android.gms.internal.zznt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzah

public class SessionReadRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private long zzON;
        private List zzYA;
        private long zzYq;
        private List zzaaO;
        private boolean zzaaZ;
        private String zzabC;
        private boolean zzabD;
        private List zzabE;
        private String zzyL;

        static String zza(Builder builder)
        {
            return builder.zzabC;
        }

        static String zzb(Builder builder)
        {
            return builder.zzyL;
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
            return builder.zzYA;
        }

        static List zzf(Builder builder)
        {
            return builder.zzaaO;
        }

        static boolean zzg(Builder builder)
        {
            return builder.zzabD;
        }

        static boolean zzh(Builder builder)
        {
            return builder.zzaaZ;
        }

        static List zzi(Builder builder)
        {
            return builder.zzabE;
        }

        public SessionReadRequest build()
        {
            boolean flag;
            if (zzON > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid start time: %s", new Object[] {
                Long.valueOf(zzON)
            });
            if (zzYq > 0L && zzYq > zzON)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid end time: %s", new Object[] {
                Long.valueOf(zzYq)
            });
            return new SessionReadRequest(this);
        }

        public Builder enableServerQueries()
        {
            zzaaZ = true;
            return this;
        }

        public Builder excludePackage(String s)
        {
            zzx.zzb(s, "Attempting to use a null package name");
            if (!zzabE.contains(s))
            {
                zzabE.add(s);
            }
            return this;
        }

        public Builder read(DataSource datasource)
        {
            zzx.zzb(datasource, "Attempting to add a null data source");
            if (!zzaaO.contains(datasource))
            {
                zzaaO.add(datasource);
            }
            return this;
        }

        public Builder read(DataType datatype)
        {
            zzx.zzb(datatype, "Attempting to use a null data type");
            if (!zzYA.contains(datatype))
            {
                zzYA.add(datatype);
            }
            return this;
        }

        public Builder readSessionsFromAllApps()
        {
            zzabD = true;
            return this;
        }

        public Builder setSessionId(String s)
        {
            zzyL = s;
            return this;
        }

        public Builder setSessionName(String s)
        {
            zzabC = s;
            return this;
        }

        public Builder setTimeInterval(long l, long l1, TimeUnit timeunit)
        {
            zzON = timeunit.toMillis(l);
            zzYq = timeunit.toMillis(l1);
            return this;
        }

        public Builder()
        {
            zzON = 0L;
            zzYq = 0L;
            zzYA = new ArrayList();
            zzaaO = new ArrayList();
            zzabD = false;
            zzaaZ = false;
            zzabE = new ArrayList();
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzah();
    private final int zzFG;
    private final String zzFO;
    private final long zzON;
    private final List zzYA;
    private final long zzYq;
    private final List zzaaO;
    private final boolean zzaaZ;
    private final String zzabC;
    private boolean zzabD;
    private final List zzabE;
    private final zznt zzabF;
    private final String zzyL;

    SessionReadRequest(int i, String s, String s1, long l, long l1, 
            List list, List list1, boolean flag, boolean flag1, List list2, IBinder ibinder, String s2)
    {
        zzFG = i;
        zzabC = s;
        zzyL = s1;
        zzON = l;
        zzYq = l1;
        zzYA = Collections.unmodifiableList(list);
        zzaaO = Collections.unmodifiableList(list1);
        zzabD = flag;
        zzaaZ = flag1;
        zzabE = list2;
        if (ibinder == null)
        {
            s = null;
        } else
        {
            s = com.google.android.gms.internal.zznt.zza.zzaQ(ibinder);
        }
        zzabF = s;
        zzFO = s2;
    }

    private SessionReadRequest(Builder builder)
    {
        this(Builder.zza(builder), Builder.zzb(builder), Builder.zzc(builder), Builder.zzd(builder), Builder.zze(builder), Builder.zzf(builder), Builder.zzg(builder), Builder.zzh(builder), Builder.zzi(builder), null, null);
    }


    public SessionReadRequest(SessionReadRequest sessionreadrequest, zznt zznt1, String s)
    {
        this(sessionreadrequest.zzabC, sessionreadrequest.zzyL, sessionreadrequest.zzON, sessionreadrequest.zzYq, sessionreadrequest.zzYA, sessionreadrequest.zzaaO, sessionreadrequest.zzabD, sessionreadrequest.zzaaZ, sessionreadrequest.zzabE, zznt1, s);
    }

    public SessionReadRequest(String s, String s1, long l, long l1, List list, 
            List list1, boolean flag, boolean flag1, List list2, zznt zznt1, String s2)
    {
        zzFG = 4;
        zzabC = s;
        zzyL = s1;
        zzON = l;
        zzYq = l1;
        zzYA = Collections.unmodifiableList(list);
        zzaaO = Collections.unmodifiableList(list1);
        zzabD = flag;
        zzaaZ = flag1;
        zzabE = list2;
        zzabF = zznt1;
        zzFO = s2;
    }

    private boolean zzb(SessionReadRequest sessionreadrequest)
    {
        return zzw.equal(zzabC, sessionreadrequest.zzabC) && zzyL.equals(sessionreadrequest.zzyL) && zzON == sessionreadrequest.zzON && zzYq == sessionreadrequest.zzYq && zzw.equal(zzYA, sessionreadrequest.zzYA) && zzw.equal(zzaaO, sessionreadrequest.zzaaO) && zzabD == sessionreadrequest.zzabD && zzabE.equals(sessionreadrequest.zzabE) && zzaaZ == sessionreadrequest.zzaaZ;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof SessionReadRequest) && zzb((SessionReadRequest)obj);
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

    public List getExcludedPackages()
    {
        return zzabE;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    public String getSessionId()
    {
        return zzyL;
    }

    public String getSessionName()
    {
        return zzabC;
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
            zzabC, zzyL, Long.valueOf(zzON), Long.valueOf(zzYq)
        });
    }

    public boolean includeSessionsFromAllApps()
    {
        return zzabD;
    }

    public String toString()
    {
        return zzw.zzk(this).zza("sessionName", zzabC).zza("sessionId", zzyL).zza("startTimeMillis", Long.valueOf(zzON)).zza("endTimeMillis", Long.valueOf(zzYq)).zza("dataTypes", zzYA).zza("dataSources", zzaaO).zza("sessionsFromAllApps", Boolean.valueOf(zzabD)).zza("excludedPackages", zzabE).zza("useServer", Boolean.valueOf(zzaaZ)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzah.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzabF == null)
        {
            return null;
        } else
        {
            return zzabF.asBinder();
        }
    }

    public boolean zzlV()
    {
        return zzaaZ;
    }

    public long zzlp()
    {
        return zzON;
    }

    public long zzlq()
    {
        return zzYq;
    }

    public boolean zzmj()
    {
        return zzabD;
    }

}
