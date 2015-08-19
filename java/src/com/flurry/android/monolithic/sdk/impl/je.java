// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import java.io.Closeable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, ja

public final class je
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/je.getSimpleName();

    public je()
    {
    }

    public static float a()
    {
        return ia.a().d().density;
    }

    public static int a(int i)
    {
        DisplayMetrics displaymetrics = ia.a().d();
        return Math.round((float)i / displaymetrics.density);
    }

    public static String a(String s)
    {
        return a(s, 255);
    }

    public static String a(String s, int i)
    {
        String s1;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s;
            if (s.length() > i)
            {
                return s.substring(0, i);
            }
        }
        return s1;
    }

    public static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        char ac[] = new char[16];
        char[] _tmp = ac;
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        int j = abyte0.length;
        for (int i = 0; i < j; i++)
        {
            byte byte0 = abyte0[i];
            byte byte1 = (byte)(byte0 & 0xf);
            stringbuilder.append(ac[(byte)((byte0 & 0xf0) >> 4)]);
            stringbuilder.append(ac[byte1]);
        }

        return stringbuilder.toString();
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    public static boolean a(long l)
    {
        boolean flag = false;
        if (System.currentTimeMillis() <= l)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean a(Intent intent)
    {
        return ia.a().c().queryIntentActivities(intent, 0x10000).size() > 0;
    }

    public static int b()
    {
        return ia.a().d().widthPixels;
    }

    public static int b(int i)
    {
        DisplayMetrics displaymetrics = ia.a().d();
        float f1 = i;
        return Math.round(displaymetrics.density * f1);
    }

    public static String b(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            ja.a(5, a, (new StringBuilder()).append("Cannot encode '").append(s).append("'").toString());
            return "";
        }
        return s1;
    }

    public static boolean b(Intent intent)
    {
        boolean flag = false;
        if (intent != null)
        {
            intent = intent.resolveActivity(ia.a().c());
            flag = ia.a().b().getPackageName().equals(intent.getPackageName());
        }
        return flag;
    }

    public static int c()
    {
        return ia.a().d().heightPixels;
    }

    public static String c(String s)
    {
        String s1;
        try
        {
            s1 = URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            ja.a(5, a, (new StringBuilder()).append("Cannot decode '").append(s).append("'").toString());
            return "";
        }
        return s1;
    }

    public static int d()
    {
        return a(b());
    }

    public static byte[] d(String s)
    {
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            messagedigest.update(s.getBytes(), 0, s.length());
            s = messagedigest.digest();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.a(6, a, (new StringBuilder()).append("Unsupported SHA1: ").append(s.getMessage()).toString());
            return null;
        }
        return s;
    }

    public static int e()
    {
        return a(c());
    }

    public static String e(String s)
    {
        return s.replace("'", "\\'").replace("\\n", "").replace("\\r", "").replace("\\t", "");
    }

    public static int f()
    {
        Point point = new Point(b(), c());
        if (point.x == point.y)
        {
            return 3;
        }
        return point.x >= point.y ? 2 : 1;
    }

    public static Map f(String s)
    {
        HashMap hashmap = new HashMap();
        if (!TextUtils.isEmpty(s))
        {
            s = s.split("&");
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                String as[] = s[i].split("=");
                if (!as[0].equals("event"))
                {
                    hashmap.put(c(as[0]), c(as[1]));
                }
            }

        }
        return hashmap;
    }

    public static Pair g()
    {
        return Pair.create(Integer.valueOf(d()), Integer.valueOf(e()));
    }

    public static Pair h()
    {
        int i = d();
        int j = e();
        switch (f())
        {
        default:
            return Pair.create(Integer.valueOf(i), Integer.valueOf(j));

        case 2: // '\002'
            return Pair.create(Integer.valueOf(j), Integer.valueOf(i));
        }
    }

}
