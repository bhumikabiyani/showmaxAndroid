// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.showmax.lib.api.model.billing:
//            Prices

public class Pricelist
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Pricelist createFromParcel(Parcel parcel)
        {
            return new Pricelist(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Pricelist[] newArray(int i)
        {
            return new Pricelist[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public float discount;
    public Prices presentingPrice;
    public Prices settlingPrice;
    public Map subscriptions;

    public Pricelist()
    {
    }

    private Pricelist(Parcel parcel)
    {
        presentingPrice = (Prices)parcel.readParcelable(com/showmax/lib/api/model/billing/Prices.getClassLoader());
        settlingPrice = (Prices)parcel.readParcelable(com/showmax/lib/api/model/billing/Prices.getClassLoader());
        subscriptions = new HashMap();
        int j = parcel.readInt();
        for (int i = 0; i < j; i++)
        {
            int k = parcel.readInt();
            Pricelist pricelist = (Pricelist)parcel.readParcelable(com/showmax/lib/api/model/billing/Pricelist.getClassLoader());
            subscriptions.put(Integer.valueOf(k), pricelist);
        }

    }


    public int describeContents()
    {
        return 0;
    }

    public String getFormattedLocalTotalPrice()
    {
        if (presentingPrice != null)
        {
            return presentingPrice.getFormattedTotalPrice();
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeParcelable(presentingPrice, i);
        parcel.writeParcelable(settlingPrice, i);
        if (subscriptions != null)
        {
            parcel.writeInt(subscriptions.size());
            Integer integer;
            for (Iterator iterator = subscriptions.keySet().iterator(); iterator.hasNext(); parcel.writeParcelable((Parcelable)subscriptions.get(integer), i))
            {
                integer = (Integer)iterator.next();
                parcel.writeInt(integer.intValue());
            }

        } else
        {
            parcel.writeInt(0);
        }
    }

}
