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
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzi

public class ListSubscriptionsResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzi();
    private final int zzFG;
    private final Status zzHb;
    private final List zzabT;

    ListSubscriptionsResult(int i, List list, Status status)
    {
        zzFG = i;
        zzabT = list;
        zzHb = status;
    }

    public ListSubscriptionsResult(List list, Status status)
    {
        zzFG = 3;
        zzabT = Collections.unmodifiableList(list);
        zzHb = (Status)zzx.zzb(status, "status");
    }

    public static ListSubscriptionsResult zzE(Status status)
    {
        return new ListSubscriptionsResult(Collections.emptyList(), status);
    }

    private boolean zzb(ListSubscriptionsResult listsubscriptionsresult)
    {
        return zzHb.equals(listsubscriptionsresult.zzHb) && zzw.equal(zzabT, listsubscriptionsresult.zzabT);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof ListSubscriptionsResult) && zzb((ListSubscriptionsResult)obj);
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public List getSubscriptions()
    {
        return zzabT;
    }

    public List getSubscriptions(DataType datatype)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = zzabT.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Subscription subscription = (Subscription)iterator.next();
            if (datatype.equals(subscription.zzlJ()))
            {
                arraylist.add(subscription);
            }
        } while (true);
        return Collections.unmodifiableList(arraylist);
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzHb, zzabT
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("subscriptions", zzabT).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzi.zza(this, parcel, i);
    }

}
