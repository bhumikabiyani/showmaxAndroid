// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;

// Referenced classes of package com.showmax.lib.api.model.billing:
//            Price

public class Prices
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Prices createFromParcel(Parcel parcel)
        {
            return new Prices(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Prices[] newArray(int i)
        {
            return new Prices[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public Price priceNet;
    public Price priceRaw;
    public Price priceTotal;
    public Price priceVatAmount;
    public BigDecimal priceVatRate;

    public Prices()
    {
    }

    private Prices(Parcel parcel)
    {
        priceVatRate = new BigDecimal(parcel.readString());
        priceRaw = (Price)parcel.readParcelable(com/showmax/lib/api/model/billing/Price.getClassLoader());
        priceNet = (Price)parcel.readParcelable(com/showmax/lib/api/model/billing/Price.getClassLoader());
        priceVatAmount = (Price)parcel.readParcelable(com/showmax/lib/api/model/billing/Price.getClassLoader());
        priceTotal = (Price)parcel.readParcelable(com/showmax/lib/api/model/billing/Price.getClassLoader());
    }


    public int describeContents()
    {
        return 0;
    }

    public String getFormattedTotalPrice()
    {
        if (priceTotal != null)
        {
            return priceTotal.formatted;
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        if (priceVatRate != null)
        {
            parcel.writeString(priceVatRate.toPlainString());
        } else
        {
            parcel.writeString("0");
        }
        parcel.writeParcelable(priceRaw, i);
        parcel.writeParcelable(priceNet, i);
        parcel.writeParcelable(priceVatAmount, i);
        parcel.writeParcelable(priceTotal, i);
    }

}
