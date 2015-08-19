// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.ChangeSequenceNumber;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzad

public class GetChangesRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzad();
    final int zzFG;
    final ChangeSequenceNumber zzUv;
    final int zzUw;
    final List zzUx;
    private final Set zzUy;

    GetChangesRequest(int i, ChangeSequenceNumber changesequencenumber, int j, List list)
    {
        Object obj;
        if (list == null)
        {
            obj = null;
        } else
        {
            obj = new HashSet(list);
        }
        this(i, changesequencenumber, j, list, ((Set) (obj)));
    }

    private GetChangesRequest(int i, ChangeSequenceNumber changesequencenumber, int j, List list, Set set)
    {
        zzFG = i;
        zzUv = changesequencenumber;
        zzUw = j;
        zzUx = list;
        zzUy = set;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzad.zza(this, parcel, i);
    }

}
