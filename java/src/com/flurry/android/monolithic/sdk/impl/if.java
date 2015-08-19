// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ih, ja

public final class if
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/if.getSimpleName();

    public if()
    {
    }

    public static ih a()
    {
        ih ih1;
        try
        {
            ih1 = (ih)Class.forName("com.flurry.android.impl.ads.FlurryAdModule").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        }
        catch (Exception exception)
        {
            ja.a(5, a, "FlurryAdModule is not available:", exception);
            return null;
        }
        return ih1;
    }

}
