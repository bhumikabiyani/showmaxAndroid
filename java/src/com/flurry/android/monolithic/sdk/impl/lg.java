// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lh, li

public class lg
{

    private static final ThreadLocal a = new lh();
    private static final ThreadLocal b = new li();

    public static int a(double d, byte abyte0[], int i)
    {
        long l = Double.doubleToRawLongBits(d);
        int j = (int)(l & -1L);
        int k = (int)(l >>> 32 & -1L);
        abyte0[i] = (byte)(j & 0xff);
        abyte0[i + 4] = (byte)(k & 0xff);
        abyte0[i + 5] = (byte)(k >>> 8 & 0xff);
        abyte0[i + 1] = (byte)(j >>> 8 & 0xff);
        abyte0[i + 2] = (byte)(j >>> 16 & 0xff);
        abyte0[i + 6] = (byte)(k >>> 16 & 0xff);
        abyte0[i + 7] = (byte)(k >>> 24 & 0xff);
        abyte0[i + 3] = (byte)(j >>> 24 & 0xff);
        return 8;
    }

    public static int a(float f, byte abyte0[], int i)
    {
        int j = Float.floatToRawIntBits(f);
        abyte0[i] = (byte)(j & 0xff);
        abyte0[1 + i] = (byte)(j >>> 8 & 0xff);
        abyte0[i + 2] = (byte)(j >>> 16 & 0xff);
        abyte0[i + 3] = (byte)(j >>> 24 & 0xff);
        return 4;
    }

    public static int a(int i, byte abyte0[], int j)
    {
        int k = i << 1 ^ i >> 31;
        if ((k & 0xffffff80) == 0) goto _L2; else goto _L1
_L1:
        int l;
        int j1;
        l = j + 1;
        abyte0[j] = (byte)((k | 0x80) & 0xff);
        j1 = k >>> 7;
        k = l;
        i = j1;
        if (j1 <= 127) goto _L4; else goto _L3
_L3:
        i = l + 1;
        abyte0[l] = (byte)((j1 | 0x80) & 0xff);
        k = j1 >>> 7;
        if (k <= 127) goto _L6; else goto _L5
_L5:
        l = i + 1;
        abyte0[i] = (byte)((k | 0x80) & 0xff);
        j1 = k >>> 7;
        k = l;
        i = j1;
        if (j1 <= 127) goto _L4; else goto _L7
_L7:
        i = l + 1;
        abyte0[l] = (byte)((j1 | 0x80) & 0xff);
        k = j1 >>> 7;
_L6:
        abyte0[i] = (byte)k;
        return (i + 1) - j;
_L4:
        int i1 = i;
        i = k;
        k = i1;
        continue; /* Loop/switch isn't completed */
_L2:
        i = j;
        if (true) goto _L6; else goto _L8
_L8:
    }

    public static int a(long l, byte abyte0[], int i)
    {
        l = l >> 63 ^ l << 1;
        int j;
        if ((-128L & l) != 0L)
        {
            int l1 = i + 1;
            abyte0[i] = (byte)(int)((128L | l) & 255L);
            long l2 = l >>> 7;
            j = l1;
            l = l2;
            if (l2 > 127L)
            {
                int k = l1 + 1;
                abyte0[l1] = (byte)(int)((128L | l2) & 255L);
                l2 >>>= 7;
                j = k;
                l = l2;
                if (l2 > 127L)
                {
                    int i2 = k + 1;
                    abyte0[k] = (byte)(int)((128L | l2) & 255L);
                    l2 >>>= 7;
                    j = i2;
                    l = l2;
                    if (l2 > 127L)
                    {
                        int i1 = i2 + 1;
                        abyte0[i2] = (byte)(int)((128L | l2) & 255L);
                        l2 >>>= 7;
                        j = i1;
                        l = l2;
                        if (l2 > 127L)
                        {
                            int j2 = i1 + 1;
                            abyte0[i1] = (byte)(int)((128L | l2) & 255L);
                            l2 >>>= 7;
                            j = j2;
                            l = l2;
                            if (l2 > 127L)
                            {
                                int j1 = j2 + 1;
                                abyte0[j2] = (byte)(int)((128L | l2) & 255L);
                                l2 >>>= 7;
                                j = j1;
                                l = l2;
                                if (l2 > 127L)
                                {
                                    int k2 = j1 + 1;
                                    abyte0[j1] = (byte)(int)((128L | l2) & 255L);
                                    l2 >>>= 7;
                                    j = k2;
                                    l = l2;
                                    if (l2 > 127L)
                                    {
                                        int k1 = k2 + 1;
                                        abyte0[k2] = (byte)(int)((128L | l2) & 255L);
                                        l2 >>>= 7;
                                        j = k1;
                                        l = l2;
                                        if (l2 > 127L)
                                        {
                                            j = k1 + 1;
                                            abyte0[k1] = (byte)(int)((128L | l2) & 255L);
                                            l = l2 >>> 7;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else
        {
            j = i;
        }
        abyte0[j] = (byte)(int)l;
        return (j + 1) - i;
    }

    public static int a(boolean flag, byte abyte0[], int i)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 1;
        } else
        {
            byte0 = 0;
        }
        abyte0[i] = byte0;
        return 1;
    }

    public static int a(byte abyte0[], int i, int j, byte abyte1[], int k, int l)
    {
        int j1 = k;
        for (int i1 = i; i1 < i + j && j1 < k + l; j1++)
        {
            int k1 = abyte0[i1] & 0xff;
            int l1 = abyte1[j1] & 0xff;
            if (k1 != l1)
            {
                return k1 - l1;
            }
            i1++;
        }

        return j - l;
    }

}
