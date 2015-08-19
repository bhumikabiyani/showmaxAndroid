// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.model.people;

import android.os.Bundle;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zze;
import com.google.android.gms.internal.zztw;
import com.google.android.gms.internal.zzuh;

// Referenced classes of package com.google.android.gms.plus.model.people:
//            Person

public final class PersonBuffer extends AbstractDataBuffer
{

    private final zze zzawE;

    public PersonBuffer(DataHolder dataholder)
    {
        super(dataholder);
        if (dataholder.zziu() != null && dataholder.zziu().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false))
        {
            zzawE = new zze(dataholder, zztw.CREATOR);
            return;
        } else
        {
            zzawE = null;
            return;
        }
    }

    public Person get(int i)
    {
        if (zzawE != null)
        {
            return (Person)zzawE.zzaw(i);
        } else
        {
            return new zzuh(zzMd, i);
        }
    }

    public volatile Object get(int i)
    {
        return get(i);
    }
}
