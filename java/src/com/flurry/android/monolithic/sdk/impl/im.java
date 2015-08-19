// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Arrays;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, je, ja

public class im
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/im.getSimpleName();
    private static byte b[];

    public im()
    {
    }

    public static byte[] a()
    {
        if (b != null)
        {
            return b;
        }
        if (ia.a().b().checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        {
            return null;
        } else
        {
            b();
            return b;
        }
    }

    private static void b()
    {
        Object obj = (TelephonyManager)ia.a().b().getSystemService("phone");
        if (obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((obj = ((TelephonyManager) (obj)).getDeviceId()) == null || ((String) (obj)).trim().length() <= 0) goto _L1; else goto _L3
_L3:
        try
        {
            obj = je.d(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ja.a(6, a, "Exception in generateHashedImei()");
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (obj.length == 20)
        {
            b = ((byte []) (obj));
            return;
        }
        ja.a(6, a, (new StringBuilder()).append("sha1 is not ").append(20).append(" bytes long: ").append(Arrays.toString(((byte []) (obj)))).toString());
        return;
    }

}
