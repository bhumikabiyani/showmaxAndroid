// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWallet, Address, InstrumentInfo, LoyaltyWalletObject, 
//            OfferWalletObject

public final class <init>
{

    final MaskedWallet zzaDS;

    public MaskedWallet build()
    {
        return zzaDS;
    }

    public zzaDS setBillingAddress(Address address)
    {
        zzaDS.zzaDc = address;
        return this;
    }

    public ddress setBuyerBillingAddress(UserAddress useraddress)
    {
        zzaDS.zzaDf = useraddress;
        return this;
    }

    public ddress setBuyerShippingAddress(UserAddress useraddress)
    {
        zzaDS.zzaDg = useraddress;
        return this;
    }

    public zzaDS setEmail(String s)
    {
        zzaDS.zzaDb = s;
        return this;
    }

    public zzaDS setGoogleTransactionId(String s)
    {
        zzaDS.zzaCY = s;
        return this;
    }

    public zzaDS setInstrumentInfos(InstrumentInfo ainstrumentinfo[])
    {
        zzaDS.zzaDh = ainstrumentinfo;
        return this;
    }

    public zzaDS setLoyaltyWalletObjects(LoyaltyWalletObject aloyaltywalletobject[])
    {
        zzaDS.zzaDQ = aloyaltywalletobject;
        return this;
    }

    public zzaDS setMerchantTransactionId(String s)
    {
        zzaDS.zzaCZ = s;
        return this;
    }

    public zzaDS setOfferWalletObjects(OfferWalletObject aofferwalletobject[])
    {
        zzaDS.zzaDR = aofferwalletobject;
        return this;
    }

    public zzaDS setPaymentDescriptions(String as[])
    {
        zzaDS.zzaDe = as;
        return this;
    }

    public zzaDS setShippingAddress(Address address)
    {
        zzaDS.zzaDd = address;
        return this;
    }

    private ddress(MaskedWallet maskedwallet)
    {
        zzaDS = maskedwallet;
        super();
    }

    zzaDS(MaskedWallet maskedwallet, zzaDS zzads)
    {
        this(maskedwallet);
    }
}
