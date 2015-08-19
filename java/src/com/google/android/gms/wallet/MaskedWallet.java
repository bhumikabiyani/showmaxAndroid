// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            zzl, LoyaltyWalletObject, OfferWalletObject, Address, 
//            InstrumentInfo

public final class MaskedWallet
    implements SafeParcelable
{
    public final class Builder
    {

        final MaskedWallet zzaDS;

        public MaskedWallet build()
        {
            return zzaDS;
        }

        public Builder setBillingAddress(Address address)
        {
            zzaDS.zzaDc = address;
            return this;
        }

        public Builder setBuyerBillingAddress(UserAddress useraddress)
        {
            zzaDS.zzaDf = useraddress;
            return this;
        }

        public Builder setBuyerShippingAddress(UserAddress useraddress)
        {
            zzaDS.zzaDg = useraddress;
            return this;
        }

        public Builder setEmail(String s)
        {
            zzaDS.zzaDb = s;
            return this;
        }

        public Builder setGoogleTransactionId(String s)
        {
            zzaDS.zzaCY = s;
            return this;
        }

        public Builder setInstrumentInfos(InstrumentInfo ainstrumentinfo[])
        {
            zzaDS.zzaDh = ainstrumentinfo;
            return this;
        }

        public Builder setLoyaltyWalletObjects(LoyaltyWalletObject aloyaltywalletobject[])
        {
            zzaDS.zzaDQ = aloyaltywalletobject;
            return this;
        }

        public Builder setMerchantTransactionId(String s)
        {
            zzaDS.zzaCZ = s;
            return this;
        }

        public Builder setOfferWalletObjects(OfferWalletObject aofferwalletobject[])
        {
            zzaDS.zzaDR = aofferwalletobject;
            return this;
        }

        public Builder setPaymentDescriptions(String as[])
        {
            zzaDS.zzaDe = as;
            return this;
        }

        public Builder setShippingAddress(Address address)
        {
            zzaDS.zzaDd = address;
            return this;
        }

        private Builder()
        {
            zzaDS = MaskedWallet.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zzl();
    private final int zzFG;
    String zzaCY;
    String zzaCZ;
    LoyaltyWalletObject zzaDQ[];
    OfferWalletObject zzaDR[];
    String zzaDb;
    Address zzaDc;
    Address zzaDd;
    String zzaDe[];
    UserAddress zzaDf;
    UserAddress zzaDg;
    InstrumentInfo zzaDh[];

    private MaskedWallet()
    {
        zzFG = 2;
    }

    MaskedWallet(int i, String s, String s1, String as[], String s2, Address address, Address address1, 
            LoyaltyWalletObject aloyaltywalletobject[], OfferWalletObject aofferwalletobject[], UserAddress useraddress, UserAddress useraddress1, InstrumentInfo ainstrumentinfo[])
    {
        zzFG = i;
        zzaCY = s;
        zzaCZ = s1;
        zzaDe = as;
        zzaDb = s2;
        zzaDc = address;
        zzaDd = address1;
        zzaDQ = aloyaltywalletobject;
        zzaDR = aofferwalletobject;
        zzaDf = useraddress;
        zzaDg = useraddress1;
        zzaDh = ainstrumentinfo;
    }

    public static Builder newBuilderFrom(MaskedWallet maskedwallet)
    {
        zzx.zzl(maskedwallet);
        return zzuR().setGoogleTransactionId(maskedwallet.getGoogleTransactionId()).setMerchantTransactionId(maskedwallet.getMerchantTransactionId()).setPaymentDescriptions(maskedwallet.getPaymentDescriptions()).setInstrumentInfos(maskedwallet.getInstrumentInfos()).setEmail(maskedwallet.getEmail()).setLoyaltyWalletObjects(maskedwallet.getLoyaltyWalletObjects()).setOfferWalletObjects(maskedwallet.getOfferWalletObjects()).setBuyerBillingAddress(maskedwallet.getBuyerBillingAddress()).setBuyerShippingAddress(maskedwallet.getBuyerShippingAddress());
    }

    public static Builder zzuR()
    {
        MaskedWallet maskedwallet = new MaskedWallet();
        maskedwallet.getClass();
        return maskedwallet. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public Address getBillingAddress()
    {
        return zzaDc;
    }

    public UserAddress getBuyerBillingAddress()
    {
        return zzaDf;
    }

    public UserAddress getBuyerShippingAddress()
    {
        return zzaDg;
    }

    public String getEmail()
    {
        return zzaDb;
    }

    public String getGoogleTransactionId()
    {
        return zzaCY;
    }

    public InstrumentInfo[] getInstrumentInfos()
    {
        return zzaDh;
    }

    public LoyaltyWalletObject[] getLoyaltyWalletObjects()
    {
        return zzaDQ;
    }

    public String getMerchantTransactionId()
    {
        return zzaCZ;
    }

    public OfferWalletObject[] getOfferWalletObjects()
    {
        return zzaDR;
    }

    public String[] getPaymentDescriptions()
    {
        return zzaDe;
    }

    public Address getShippingAddress()
    {
        return zzaDd;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzl.zza(this, parcel, i);
    }

}
