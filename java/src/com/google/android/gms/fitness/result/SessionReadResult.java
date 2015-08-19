// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.zzq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzl

public class SessionReadResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzl();
    private final int zzFG;
    private final Status zzHb;
    private final List zzaaP;
    private final List zzabU;

    SessionReadResult(int i, List list, List list1, Status status)
    {
        zzFG = i;
        zzaaP = list;
        zzabU = Collections.unmodifiableList(list1);
        zzHb = status;
    }

    public SessionReadResult(List list, List list1, Status status)
    {
        zzFG = 3;
        zzaaP = list;
        zzabU = Collections.unmodifiableList(list1);
        zzHb = status;
    }

    public static SessionReadResult zzF(Status status)
    {
        return new SessionReadResult(new ArrayList(), new ArrayList(), status);
    }

    private boolean zzb(SessionReadResult sessionreadresult)
    {
        return zzHb.equals(sessionreadresult.zzHb) && zzw.equal(zzaaP, sessionreadresult.zzaaP) && zzw.equal(zzabU, sessionreadresult.zzabU);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof SessionReadResult) && zzb((SessionReadResult)obj);
    }

    public List getDataSet(Session session)
    {
        zzx.zzb(zzaaP.contains(session), "Attempting to read data for session %s which was not returned", new Object[] {
            session
        });
        ArrayList arraylist = new ArrayList();
        Iterator iterator = zzabU.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            zzq zzq1 = (zzq)iterator.next();
            if (zzw.equal(session, zzq1.getSession()))
            {
                arraylist.add(zzq1.zzlH());
            }
        } while (true);
        return arraylist;
    }

    public List getDataSet(Session session, DataType datatype)
    {
        zzx.zzb(zzaaP.contains(session), "Attempting to read data for session %s which was not returned", new Object[] {
            session
        });
        ArrayList arraylist = new ArrayList();
        Iterator iterator = zzabU.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            zzq zzq1 = (zzq)iterator.next();
            if (zzw.equal(session, zzq1.getSession()) && datatype.equals(zzq1.zzlH().getDataType()))
            {
                arraylist.add(zzq1.zzlH());
            }
        } while (true);
        return arraylist;
    }

    public List getSessions()
    {
        return zzaaP;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzHb, zzaaP, zzabU
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("sessions", zzaaP).zza("sessionDataSets", zzabU).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzl.zza(this, parcel, i);
    }

    public List zzmt()
    {
        return zzabU;
    }

}
