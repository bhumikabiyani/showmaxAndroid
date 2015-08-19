// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzm

public class SessionStopResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    private final int zzFG;
    private final Status zzHb;
    private final List zzaaP;

    SessionStopResult(int i, Status status, List list)
    {
        zzFG = i;
        zzHb = status;
        zzaaP = Collections.unmodifiableList(list);
    }

    public SessionStopResult(Status status, List list)
    {
        zzFG = 3;
        zzHb = status;
        zzaaP = Collections.unmodifiableList(list);
    }

    public static SessionStopResult zzG(Status status)
    {
        return new SessionStopResult(status, Collections.emptyList());
    }

    private boolean zzb(SessionStopResult sessionstopresult)
    {
        return zzHb.equals(sessionstopresult.zzHb) && zzw.equal(zzaaP, sessionstopresult.zzaaP);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof SessionStopResult) && zzb((SessionStopResult)obj);
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
            zzHb, zzaaP
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("sessions", zzaaP).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

}
