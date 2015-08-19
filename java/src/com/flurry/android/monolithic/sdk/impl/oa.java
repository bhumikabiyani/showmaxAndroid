// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ob, oj, og

public class oa
{

    private final String a;
    private final ob b;
    private final oj c;

    public oa(String s, oj oj1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Name may not be null");
        }
        if (oj1 == null)
        {
            throw new IllegalArgumentException("Body may not be null");
        } else
        {
            a = s;
            c = oj1;
            b = new ob();
            a(oj1);
            b(oj1);
            c(oj1);
            return;
        }
    }

    public String a()
    {
        return a;
    }

    protected void a(oj oj1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("form-data; name=\"");
        stringbuilder.append(a());
        stringbuilder.append("\"");
        if (oj1.b() != null)
        {
            stringbuilder.append("; filename=\"");
            stringbuilder.append(oj1.b());
            stringbuilder.append("\"");
        }
        a("Content-Disposition", stringbuilder.toString());
    }

    public void a(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Field name may not be null");
        } else
        {
            b.a(new og(s, s1));
            return;
        }
    }

    public oj b()
    {
        return c;
    }

    protected void b(oj oj1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(oj1.a());
        if (oj1.c() != null)
        {
            stringbuilder.append("; charset=");
            stringbuilder.append(oj1.c());
        }
        a("Content-Type", stringbuilder.toString());
    }

    public ob c()
    {
        return b;
    }

    protected void c(oj oj1)
    {
        a("Content-Transfer-Encoding", oj1.d());
    }
}
