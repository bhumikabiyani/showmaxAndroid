// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmm;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zze
{

    private static Map zzVp = new HashMap();

    private static void zzb(MetadataField metadatafield)
    {
        if (zzVp.containsKey(metadatafield.getName()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Duplicate field name registered: ").append(metadatafield.getName()).toString());
        } else
        {
            zzVp.put(metadatafield.getName(), metadatafield);
            return;
        }
    }

    public static MetadataField zzby(String s)
    {
        return (MetadataField)zzVp.get(s);
    }

    public static Collection zzkY()
    {
        return Collections.unmodifiableCollection(zzVp.values());
    }

    static 
    {
        zzb(zzmi.zzVs);
        zzb(zzmi.zzVV);
        zzb(zzmi.zzVM);
        zzb(zzmi.zzVT);
        zzb(zzmi.zzVW);
        zzb(zzmi.zzVE);
        zzb(zzmi.zzVD);
        zzb(zzmi.zzVF);
        zzb(zzmi.zzVB);
        zzb(zzmi.zzVH);
        zzb(zzmi.zzVI);
        zzb(zzmi.zzVJ);
        zzb(zzmi.zzVR);
        zzb(zzmi.zzVt);
        zzb(zzmi.zzVO);
        zzb(zzmi.zzVv);
        zzb(zzmi.zzVC);
        zzb(zzmi.zzVw);
        zzb(zzmi.zzVx);
        zzb(zzmi.zzVy);
        zzb(zzmi.zzVL);
        zzb(zzmi.zzVG);
        zzb(zzmi.zzVN);
        zzb(zzmi.zzVP);
        zzb(zzmi.zzVQ);
        zzb(zzmi.zzVS);
        zzb(zzmi.zzVX);
        zzb(zzmi.zzVY);
        zzb(zzmi.zzVA);
        zzb(zzmi.zzVz);
        zzb(zzmi.zzVU);
        zzb(zzmi.zzVK);
        zzb(zzmi.zzVu);
        zzb(zzmi.zzVZ);
        zzb(zzmi.zzWa);
        zzb(zzmi.zzWb);
        zzb(zzmi.zzWc);
        zzb(zzmi.zzWd);
        zzb(zzmk.zzWe);
        zzb(zzmk.zzWg);
        zzb(zzmk.zzWh);
        zzb(zzmk.zzWi);
        zzb(zzmk.zzWf);
        zzb(zzmm.zzWk);
        zzb(zzmm.zzWl);
    }
}
