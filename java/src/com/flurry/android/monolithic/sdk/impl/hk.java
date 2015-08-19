// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Vector;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hl, hm

public class hk
{

    protected String a;
    protected String b;
    protected Vector c;
    hl d;
    private int e;

    public hk(String s)
    {
        a = "";
        b = "";
        c = new Vector();
        d = hl.c;
        e = 31;
        a = s;
        d = hl.b;
    }

    public hk(String s, String s1)
    {
        a = "";
        b = "";
        c = new Vector();
        d = hl.c;
        e = 31;
        a = s;
        b = s1;
        d = hl.a;
    }

    public Vector a()
    {
        return c;
    }

    public void a(String s, String s1)
    {
        c.add(new BasicNameValuePair(s, s1));
    }

    public void a(Vector vector)
    {
        c = vector;
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            obj = (hm)obj;
            if (!((hm) (obj)).a.equals(a) || !((hm) (obj)).b.equals(b) || !((hm) (obj)).c.equals(c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return ((e * e + a.hashCode()) * e + b.hashCode()) * e + c.hashCode();
    }
}
