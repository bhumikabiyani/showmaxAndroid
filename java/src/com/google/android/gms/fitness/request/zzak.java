// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzal

public class zzak
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzal();
    private final int zzFG;
    private final String zzFO;
    private final Session zzYs;
    private final zznv zzaaN;

    zzak(int i, Session session, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYs = session;
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

    public zzak(Session session, zznv zznv1, String s)
    {
        zzx.zzb(session.isOngoing(), "Cannot start a session which has already ended");
        zzFG = 2;
        zzYs = session;
        zzaaN = zznv1;
        zzFO = s;
    }

    private boolean zzb(zzak zzak1)
    {
        return zzw.equal(zzYs, zzak1.zzYs);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof zzak) && zzb((zzak)obj);
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
            zzYs
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("session", zzYs).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzal.zza(this, parcel, i);
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
