// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet:
//            zzj

public final class LineItem
    implements SafeParcelable
{
    public final class Builder
    {

        final LineItem zzaDw;

        public LineItem build()
        {
            return zzaDw;
        }

        public Builder setCurrencyCode(String s)
        {
            zzaDw.zzaCS = s;
            return this;
        }

        public Builder setDescription(String s)
        {
            zzaDw.description = s;
            return this;
        }

        public Builder setQuantity(String s)
        {
            zzaDw.zzaDt = s;
            return this;
        }

        public Builder setRole(int i)
        {
            zzaDw.zzaDv = i;
            return this;
        }

        public Builder setTotalPrice(String s)
        {
            zzaDw.zzaCR = s;
            return this;
        }

        public Builder setUnitPrice(String s)
        {
            zzaDw.zzaDu = s;
            return this;
        }

        private Builder()
        {
            zzaDw = LineItem.this;
            super();
        }

    }

    public static interface Role
    {

        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    String description;
    private final int zzFG;
    String zzaCR;
    String zzaCS;
    String zzaDt;
    String zzaDu;
    int zzaDv;

    LineItem()
    {
        zzFG = 1;
        zzaDv = 0;
    }

    LineItem(int i, String s, String s1, String s2, String s3, int j, String s4)
    {
        zzFG = i;
        description = s;
        zzaDt = s1;
        zzaDu = s2;
        zzaCR = s3;
        zzaDv = j;
        zzaCS = s4;
    }

    public static Builder newBuilder()
    {
        LineItem lineitem = new LineItem();
        lineitem.getClass();
        return lineitem. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCurrencyCode()
    {
        return zzaCS;
    }

    public String getDescription()
    {
        return description;
    }

    public String getQuantity()
    {
        return zzaDt;
    }

    public int getRole()
    {
        return zzaDv;
    }

    public String getTotalPrice()
    {
        return zzaCR;
    }

    public String getUnitPrice()
    {
        return zzaDu;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

}
