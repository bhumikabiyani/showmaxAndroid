// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class BinderWrapper
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Object createFromParcel(Parcel parcel)
        {
            return zzD(parcel);
        }

        public Object[] newArray(int i)
        {
            return zzaG(i);
        }

        public BinderWrapper zzD(Parcel parcel)
        {
            return new BinderWrapper(parcel);
        }

        public BinderWrapper[] zzaG(int i)
        {
            return new BinderWrapper[i];
        }

    };
    private IBinder zzPp;

    public BinderWrapper()
    {
        zzPp = null;
    }

    public BinderWrapper(IBinder ibinder)
    {
        zzPp = null;
        zzPp = ibinder;
    }

    private BinderWrapper(Parcel parcel)
    {
        zzPp = null;
        zzPp = parcel.readStrongBinder();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeStrongBinder(zzPp);
    }

}
