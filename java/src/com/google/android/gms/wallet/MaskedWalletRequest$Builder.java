// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWalletRequest, Cart

public final class <init>
{

    final MaskedWalletRequest zzaEe;

    public fication addAllowedCountrySpecificationForShipping(CountrySpecification countryspecification)
    {
        if (zzaEe.zzaEd == null)
        {
            zzaEe.zzaEd = new ArrayList();
        }
        zzaEe.zzaEd.add(countryspecification);
        return this;
    }

    public zzaEe addAllowedCountrySpecificationsForShipping(Collection collection)
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

    public zzaEe setAllowDebitCard(boolean flag)
    {
        zzaEe.zzaEc = flag;
        return this;
    }

    public zzaEe setAllowPrepaidCard(boolean flag)
    {
        zzaEe.zzaEb = flag;
        return this;
    }

    public zzaEe setCart(Cart cart)
    {
        zzaEe.zzaDi = cart;
        return this;
    }

    public zzaEe setCurrencyCode(String s)
    {
        zzaEe.zzaCS = s;
        return this;
    }

    public zzaEe setEstimatedTotalPrice(String s)
    {
        zzaEe.zzaDW = s;
        return this;
    }

    public zzaEe setIsBillingAgreement(boolean flag)
    {
        zzaEe.zzaDZ = flag;
        return this;
    }

    public zzaEe setMerchantName(String s)
    {
        zzaEe.zzaDX = s;
        return this;
    }

    public zzaEe setMerchantTransactionId(String s)
    {
        zzaEe.zzaCZ = s;
        return this;
    }

    public zzaEe setPhoneNumberRequired(boolean flag)
    {
        zzaEe.zzaDT = flag;
        return this;
    }

    public zzaEe setShippingAddressRequired(boolean flag)
    {
        zzaEe.zzaDU = flag;
        return this;
    }

    public zzaEe setShouldRetrieveWalletObjects(boolean flag)
    {
        zzaEe.zzaDY = flag;
        return this;
    }

    public zzaEe setUseMinimalBillingAddress(boolean flag)
    {
        zzaEe.zzaDV = flag;
        return this;
    }

    private fication(MaskedWalletRequest maskedwalletrequest)
    {
        zzaEe = maskedwalletrequest;
        super();
    }

    zzaEe(MaskedWalletRequest maskedwalletrequest, zzaEe zzaee)
    {
        this(maskedwalletrequest);
    }
}
