// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentUtils, AppContentTupleRef, AppContentTuple

static final class zzadI
    implements pContentRunner
{

    final DataHolder zzadH;
    final Bundle zzadI;

    public void zzb(ArrayList arraylist, int i)
    {
        arraylist = new AppContentTupleRef(zzadH, i);
        zzadI.putString(arraylist.getName(), arraylist.getValue());
    }

    (DataHolder dataholder, Bundle bundle)
    {
        zzadH = dataholder;
        zzadI = bundle;
        super();
    }
}
