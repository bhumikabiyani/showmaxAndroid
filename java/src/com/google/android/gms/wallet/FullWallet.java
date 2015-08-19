// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            zzf, ProxyCard, Address, InstrumentInfo

public final class FullWallet
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzf();
    private final int zzFG;
    String zzaCY;
    String zzaCZ;
    ProxyCard zzaDa;
    String zzaDb;
    Address zzaDc;
    Address zzaDd;
    String zzaDe[];
    UserAddress zzaDf;
    UserAddress zzaDg;
    InstrumentInfo zzaDh[];

    private FullWallet()
    {
        zzFG = 1;
    }

    FullWallet(int i, String s, String s1, ProxyCard proxycard, String s2, Address address, Address address1, 
            String as[], UserAddress useraddress, UserAddress useraddress1, InstrumentInfo ainstrumentinfo[])
    {
        zzFG = i;
        zzaCY = s;
        zzaCZ = s1;
        zzaDa = proxycard;
        zzaDb = s2;
        zzaDc = address;
        zzaDd = address1;
        zzaDe = as;
        zzaDf = useraddress;
        zzaDg = useraddress1;
        zzaDh = ainstrumentinfo;
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

    public String getMerchantTransactionId()
    {
        return zzaCZ;
    }

    public String[] getPaymentDescriptions()
    {
        return zzaDe;
    }

    public ProxyCard getProxyCard()
    {
        return zzaDa;
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
        zzf.zza(this, parcel, i);
    }

}
