// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qm, qw, ow, xe, 
//            qt, aeh, oz, qk, 
//            aeg, qn, adp, qq, 
//            afm, pb, qc, qu

public class td extends qm
{

    protected ow c;
    protected final qq d;
    protected final qt e;
    protected adp f;
    protected aeh g;
    protected DateFormat h;

    public td(qk qk1, ow ow1, qq qq, qt qt1)
    {
        super(qk1);
        c = ow1;
        d = qq;
        e = qt1;
    }

    public qw a(afm afm, String s)
    {
        return qw.a(c, (new StringBuilder()).append("Could not resolve type id '").append(s).append("' into a subtype of ").append(afm).toString());
    }

    public qw a(ow ow1, pb pb, String s)
    {
        return qw.a(ow1, (new StringBuilder()).append("Unexpected token (").append(ow1.e()).append("), expected ").append(pb).append(": ").append(s).toString());
    }

    public qw a(Class class1, pb pb)
    {
        class1 = c(class1);
        return qw.a(c, (new StringBuilder()).append("Can not deserialize instance of ").append(class1).append(" out of ").append(pb).append(" token").toString());
    }

    public qw a(Class class1, String s)
    {
        return qw.a(c, (new StringBuilder()).append("Can not construct instance of ").append(class1.getName()).append(", problem: ").append(s).toString());
    }

    public qw a(Class class1, String s, String s1)
    {
        return qw.a(c, (new StringBuilder()).append("Can not construct Map key of type ").append(class1.getName()).append(" from String \"").append(c(s)).append("\": ").append(s1).toString());
    }

    public qw a(Class class1, Throwable throwable)
    {
        return qw.a(c, (new StringBuilder()).append("Can not construct instance of ").append(class1.getName()).append(", problem: ").append(throwable.getMessage()).toString(), throwable);
    }

    public qw a(Object obj, String s)
    {
        return xe.a(c, obj, s);
    }

    public Object a(Object obj, qc qc, Object obj1)
    {
        if (e == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("No 'injectableValues' configured, can not inject value with id [").append(obj).append("]").toString());
        } else
        {
            return e.a(obj, this, qc, obj1);
        }
    }

    public Calendar a(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public Date a(String s)
        throws IllegalArgumentException
    {
        try
        {
            s = i().parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s.getMessage());
        }
        return s;
    }

    public final void a(aeh aeh1)
    {
        if (g == null || aeh1.b() >= g.b())
        {
            g = aeh1;
        }
    }

    public boolean a(ow ow1, qu qu, Object obj, String s)
        throws IOException, oz
    {
        ow ow2;
        aeg aeg1 = a.f();
        if (aeg1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        ow2 = c;
        c = ow1;
        ow1 = aeg1;
_L2:
        if (ow1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag = ((qn)ow1.b()).a(this, qu, obj, s);
        if (flag)
        {
            c = ow2;
            return true;
        }
        ow1 = ow1.a();
        if (true) goto _L2; else goto _L1
_L1:
        c = ow2;
        return false;
        ow1;
        c = ow2;
        throw ow1;
    }

    public qq b()
    {
        return d;
    }

    public qw b(Class class1)
    {
        return a(class1, c.e());
    }

    public qw b(Class class1, String s)
    {
        return qw.a(c, (new StringBuilder()).append("Can not construct instance of ").append(class1.getName()).append(" from String value '").append(j()).append("': ").append(s).toString());
    }

    public qw c(Class class1, String s)
    {
        return qw.a(c, (new StringBuilder()).append("Can not construct instance of ").append(class1.getName()).append(" from number value (").append(j()).append("): ").append(s).toString());
    }

    protected String c(Class class1)
    {
        if (class1.isArray())
        {
            return (new StringBuilder()).append(c(class1.getComponentType())).append("[]").toString();
        } else
        {
            return class1.getName();
        }
    }

    protected String c(String s)
    {
        String s1 = s;
        if (s.length() > 500)
        {
            s1 = (new StringBuilder()).append(s.substring(0, 500)).append("]...[").append(s.substring(s.length() - 500)).toString();
        }
        return s1;
    }

    public ow d()
    {
        return c;
    }

    public final aeh g()
    {
        aeh aeh1 = g;
        if (aeh1 == null)
        {
            return new aeh();
        } else
        {
            g = null;
            return aeh1;
        }
    }

    public final adp h()
    {
        if (f == null)
        {
            f = new adp();
        }
        return f;
    }

    protected DateFormat i()
    {
        if (h == null)
        {
            h = (DateFormat)a.n().clone();
        }
        return h;
    }

    protected String j()
    {
        String s;
        try
        {
            s = c(c.k());
        }
        catch (Exception exception)
        {
            return "[N/A]";
        }
        return s;
    }
}
