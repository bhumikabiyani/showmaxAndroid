// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            zzm

public class Operator
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    public static final Operator zzWM = new Operator("=");
    public static final Operator zzWN = new Operator("<");
    public static final Operator zzWO = new Operator("<=");
    public static final Operator zzWP = new Operator(">");
    public static final Operator zzWQ = new Operator(">=");
    public static final Operator zzWR = new Operator("and");
    public static final Operator zzWS = new Operator("or");
    public static final Operator zzWT = new Operator("not");
    public static final Operator zzWU = new Operator("contains");
    final String mTag;
    final int zzFG;

    Operator(int i, String s)
    {
        zzFG = i;
        mTag = s;
    }

    private Operator(String s)
    {
        this(1, s);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (Operator)obj;
        if (mTag != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((Operator) (obj)).mTag == null) goto _L1; else goto _L3
_L3:
        return false;
        if (mTag.equals(((Operator) (obj)).mTag)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public String getTag()
    {
        return mTag;
    }

    public int hashCode()
    {
        int i;
        if (mTag == null)
        {
            i = 0;
        } else
        {
            i = mTag.hashCode();
        }
        return i + 31;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

}
