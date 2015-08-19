// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.wallet:
//            zzn

public final class NotifyTransactionStatusRequest
    implements SafeParcelable
{
    public final class Builder
    {

        final NotifyTransactionStatusRequest zzaEg;

        public NotifyTransactionStatusRequest build()
        {
            boolean flag1 = true;
            boolean flag;
            if (!TextUtils.isEmpty(zzaEg.zzaCY))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "googleTransactionId is required");
            if (zzaEg.status >= 1 && zzaEg.status <= 8)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "status is an unrecognized value");
            return zzaEg;
        }

        public Builder setDetailedReason(String s)
        {
            zzaEg.zzaEf = s;
            return this;
        }

        public Builder setGoogleTransactionId(String s)
        {
            zzaEg.zzaCY = s;
            return this;
        }

        public Builder setStatus(int i)
        {
            zzaEg.status = i;
            return this;
        }

        private Builder()
        {
            zzaEg = NotifyTransactionStatusRequest.this;
            super();
        }

    }

    public static interface Status
    {

        public static final int SUCCESS = 1;
    }

    public static interface Status.Error
    {

        public static final int AVS_DECLINE = 7;
        public static final int BAD_CARD = 4;
        public static final int BAD_CVC = 3;
        public static final int DECLINED = 5;
        public static final int FRAUD_DECLINE = 8;
        public static final int OTHER = 6;
        public static final int UNKNOWN = 2;
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzn();
    int status;
    final int zzFG;
    String zzaCY;
    String zzaEf;

    NotifyTransactionStatusRequest()
    {
        zzFG = 1;
    }

    NotifyTransactionStatusRequest(int i, String s, int j, String s1)
    {
        zzFG = i;
        zzaCY = s;
        status = j;
        zzaEf = s1;
    }

    public static Builder newBuilder()
    {
        NotifyTransactionStatusRequest notifytransactionstatusrequest = new NotifyTransactionStatusRequest();
        notifytransactionstatusrequest.getClass();
        return notifytransactionstatusrequest. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getDetailedReason()
    {
        return zzaEf;
    }

    public String getGoogleTransactionId()
    {
        return zzaCY;
    }

    public int getStatus()
    {
        return status;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzn.zza(this, parcel, i);
    }

}
