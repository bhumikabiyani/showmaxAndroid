// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ik, ja

public final class ii
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ii.getSimpleName();

    public ii()
    {
    }

    public static ik a()
    {
        ik ik1;
        try
        {
            ik1 = (ik)Class.forName("com.flurry.android.impl.appcloud.AppCloudModule").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        }
        catch (Exception exception)
        {
            ja.a(5, a, "FlurryAdModule is not available:", exception);
            return null;
        }
        return ik1;
    }

}
