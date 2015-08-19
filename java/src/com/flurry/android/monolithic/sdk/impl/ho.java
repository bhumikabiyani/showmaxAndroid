// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hn, hm, hl, hp, 
//            gr, hq, hr

class ho
{

    private hn a;
    private String b;
    private Object c;

    ho()
    {
        c = new Object();
    }

    static hn a(ho ho1)
    {
        return ho1.a;
    }

    static String a(ho ho1, String s)
    {
        ho1.b = s;
        return s;
    }

    static Object b(ho ho1)
    {
        return ho1.c;
    }

    private hn c(hm hm1)
    {
        a = new hn(721, null);
        ArrayList arraylist;
        String s1;
        arraylist = new ArrayList(hm1.a());
        b = hm1.c();
        s1 = hm1.b();
        String s;
        boolean flag1;
        s = "v1/";
        flag1 = false;
        if (hm1.g() != hl.b) goto _L2; else goto _L1
_L1:
        boolean flag = true;
        s = (new StringBuilder()).append("v1/").append("user").toString();
_L4:
        if (b == null)
        {
            gr.a(flag, s, arraylist, new hp(this));
        }
_L5:
        synchronized (c)
        {
            c.wait(30000L);
        }
_L6:
        return a;
_L2:
        flag = flag1;
        if (hm1.g() != hl.a) goto _L4; else goto _L3
_L3:
        s = (new StringBuilder()).append("v1/").append("object/").append(s1).toString();
        flag = flag1;
          goto _L4
        hm1;
        hm1.printStackTrace();
          goto _L5
        exception;
        hm1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (hm hm1)
        {
            hm1.printStackTrace();
        }
          goto _L6
    }

    private hn d(hm hm1)
    {
        a = new hn(721, null);
        b = hm1.c();
        String s1 = hm1.b();
        String s = "v1/";
        boolean flag1 = false;
        boolean flag;
        if (hm1.g() == hl.b)
        {
            flag = true;
            s = (new StringBuilder()).append("v1/").append("user").toString();
        } else
        {
            flag = flag1;
            if (hm1.g() == hl.a)
            {
                s = (new StringBuilder()).append("v1/").append("object/").append(s1).toString();
                flag = flag1;
            }
        }
        try
        {
            gr.c(flag, (new StringBuilder()).append(s).append("/").append(b).toString(), null, new hq(this));
        }
        // Misplaced declaration of an exception variable
        catch (hm hm1)
        {
            hm1.printStackTrace();
        }
        synchronized (c)
        {
            c.wait(30000L);
        }
_L2:
        return a;
        exception;
        hm1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (hm hm1)
        {
            hm1.printStackTrace();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public hn a(hm hm1)
    {
        switch (hm1.h())
        {
        default:
            return null;

        case 1: // '\001'
            return c(hm1);

        case 2: // '\002'
            return d(hm1);

        case 32: // ' '
            return b(hm1);
        }
    }

    public hn b(hm hm1)
    {
        a = new hn(721, null);
        String s = ((NameValuePair)hm1.a().get(0)).getName();
        String s1 = ((NameValuePair)hm1.a().get(0)).getValue();
        b = hm1.c();
        String s2 = hm1.b();
        ArrayList arraylist = new ArrayList();
        if (s != null && !s.equals(""))
        {
            arraylist.add(new BasicNameValuePair(s, (new StringBuilder()).append("decrement:").append(s1).toString()));
        }
        boolean flag;
        if (hm1.g() == hl.b)
        {
            flag = true;
            hm1 = (new StringBuilder()).append("").append("user").toString();
        } else
        if (hm1.g() == hl.a)
        {
            hm1 = (new StringBuilder()).append("").append("object/").append(s2).toString();
            flag = false;
        } else
        {
            flag = false;
            hm1 = "";
        }
        try
        {
            gr.b(flag, (new StringBuilder()).append(hm1).append("/").append(b).toString(), arraylist, new hr(this));
        }
        // Misplaced declaration of an exception variable
        catch (hm hm1)
        {
            hm1.printStackTrace();
        }
        synchronized (c)
        {
            c.wait(30000L);
        }
_L2:
        return a;
        exception;
        hm1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (hm hm1)
        {
            hm1.printStackTrace();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }
}
