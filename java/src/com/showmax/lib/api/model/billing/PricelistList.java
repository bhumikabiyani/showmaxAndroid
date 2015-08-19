// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.billing:
//            Pricelist

public class PricelistList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public PricelistList createFromParcel(Parcel parcel)
        {
            return new PricelistList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public PricelistList[] newArray(int i)
        {
            return new PricelistList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public Pricelist apple;
    public Pricelist binga;
    public Pricelist braintree;
    public Pricelist cashex;
    public Pricelist cashnpay;
    public Pricelist cashudirect;
    public Pricelist cashuprepaid;
    public Pricelist defaultPaymentMethod;
    public Pricelist du;
    public Pricelist mobicash;
    public Pricelist mtc;
    public Pricelist onecard;
    public Pricelist payfort;
    public Pricelist paypal;
    public Pricelist ptcl;

    public PricelistList()
    {
    }

    private PricelistList(Parcel parcel)
    {
        defaultPaymentMethod = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        braintree = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        paypal = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        apple = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        payfort = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        onecard = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        mtc = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        mobicash = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        binga = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        cashudirect = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        cashex = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        cashuprepaid = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        cashnpay = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        ptcl = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
        du = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
    }


    public int describeContents()
    {
        return 0;
    }

    public String getDefaultFormattedLocalTotalPrice()
    {
        if (defaultPaymentMethod != null)
        {
            return defaultPaymentMethod.getFormattedLocalTotalPrice();
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeParcelable(defaultPaymentMethod, i);
        parcel.writeParcelable(braintree, i);
        parcel.writeParcelable(paypal, i);
        parcel.writeParcelable(apple, i);
        parcel.writeParcelable(payfort, i);
        parcel.writeParcelable(onecard, i);
        parcel.writeParcelable(mtc, i);
        parcel.writeParcelable(mobicash, i);
        parcel.writeParcelable(binga, i);
        parcel.writeParcelable(cashudirect, i);
        parcel.writeParcelable(cashex, i);
        parcel.writeParcelable(cashuprepaid, i);
        parcel.writeParcelable(cashnpay, i);
        parcel.writeParcelable(ptcl, i);
        parcel.writeParcelable(du, i);
    }

}
