// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;

public class Transaction
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Transaction createFromParcel(Parcel parcel)
        {
            return new Transaction(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Transaction[] newArray(int i)
        {
            return new Transaction[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String assetId;
    public String createdAt;
    public String details;
    public String expiresAt;
    public String id;
    public String offerId;
    public String paymentInstrumentId;
    public String priceCurrency;
    public BigDecimal priceValue;
    public int timeRemaining;
    public String userId;

    public Transaction()
    {
    }

    private Transaction(Parcel parcel)
    {
        id = parcel.readString();
        userId = parcel.readString();
        assetId = parcel.readString();
        offerId = parcel.readString();
        paymentInstrumentId = parcel.readString();
        details = parcel.readString();
        priceValue = new BigDecimal(parcel.readString());
        priceCurrency = parcel.readString();
        createdAt = parcel.readString();
        expiresAt = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(id);
        parcel.writeString(userId);
        parcel.writeString(assetId);
        parcel.writeString(offerId);
        parcel.writeString(paymentInstrumentId);
        parcel.writeString(details);
        if (priceValue != null)
        {
            parcel.writeString(priceValue.toPlainString());
        } else
        {
            parcel.writeString("0");
        }
        parcel.writeString(priceCurrency);
        parcel.writeString(createdAt);
        parcel.writeString(expiresAt);
    }

}
