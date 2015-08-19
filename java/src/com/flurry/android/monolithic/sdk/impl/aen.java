// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pt

public class aen extends DateFormat
{

    protected static final String a[] = {
        "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"
    };
    protected static final DateFormat b;
    protected static final DateFormat c;
    protected static final DateFormat d;
    protected static final DateFormat e;
    public static final aen f = new aen();
    protected transient DateFormat g;
    protected transient DateFormat h;
    protected transient DateFormat i;
    protected transient DateFormat j;

    public aen()
    {
    }

    private static final boolean b(String s)
    {
        int k = s.length();
        if (k < 6) goto _L2; else goto _L1
_L1:
        char c1 = s.charAt(k - 6);
        if (c1 != '+' && c1 != '-') goto _L4; else goto _L3
_L3:
        return true;
_L4:
        if ((c1 = s.charAt(k - 5)) == '+' || c1 == '-' || ((k = s.charAt(k - 3)) == '+' || k == '-')) goto _L3; else goto _L2
_L2:
        return false;
    }

    public aen a()
    {
        return new aen();
    }

    protected Date a(String s, ParsePosition parseposition)
    {
        char c1;
        int k;
        k = s.length();
        c1 = s.charAt(k - 1);
        if (k > 10 || !Character.isDigit(c1)) goto _L2; else goto _L1
_L1:
        Object obj;
        String s1;
        DateFormat dateformat = j;
        obj = dateformat;
        s1 = s;
        if (dateformat == null)
        {
            obj = (DateFormat)e.clone();
            j = ((DateFormat) (obj));
            s1 = s;
        }
_L9:
        return ((DateFormat) (obj)).parse(s1, parseposition);
_L2:
        if (c1 == 'Z')
        {
            obj = i;
            DateFormat dateformat1 = ((DateFormat) (obj));
            if (obj == null)
            {
                dateformat1 = (DateFormat)d.clone();
                i = dateformat1;
            }
            obj = dateformat1;
            s1 = s;
            if (s.charAt(k - 4) == ':')
            {
                s = new StringBuilder(s);
                s.insert(k - 1, ".000");
                s1 = s.toString();
                obj = dateformat1;
            }
            continue; /* Loop/switch isn't completed */
        }
        if (!b(s)) goto _L4; else goto _L3
_L3:
        char c2 = s.charAt(k - 3);
        if (c2 != ':') goto _L6; else goto _L5
_L5:
        s = new StringBuilder(s);
        s.delete(k - 3, k - 2);
        obj = s.toString();
_L7:
        k = ((String) (obj)).length();
        s = ((String) (obj));
        if (Character.isDigit(((String) (obj)).charAt(k - 9)))
        {
            s = new StringBuilder(((String) (obj)));
            s.insert(k - 5, ".000");
            s = s.toString();
        }
        obj = h;
        s1 = s;
        if (h == null)
        {
            obj = (DateFormat)c.clone();
            h = ((DateFormat) (obj));
            s1 = s;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (c2 != '+')
        {
            obj = s;
            if (c2 != '-')
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        obj = (new StringBuilder()).append(s).append("00").toString();
        if (true) goto _L7; else goto _L4
_L4:
        obj = new StringBuilder(s);
        if (k - s.lastIndexOf('T') - 1 <= 8)
        {
            ((StringBuilder) (obj)).append(".000");
        }
        ((StringBuilder) (obj)).append('Z');
        s = ((StringBuilder) (obj)).toString();
        DateFormat dateformat2 = i;
        obj = dateformat2;
        s1 = s;
        if (dateformat2 == null)
        {
            obj = (DateFormat)d.clone();
            i = ((DateFormat) (obj));
            s1 = s;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected boolean a(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (s.length() >= 5)
        {
            flag = flag1;
            if (Character.isDigit(s.charAt(0)))
            {
                flag = flag1;
                if (Character.isDigit(s.charAt(3)))
                {
                    flag = flag1;
                    if (s.charAt(4) == '-')
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    protected Date b(String s, ParsePosition parseposition)
    {
        if (g == null)
        {
            g = (DateFormat)b.clone();
        }
        return g.parse(s, parseposition);
    }

    public Object clone()
    {
        return a();
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        if (h == null)
        {
            h = (DateFormat)c.clone();
        }
        return h.format(date, stringbuffer, fieldposition);
    }

    public Date parse(String s)
        throws ParseException
    {
        s = s.trim();
        ParsePosition parseposition = new ParsePosition(0);
        Object obj = parse(s, parseposition);
        if (obj != null)
        {
            return ((Date) (obj));
        }
        obj = new StringBuilder();
        String as[] = a;
        int l = as.length;
        int k = 0;
        while (k < l) 
        {
            String s1 = as[k];
            if (((StringBuilder) (obj)).length() > 0)
            {
                ((StringBuilder) (obj)).append("\", \"");
            } else
            {
                ((StringBuilder) (obj)).append('"');
            }
            ((StringBuilder) (obj)).append(s1);
            k++;
        }
        ((StringBuilder) (obj)).append('"');
        throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", new Object[] {
            s, ((StringBuilder) (obj)).toString()
        }), parseposition.getErrorIndex());
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        if (a(s))
        {
            return a(s, parseposition);
        }
        int k = s.length();
        int l;
        char c1;
        do
        {
            l = k - 1;
            if (l < 0)
            {
                break;
            }
            c1 = s.charAt(l);
            if (c1 < '0')
            {
                break;
            }
            k = l;
        } while (c1 <= '9');
        if (l < 0 && pt.a(s, false))
        {
            return new Date(Long.parseLong(s));
        } else
        {
            return b(s, parseposition);
        }
    }

    static 
    {
        TimeZone timezone = TimeZone.getTimeZone("GMT");
        b = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
        b.setTimeZone(timezone);
        c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
        c.setTimeZone(timezone);
        d = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        d.setTimeZone(timezone);
        e = new SimpleDateFormat("yyyy-MM-dd");
        e.setTimeZone(timezone);
    }
}
