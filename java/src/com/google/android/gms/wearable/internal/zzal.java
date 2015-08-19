// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzam

public class zzal
    implements SafeParcelable, MessageEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new zzam();
    final int zzFG;
    private final int zzRV;
    private final String zzaGw;
    private final byte zzakd[];
    private final String zzanN;

    zzal(int i, int j, String s, byte abyte0[], String s1)
    {
        zzFG = i;
        zzRV = j;
        zzaGw = s;
        zzakd = abyte0;
        zzanN = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public byte[] getData()
    {
        return zzakd;
    }

    public String getPath()
    {
        return zzaGw;
    }

    public int getRequestId()
    {
        return zzRV;
    }

    public String getSourceNodeId()
    {
        return zzanN;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("MessageEventParcelable[").append(zzRV).append(",").append(zzaGw).append(", size=");
        Object obj;
        if (zzakd == null)
        {
            obj = "null";
        } else
        {
            obj = Integer.valueOf(zzakd.length);
        }
        return stringbuilder.append(obj).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzam.zza(this, parcel, i);
    }

}
