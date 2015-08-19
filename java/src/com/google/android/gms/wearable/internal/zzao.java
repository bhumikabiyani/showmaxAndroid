// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Node;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzap

public class zzao
    implements SafeParcelable, Node
{

    public static final android.os.Parcelable.Creator CREATOR = new zzap();
    private final String zzFA;
    final int zzFG;
    private final String zzSJ;

    zzao(int i, String s, String s1)
    {
        zzFG = i;
        zzFA = s;
        zzSJ = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof zzao)
        {
            if (((zzao) (obj = (zzao)obj)).zzFA.equals(zzFA) && ((zzao) (obj)).zzSJ.equals(zzSJ))
            {
                return true;
            }
        }
        return false;
    }

    public String getDisplayName()
    {
        return zzSJ;
    }

    public String getId()
    {
        return zzFA;
    }

    public int hashCode()
    {
        return (zzFA.hashCode() + 629) * 37 + zzSJ.hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("NodeParcelable{").append(zzFA).append(",").append(zzSJ).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzap.zza(this, parcel, i);
    }

}
