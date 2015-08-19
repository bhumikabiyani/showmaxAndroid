// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.FitnessActivities;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzu

public final class Value
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzu();
    private final int zzFG;
    private final int zzZE;
    private boolean zzZS;
    private float zzZT;

    public Value(int i)
    {
        this(1, i, false, 0.0F);
    }

    Value(int i, int j, boolean flag, float f)
    {
        zzFG = i;
        zzZE = j;
        zzZS = flag;
        zzZT = f;
    }

    private boolean zza(Value value)
    {
        if (zzZE != value.zzZE || zzZS != value.zzZS) goto _L2; else goto _L1
_L1:
        zzZE;
        JVM INSTR tableswitch 1 2: default 48
    //                   1 62
    //                   2 75;
           goto _L3 _L4 _L5
_L3:
        if (zzZT != value.zzZT) goto _L7; else goto _L6
_L6:
        return true;
_L4:
        if (asInt() != value.asInt())
        {
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (asFloat() != value.asFloat())
        {
            return false;
        }
        if (true) goto _L6; else goto _L7
_L7:
        return false;
_L2:
        return false;
    }

    public String asActivity()
    {
        return FitnessActivities.getName(asInt());
    }

    public float asFloat()
    {
        boolean flag;
        if (zzZE == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Value is not in float format");
        return zzZT;
    }

    public int asInt()
    {
        boolean flag = true;
        if (zzZE != 1)
        {
            flag = false;
        }
        zzx.zza(flag, "Value is not in int format");
        return Float.floatToRawIntBits(zzZT);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof Value) && zza((Value)obj);
    }

    public int getFormat()
    {
        return zzZE;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Float.valueOf(zzZT), Integer.valueOf(zzZE), Boolean.valueOf(zzZS)
        });
    }

    public boolean isSet()
    {
        return zzZS;
    }

    public void setActivity(String s)
    {
        setInt(FitnessActivities.zzbG(s));
    }

    public void setFloat(float f)
    {
        boolean flag;
        if (zzZE == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format.");
        zzZS = true;
        zzZT = f;
    }

    public void setInt(int i)
    {
        boolean flag;
        if (zzZE == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format.");
        zzZS = true;
        zzZT = Float.intBitsToFloat(i);
    }

    public String toString()
    {
        if (!zzZS)
        {
            return "unset";
        }
        switch (zzZE)
        {
        default:
            return "unknown";

        case 1: // '\001'
            return Integer.toString(asInt());

        case 2: // '\002'
            return Float.toString(asFloat());
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzu.zza(this, parcel, i);
    }

    float zzlL()
    {
        return zzZT;
    }

}
