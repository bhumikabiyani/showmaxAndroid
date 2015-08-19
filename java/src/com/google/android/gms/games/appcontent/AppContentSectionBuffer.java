// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentSectionRef, AppContentSection

public final class AppContentSectionBuffer extends zzg
{

    private final ArrayList zzadC;

    public void release()
    {
        super.release();
        int j = zzadC.size();
        for (int i = 1; i < j; i++)
        {
            DataHolder dataholder = (DataHolder)zzadC.get(i);
            if (dataholder != null)
            {
                dataholder.close();
            }
        }

    }

    protected String zziB()
    {
        return "section_id";
    }

    protected String zziD()
    {
        return "card_id";
    }

    protected Object zzj(int i, int j)
    {
        return zzm(i, j);
    }

    protected AppContentSection zzm(int i, int j)
    {
        return new AppContentSectionRef(zzadC, i, j);
    }
}
