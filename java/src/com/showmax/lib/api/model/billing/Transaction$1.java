// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.billing:
//            Transaction

static final class 
    implements android.os.ator
{

    public Transaction createFromParcel(Parcel parcel)
    {
        return new Transaction(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public Transaction[] newArray(int i)
    {
        return new Transaction[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
