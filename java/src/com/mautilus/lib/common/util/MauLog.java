// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.common.util;

import android.util.Log;

public class MauLog
{

    public static final String EOL = System.getProperty("line.separator");
    public static final int LEVEL = 2;
    public static final String LOG_DEBUG_TAG = "showmax";
    public static final boolean LOG_IS_DEBUG = true;
    private static final char _hexcodes[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    private static final int _shifts[] = {
        60, 56, 52, 48, 44, 40, 36, 32, 28, 24, 
        20, 16, 12, 8, 4, 0
    };

    public MauLog()
    {
    }

    public static void d(String s)
    {
        Log.d("showmax", s);
    }

    public static transient void d(String s, Object aobj[])
    {
        Log.d("showmax", String.format(s, aobj));
    }

    public static transient void d(Throwable throwable, String s, Object aobj[])
    {
        Log.d("showmax", String.format(s, aobj), throwable);
    }

    private static String dump(byte byte0)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.setLength(0);
        for (int j = 0; j < 2; j++)
        {
            stringbuffer.append(_hexcodes[byte0 >> _shifts[j + 6] & 0xf]);
        }

        return stringbuffer.toString();
    }

    private static String dump(long l)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.setLength(0);
        for (int j = 0; j < 8; j++)
        {
            stringbuffer.append(_hexcodes[(int)(l >> _shifts[(_shifts.length + j) - 8]) & 0xf]);
        }

        return stringbuffer.toString();
    }

    public static void dump(String s, String s1)
    {
        s1 = s1.replaceAll("\\s+", " ");
        int k = (80 - s.length()) + 2;
        int l = s1.length() / k;
        int i1 = s1.length() % k;
        for (int j = 0; j < l; j++)
        {
            v(s, new Object[] {
                s1.substring(j * k, (j + 1) * k)
            });
        }

        if (i1 > 0)
        {
            v(s, new Object[] {
                s1.substring(s1.length() - i1, s1.length())
            });
        }
    }

    public static void dump(byte abyte0[])
    {
        dump(abyte0, 0L, 0);
    }

    public static void dump(byte abyte0[], long l, int j)
    {
        if (j < 0 || j >= abyte0.length)
        {
            throw new ArrayIndexOutOfBoundsException((new StringBuilder()).append("illegal index: ").append(j).append(" into array of length ").append(abyte0.length).toString());
        }
        l += j;
        StringBuffer stringbuffer = new StringBuffer(74);
        for (; j < abyte0.length; j += 16)
        {
            int i1 = abyte0.length - j;
            int k = i1;
            if (i1 > 16)
            {
                k = 16;
            }
            stringbuffer.append(dump(l)).append(' ');
            i1 = 0;
            while (i1 < 16) 
            {
                if (i1 < k)
                {
                    stringbuffer.append(dump(abyte0[i1 + j]));
                } else
                {
                    stringbuffer.append(" ");
                }
                stringbuffer.append(' ');
                i1++;
            }
            i1 = 0;
            while (i1 < k) 
            {
                if (abyte0[i1 + j] >= 32 && abyte0[i1 + j] < 127)
                {
                    stringbuffer.append((char)abyte0[i1 + j]);
                } else
                {
                    stringbuffer.append('.');
                }
                i1++;
            }
            v(stringbuffer.toString());
            stringbuffer.setLength(0);
            l += k;
        }

    }

    public static void e(Exception exception, String s)
    {
        Log.e("showmax", s, exception);
    }

    public static transient void e(Exception exception, String s, Object aobj[])
    {
        Log.e("showmax", String.format(s, aobj), exception);
    }

    public static void e(String s)
    {
        Log.e("showmax", s);
    }

    public static transient void e(String s, Object aobj[])
    {
        Log.e("showmax", String.format(s, aobj));
    }

    public static transient void i(String s, Object aobj[])
    {
        Log.i("showmax", String.format(s, aobj));
    }

    public static void v(String s)
    {
        Log.v("showmax", s);
    }

    public static transient void v(String s, Object aobj[])
    {
        Log.v("showmax", String.format(s, aobj));
    }

    public static transient void v(Throwable throwable, String s, Object aobj[])
    {
        Log.v("showmax", String.format(s, aobj), throwable);
    }

    public static transient void v(boolean flag, String s, Object aobj[])
    {
        if (flag)
        {
            v(s, aobj);
        }
    }

    public static transient void w(String s, Object aobj[])
    {
        Log.w("showmax", String.format(s, aobj));
    }

}
