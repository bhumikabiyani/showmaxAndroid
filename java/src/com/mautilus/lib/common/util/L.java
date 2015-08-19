// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.common.util;

import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;

public class L
{
    public static class Config
    {

        public int level;
        public String tag;

        public Config()
        {
        }
    }


    public static final String EOL = System.getProperty("line.separator");
    private static final char _hexcodes[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    private static final int _shifts[] = {
        60, 56, 52, 48, 44, 40, 36, 32, 28, 24, 
        20, 16, 12, 8, 4, 0
    };
    private static volatile L instance;
    private AtomicInteger mLevel;
    private String mTAG;

    protected L()
    {
        mTAG = "mau-log";
        mLevel = new AtomicInteger(2);
    }

    private boolean canWrite(int j)
    {
        return j >= mLevel.get();
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

    public static L get()
    {
        if (instance != null) goto _L2; else goto _L1
_L1:
        com/mautilus/lib/common/util/L;
        JVM INSTR monitorenter ;
        if (instance == null)
        {
            instance = new L();
        }
        com/mautilus/lib/common/util/L;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        Exception exception;
        exception;
        com/mautilus/lib/common/util/L;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d(String s)
    {
        d(null);
    }

    public transient void d(String s, Object aobj[])
    {
        if (canWrite(3))
        {
            Log.d(mTAG, String.format(s, aobj));
        }
    }

    public transient void d(Throwable throwable, String s, Object aobj[])
    {
        if (canWrite(3))
        {
            Log.d(mTAG, String.format(s, aobj), throwable);
        }
    }

    public void dump(byte abyte0[])
    {
        dump(abyte0, 0L, 0);
    }

    public void dump(byte abyte0[], long l, int j)
    {
        if (mLevel.get() <= 3)
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
                if (mLevel.get() <= 3)
                {
                    v(stringbuffer.toString());
                }
                stringbuffer.setLength(0);
                l += k;
            }

        }
    }

    public void e(Exception exception, String s)
    {
        if (canWrite(6))
        {
            Log.e(mTAG, s, exception);
        }
    }

    public transient void e(Exception exception, String s, Object aobj[])
    {
        if (canWrite(6))
        {
            Log.e(mTAG, String.format(s, aobj), exception);
        }
    }

    public void e(String s)
    {
        e(s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void e(String s, Object aobj[])
    {
        if (canWrite(6))
        {
            Log.e(mTAG, String.format(s, aobj));
        }
    }

    public void i(String s)
    {
        i(s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void i(String s, Object aobj[])
    {
        if (canWrite(4))
        {
            Log.i(mTAG, String.format(s, aobj));
        }
    }

    public transient void i(Throwable throwable, String s, Object aobj[])
    {
        if (canWrite(4))
        {
            Log.i(mTAG, String.format(s, aobj), throwable);
        }
    }

    public L setConfiguration(Config config)
    {
        mLevel.set(config.level);
        mTAG = config.tag;
        return this;
    }

    public L setLevel(int j)
    {
        mLevel.set(j);
        return this;
    }

    public L setTag(String s)
    {
        mTAG = s;
        return this;
    }

    public void v(String s)
    {
        v(true, s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void v(String s, Object aobj[])
    {
        v(true, s, aobj);
    }

    public transient void v(Throwable throwable, String s, Object aobj[])
    {
        if (canWrite(2))
        {
            Log.v(mTAG, String.format(s, aobj), throwable);
        }
    }

    public void v(boolean flag, String s)
    {
        v(flag, s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void v(boolean flag, String s, Object aobj[])
    {
        if (flag && canWrite(2))
        {
            Log.v(mTAG, String.format(s, aobj));
        }
    }

    public void w(String s)
    {
        w(s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void w(String s, Object aobj[])
    {
        if (canWrite(5))
        {
            Log.w(mTAG, String.format(s, aobj));
        }
    }

    public transient void w(Throwable throwable, String s, Object aobj[])
    {
        if (canWrite(5))
        {
            Log.w(mTAG, String.format(s, aobj), throwable);
        }
    }

    public void w(boolean flag, String s)
    {
        w(flag, s, new Object[] {
            Integer.valueOf(0)
        });
    }

    public transient void w(boolean flag, String s, Object aobj[])
    {
        if (flag && canWrite(5))
        {
            Log.w(mTAG, String.format(s, aobj));
        }
    }

}
