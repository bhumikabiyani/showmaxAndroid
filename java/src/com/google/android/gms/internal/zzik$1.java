// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            zzik

static final class 
    implements android.os.ble.Creator
{

    public Object createFromParcel(Parcel parcel)
    {
        return zzk(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzO(i);
    }

    public zzik[] zzO(int i)
    {
        return new zzik[i];
    }

    public zzik zzk(Parcel parcel)
    {
        return new zzik(parcel);
    }

    ()
    {
    }
}
