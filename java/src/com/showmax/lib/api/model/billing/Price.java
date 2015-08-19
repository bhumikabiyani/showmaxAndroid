// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;

public class Price
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Price createFromParcel(Parcel parcel)
        {
            return new Price(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Price[] newArray(int i)
        {
            return new Price[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public BigDecimal amount;
    public String currency;
    public String formatted;

    public Price()
    {
    }

    private Price(Parcel parcel)
    {
        amount = new BigDecimal(parcel.readString());
        currency = parcel.readString();
        formatted = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        if (amount != null)
        {
            parcel.writeString(amount.toPlainString());
        } else
        {
            parcel.writeString("0");
        }
        parcel.writeString(currency);
        parcel.writeString(formatted);
    }

}
