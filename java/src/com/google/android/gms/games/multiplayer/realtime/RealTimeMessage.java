// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzx;

public final class RealTimeMessage
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Object createFromParcel(Parcel parcel)
        {
            return zzdg(parcel);
        }

        public Object[] newArray(int i)
        {
            return zzeX(i);
        }

        public RealTimeMessage zzdg(Parcel parcel)
        {
            return new RealTimeMessage(parcel);
        }

        public RealTimeMessage[] zzeX(int i)
        {
            return new RealTimeMessage[i];
        }

    };
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String zzajI;
    private final byte zzajJ[];
    private final int zzajK;

    private RealTimeMessage(Parcel parcel)
    {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }


    public RealTimeMessage(String s, byte abyte0[], int i)
    {
        zzajI = (String)zzx.zzl(s);
        zzajJ = (byte[])((byte[])zzx.zzl(abyte0)).clone();
        zzajK = i;
    }

    public int describeContents()
    {
        return 0;
    }

    public byte[] getMessageData()
    {
        return zzajJ;
    }

    public String getSenderParticipantId()
    {
        return zzajI;
    }

    public boolean isReliable()
    {
        return zzajK == 1;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(zzajI);
        parcel.writeByteArray(zzajJ);
        parcel.writeInt(zzajK);
    }

}
