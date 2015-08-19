// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public class gi
{

    public String a;
    public String b;
    public String c;
    public String d;
    public String e;

    public gi(String s, String s1, String s2, String s3, String s4)
    {
        e = null;
        a = s;
        b = s1;
        c = s2;
        d = s3;
        e = s4;
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
            obj = (gi)obj;
            if (!((gi) (obj)).a.equals(a) || !((gi) (obj)).c.equals(c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 36 * (a.hashCode() + 1296) + c.hashCode();
    }
}
