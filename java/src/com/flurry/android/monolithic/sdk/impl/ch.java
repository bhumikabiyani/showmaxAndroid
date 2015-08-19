// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia

public final class ch
{

    public ch()
    {
    }

    public String a()
    {
        return ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_id", "");
    }
}
