// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package com.google.android.gms.wallet:
//            zzm, Cart, CountrySpecification

public final class MaskedWalletRequest
    implements SafeParcelable
{
    public final class Builder
    {

        final MaskedWalletRequest zzaEe;

        public Builder addAllowedCountrySpecificationForShipping(CountrySpecification countryspecification)
        {
            if (zzaEe.zzaEd == null)
            {
                zzaEe.zzaEd = new ArrayList();
            }
            zzaEe.zzaEd.add(countryspecification);
            return this;
        }

        public Builder addAllowedCountrySpecificationsForShipping(Collection collection)
        {
            if (collection != null)
            {
                if (zzaEe.zzaEd == null)
                {
                    zzaEe.zzaEd = new ArrayList();
                }
                zzaEe.zzaEd.addAll(collection);
            }
            return this;
        }

        public MaskedWalletRequest build()
        {
            return zzaEe;
        }

        public Builder setAllowDebitCard(boolean flag)
        {
            zzaEe.zzaEc = flag;
            return this;
        }

        public Builder setAllowPrepaidCard(boolean flag)
        {
            zzaEe.zzaEb = flag;
            return this;
        }

        public Builder setCart(Cart cart)
        {
            zzaEe.zzaDi = cart;
            return this;
        }

        public Builder setCurrencyCode(String s)
        {
            zzaEe.zzaCS = s;
            return this;
        }

        public Builder setEstimatedTotalPrice(String s)
        {
            zzaEe.zzaDW = s;
            return this;
        }

        public Builder setIsBillingAgreement(boolean flag)
        {
            zzaEe.zzaDZ = flag;
            return this;
        }

        public Builder setMerchantName(String s)
        {
            zzaEe.zzaDX = s;
            return this;
        }

        public Builder setMerchantTransactionId(String s)
        {
            zzaEe.zzaCZ = s;
            return this;
        }

        public Builder setPhoneNumberRequired(boolean flag)
        {
            zzaEe.zzaDT = flag;
            return this;
        }

        public Builder setShippingAddressRequired(boolean flag)
        {
            zzaEe.zzaDU = flag;
            return this;
        }

        public Builder setShouldRetrieveWalletObjects(boolean flag)
        {
            zzaEe.zzaDY = flag;
            return this;
        }

        public Builder setUseMinimalBillingAddress(boolean flag)
        {
            zzaEe.zzaDV = flag;
            return this;
        }

        private Builder()
        {
            zzaEe = MaskedWalletRequest.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    private final int zzFG;
    String zzaCS;
    String zzaCZ;
    boolean zzaDT;
    boolean zzaDU;
    boolean zzaDV;
    String zzaDW;
    String zzaDX;
    boolean zzaDY;
    boolean zzaDZ;
    Cart zzaDi;
    com.google.android.gms.wallet.CountrySpecification zzaEa[];
    boolean zzaEb;
    boolean zzaEc;
    ArrayList zzaEd;

    MaskedWalletRequest()
    {
        zzFG = 3;
        zzaEb = true;
        zzaEc = true;
    }

    MaskedWalletRequest(int i, String s, boolean flag, boolean flag1, boolean flag2, String s1, String s2, 
            String s3, Cart cart, boolean flag3, boolean flag4, com.google.android.gms.wallet.CountrySpecification acountryspecification[], boolean flag5, boolean flag6, 
            ArrayList arraylist)
    {
        zzFG = i;
        zzaCZ = s;
        zzaDT = flag;
        zzaDU = flag1;
        zzaDV = flag2;
        zzaDW = s1;
        zzaCS = s2;
        zzaDX = s3;
        zzaDi = cart;
        zzaDY = flag3;
        zzaDZ = flag4;
        zzaEa = acountryspecification;
        zzaEb = flag5;
        zzaEc = flag6;
        zzaEd = arraylist;
    }

    public static Builder newBuilder()
    {
        MaskedWalletRequest maskedwalletrequest = new MaskedWalletRequest();
        maskedwalletrequest.getClass();
        return maskedwalletrequest. new Builder();
    }

    public boolean allowDebitCard()
    {
        return zzaEc;
    }

    public boolean allowPrepaidCard()
    {
        return zzaEb;
    }

    public int describeContents()
    {
        return 0;
    }

    public ArrayList getAllowedCountrySpecificationsForShipping()
    {
        return zzaEd;
    }

    public com.google.android.gms.wallet.CountrySpecification[] getAllowedShippingCountrySpecifications()
    {
        return zzaEa;
    }

    public Cart getCart()
    {
        return zzaDi;
    }

    public String getCurrencyCode()
    {
        return zzaCS;
    }

    public String getEstimatedTotalPrice()
    {
        return zzaDW;
    }

    public String getMerchantName()
    {
        return zzaDX;
    }

    public String getMerchantTransactionId()
    {
        return zzaCZ;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public boolean isBillingAgreement()
    {
        return zzaDZ;
    }

    public boolean isPhoneNumberRequired()
    {
        return zzaDT;
    }

    public boolean isShippingAddressRequired()
    {
        return zzaDU;
    }

    public boolean shouldRetrieveWalletObjects()
    {
        return zzaDY;
    }

    public boolean useMinimalBillingAddress()
    {
        return zzaDV;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

}
