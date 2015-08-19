// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.wallet:
//            zzb, LineItem

public final class Cart
    implements SafeParcelable
{
    public final class Builder
    {

        final Cart zzaCU;

        public Builder addLineItem(LineItem lineitem)
        {
            zzaCU.zzaCT.add(lineitem);
            return this;
        }

        public Cart build()
        {
            return zzaCU;
        }

        public Builder setCurrencyCode(String s)
        {
            zzaCU.zzaCS = s;
            return this;
        }

        public Builder setLineItems(List list)
        {
            zzaCU.zzaCT.clear();
            zzaCU.zzaCT.addAll(list);
            return this;
        }

        public Builder setTotalPrice(String s)
        {
            zzaCU.zzaCR = s;
            return this;
        }

        private Builder()
        {
            zzaCU = Cart.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    private final int zzFG;
    String zzaCR;
    String zzaCS;
    ArrayList zzaCT;

    Cart()
    {
        zzFG = 1;
        zzaCT = new ArrayList();
    }

    Cart(int i, String s, String s1, ArrayList arraylist)
    {
        zzFG = i;
        zzaCR = s;
        zzaCS = s1;
        zzaCT = arraylist;
    }

    public static Builder newBuilder()
    {
        Cart cart = new Cart();
        cart.getClass();
        return cart. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCurrencyCode()
    {
        return zzaCS;
    }

    public ArrayList getLineItems()
    {
        return zzaCT;
    }

    public String getTotalPrice()
    {
        return zzaCR;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzb.zza(this, parcel, i);
    }

}
