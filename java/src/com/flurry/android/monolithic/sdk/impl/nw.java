// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.UnsupportedEncodingException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lg

public class nw
    implements CharSequence, Comparable
{

    private static final byte a[] = new byte[0];
    private byte b[];
    private int c;
    private String d;

    public nw()
    {
        b = a;
    }

    public nw(nw nw1)
    {
        b = a;
        c = nw1.c;
        b = new byte[nw1.c];
        System.arraycopy(nw1.b, 0, b, 0, c);
        d = nw1.d;
    }

    public nw(String s)
    {
        b = a;
        b = a(s);
        c = b.length;
        d = s;
    }

    public static final byte[] a(String s)
    {
        try
        {
            s = s.getBytes("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return new byte[0];
        }
        return s;
    }

    public int a(nw nw1)
    {
        return lg.a(b, 0, c, nw1.b, 0, nw1.c);
    }

    public nw a(int i)
    {
        if (c < i)
        {
            byte abyte0[] = new byte[i];
            System.arraycopy(b, 0, abyte0, 0, c);
            b = abyte0;
        }
        c = i;
        d = null;
        return this;
    }

    public byte[] a()
    {
        return b;
    }

    public int b()
    {
        return c;
    }

    public char charAt(int i)
    {
        return toString().charAt(i);
    }

    public int compareTo(Object obj)
    {
        return a((nw)obj);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (obj instanceof nw)
        {
            obj = (nw)obj;
            flag = flag1;
            if (c == ((nw) (obj)).c)
            {
                obj = ((nw) (obj)).b;
                int i = 0;
label0:
                do
                {
label1:
                    {
                        if (i >= c)
                        {
                            break label1;
                        }
                        flag = flag1;
                        if (b[i] != obj[i])
                        {
                            break label0;
                        }
                        i++;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public int hashCode()
    {
        int i = 0;
        int j = 0;
        for (; i < c; i++)
        {
            j = j * 31 + b[i];
        }

        return j;
    }

    public int length()
    {
        return toString().length();
    }

    public CharSequence subSequence(int i, int j)
    {
        return toString().subSequence(i, j);
    }

    public String toString()
    {
        if (d == null)
        {
            try
            {
                d = new String(b, 0, c, "UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                unsupportedencodingexception.printStackTrace();
            }
        }
        return d;
    }

}
