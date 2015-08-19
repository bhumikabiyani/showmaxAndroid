// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.File;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja

public final class iw
{

    static String a = com/flurry/android/monolithic/sdk/impl/iw.getSimpleName();

    private iw()
    {
    }

    public static boolean a(File file)
    {
        if (file == null)
        {
            return false;
        }
        file = file.getParentFile();
        if (!file.mkdirs() && !file.exists())
        {
            ja.a(6, a, (new StringBuilder()).append("Unable to create persistent dir: ").append(file).toString());
            return false;
        } else
        {
            return true;
        }
    }

}
