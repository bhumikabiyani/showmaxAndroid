// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yt, afm, adk

public class yu extends yt
{

    protected final String a;
    protected final String b;

    protected yu(afm afm1, adk adk)
    {
        super(afm1, adk);
        afm1 = afm1.p().getName();
        int i = afm1.lastIndexOf('.');
        if (i < 0)
        {
            a = "";
            b = ".";
            return;
        } else
        {
            b = afm1.substring(0, i + 1);
            a = afm1.substring(0, i);
            return;
        }
    }

    public afm a(String s)
    {
        Object obj = s;
        if (s.startsWith("."))
        {
            obj = new StringBuilder(s.length() + a.length());
            if (a.length() == 0)
            {
                ((StringBuilder) (obj)).append(s.substring(1));
            } else
            {
                ((StringBuilder) (obj)).append(a).append(s);
            }
            obj = ((StringBuilder) (obj)).toString();
        }
        return super.a(((String) (obj)));
    }

    public String a(Object obj)
    {
        String s = obj.getClass().getName();
        obj = s;
        if (s.startsWith(b))
        {
            obj = s.substring(b.length() - 1);
        }
        return ((String) (obj));
    }
}
