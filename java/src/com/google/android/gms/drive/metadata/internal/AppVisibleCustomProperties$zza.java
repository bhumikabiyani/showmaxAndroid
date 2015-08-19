// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            AppVisibleCustomProperties, CustomProperty

public static class 
{

    private final Map zzVn = new HashMap();

    public  zza(CustomPropertyKey custompropertykey, String s)
    {
        zzx.zzb(custompropertykey, "key");
        zzVn.put(custompropertykey, new CustomProperty(custompropertykey, s));
        return this;
    }

    public AppVisibleCustomProperties zzkW()
    {
        return new AppVisibleCustomProperties(zzVn.values(), null);
    }

    public ()
    {
    }
}
