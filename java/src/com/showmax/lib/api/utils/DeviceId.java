// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import com.mautilus.lib.common.util.MauLog;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class DeviceId
{

    public static final boolean LOG = true;
    private static final String SHARED_PREFS_KEY_DEVICE_ID = "shared.prefs.key.device.id";
    private static final String SHARED_PREFS_NAME = "shared.prefs.name.device.id";
    private static String sId = null;

    public DeviceId()
    {
    }

    private static String generateId(Context context)
    {
        Object obj;
label0:
        {
            String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!"9774d56d682e549c".equals(s))
            {
                obj = s;
                if (s != null)
                {
                    break label0;
                }
            }
            context = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
            obj = context;
            if (context == null)
            {
                obj = String.valueOf((new Random()).nextLong());
            }
        }
        return getHash(((String) (obj)));
    }

    private static String getHash(String s)
    {
        Object obj = null;
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance("SHA-1");
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            MauLog.w("[DeviceId]::[NoSuchAlgorithmException]::[%s]", new Object[] {
                nosuchalgorithmexception.getMessage()
            });
            continue;
        }
        obj = messagedigest;
        do
        {
            NoSuchAlgorithmException nosuchalgorithmexception = null;
            int j;
            try
            {
                s = ((MessageDigest) (obj)).digest(s.getBytes("UTF-8"));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                MauLog.w("[DeviceId]::[UnsupportedEncodingException]::[%s]", new Object[] {
                    s.getMessage()
                });
                s = nosuchalgorithmexception;
            }
            obj = new StringBuilder();
            j = s.length;
            for (int i = 0; i < j; i++)
            {
                ((StringBuilder) (obj)).append(String.format("%02X", new Object[] {
                    Byte.valueOf(s[i])
                }));
            }

            return ((StringBuilder) (obj)).toString();
        } while (true);
    }

    public static String getId(Context context)
    {
        if (sId == null)
        {
            sId = loadStoredId(context);
        }
        if (sId == null)
        {
            sId = generateId(context);
            if (sId != null)
            {
                saveStoredId(context, sId);
            }
        }
        return sId;
    }

    private static String loadStoredId(Context context)
    {
        return context.getSharedPreferences("shared.prefs.name.device.id", 0).getString("shared.prefs.key.device.id", null);
    }

    private static void saveStoredId(Context context, String s)
    {
        context.getSharedPreferences("shared.prefs.name.device.id", 0).edit().putString("shared.prefs.key.device.id", s).commit();
    }

}
