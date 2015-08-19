// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class yg
{

    protected final Class a;
    protected final int b;
    protected String c;

    public yg(Class class1, String s)
    {
        a = class1;
        b = class1.getName().hashCode();
        a(s);
    }

    public Class a()
    {
        return a;
    }

    public void a(String s)
    {
        String s1;
label0:
        {
            if (s != null)
            {
                s1 = s;
                if (s.length() != 0)
                {
                    break label0;
                }
            }
            s1 = null;
        }
        c = s1;
    }

    public String b()
    {
        return c;
    }

    public boolean c()
    {
        return c != null;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            if (a != ((yg)obj).a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("[NamedType, class ").append(a.getName()).append(", name: ");
        String s;
        if (c == null)
        {
            s = "null";
        } else
        {
            s = (new StringBuilder()).append("'").append(c).append("'").toString();
        }
        return stringbuilder.append(s).append("]").toString();
    }
}
