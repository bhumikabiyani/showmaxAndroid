// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ow, ov, oz, ox, 
//            on, afq, pb, pj

public abstract class pi extends ow
{

    protected pi()
    {
    }

    protected pi(int i)
    {
        super(i);
    }

    protected static final String c(int i)
    {
        char c1 = (char)i;
        if (Character.isISOControl(c1))
        {
            return (new StringBuilder()).append("(CTRL-CHAR, code ").append(i).append(")").toString();
        }
        if (i > 255)
        {
            return (new StringBuilder()).append("'").append(c1).append("' (code ").append(i).append(" / 0x").append(Integer.toHexString(i)).append(")").toString();
        } else
        {
            return (new StringBuilder()).append("'").append(c1).append("' (code ").append(i).append(")").toString();
        }
    }

    protected abstract void H()
        throws ov;

    protected void R()
        throws ov
    {
        throw a("Unexpected end-of-String in base64 content");
    }

    protected void S()
        throws ov
    {
        c((new StringBuilder()).append(" in ").append(b).toString());
    }

    protected void T()
        throws ov
    {
        c(" in a value");
    }

    protected final void U()
    {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    protected char a(char c1)
        throws oz
    {
        while (a(ox.f) || c1 == '\'' && a(ox.d)) 
        {
            return c1;
        }
        d((new StringBuilder()).append("Unrecognized character escape ").append(c(c1)).toString());
        return c1;
    }

    protected void a(on on1, char c1, int i, String s)
        throws ov
    {
        Object obj;
        if (c1 <= ' ')
        {
            on1 = (new StringBuilder()).append("Illegal white space character (code 0x").append(Integer.toHexString(c1)).append(") as character #").append(i + 1).append(" of 4-char base64 unit: can only used between units").toString();
        } else
        if (on1.a(c1))
        {
            on1 = (new StringBuilder()).append("Unexpected padding character ('").append(on1.b()).append("') as character #").append(i + 1).append(" of 4-char base64 unit: padding only legal as 3rd or 4th character").toString();
        } else
        if (!Character.isDefined(c1) || Character.isISOControl(c1))
        {
            on1 = (new StringBuilder()).append("Illegal character (code 0x").append(Integer.toHexString(c1)).append(") in base64 content").toString();
        } else
        {
            on1 = (new StringBuilder()).append("Illegal character '").append(c1).append("' (code 0x").append(Integer.toHexString(c1)).append(") in base64 content").toString();
        }
        obj = on1;
        if (s != null)
        {
            obj = (new StringBuilder()).append(on1).append(": ").append(s).toString();
        }
        throw a(((String) (obj)));
    }

    protected void a(String s, afq afq1, on on1)
        throws IOException, ov
    {
        int i;
        int l;
        l = s.length();
        i = 0;
_L4:
        if (i >= l) goto _L2; else goto _L1
_L1:
        char c1;
        int j;
        j = i + 1;
        c1 = s.charAt(i);
        if (j < l) goto _L3; else goto _L2
_L2:
        return;
_L3:
label0:
        {
            if (c1 <= ' ')
            {
                break label0;
            }
            int i1 = on1.b(c1);
            if (i1 < 0)
            {
                a(on1, c1, 0, null);
            }
            if (j >= l)
            {
                R();
            }
            i = j + 1;
            c1 = s.charAt(j);
            j = on1.b(c1);
            if (j < 0)
            {
                a(on1, c1, 1, null);
            }
            i1 = i1 << 6 | j;
            if (i >= l)
            {
                if (!on1.a())
                {
                    afq1.a(i1 >> 4);
                    return;
                }
                R();
            }
            j = i + 1;
            c1 = s.charAt(i);
            i = on1.b(c1);
            if (i < 0)
            {
                if (i != -2)
                {
                    a(on1, c1, 2, null);
                }
                if (j >= l)
                {
                    R();
                }
                i = j + 1;
                c1 = s.charAt(j);
                if (!on1.a(c1))
                {
                    a(on1, c1, 3, (new StringBuilder()).append("expected padding character '").append(on1.b()).append("'").toString());
                }
                afq1.a(i1 >> 4);
            } else
            {
                i1 = i1 << 6 | i;
                if (j >= l)
                {
                    if (!on1.a())
                    {
                        afq1.b(i1 >> 2);
                        return;
                    }
                    R();
                }
                i = j + 1;
                char c2 = s.charAt(j);
                j = on1.b(c2);
                if (j < 0)
                {
                    if (j != -2)
                    {
                        a(on1, c2, 3, null);
                    }
                    afq1.b(i1 >> 2);
                } else
                {
                    afq1.c(i1 << 6 | j);
                }
            }
        }
          goto _L4
        i = j;
          goto _L1
    }

    protected final void a(String s, Throwable throwable)
        throws ov
    {
        throw b(s, throwable);
    }

    protected final ov b(String s, Throwable throwable)
    {
        return new ov(s, i(), throwable);
    }

    public abstract pb b()
        throws IOException, ov;

    protected void b(int i)
        throws ov
    {
        i = (char)i;
        d((new StringBuilder()).append("Illegal character (").append(c(i)).append("): only regular white space (\\r, \\n, \\t) is allowed between tokens").toString());
    }

    protected void b(int i, String s)
        throws ov
    {
        String s2 = (new StringBuilder()).append("Unexpected character (").append(c(i)).append(")").toString();
        String s1 = s2;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s2).append(": ").append(s).toString();
        }
        d(s1);
    }

    protected void c(int i, String s)
        throws ov
    {
        if (!a(ox.e) || i >= 32)
        {
            i = (char)i;
            d((new StringBuilder()).append("Illegal unquoted character (").append(c(i)).append("): has to be escaped using backslash to be included in ").append(s).toString());
        }
    }

    protected void c(String s)
        throws ov
    {
        d((new StringBuilder()).append("Unexpected end-of-input").append(s).toString());
    }

    public ow d()
        throws IOException, ov
    {
        if (b != pb.b && b != pb.d)
        {
            return this;
        }
        int i = 1;
        int j;
        do
        {
label0:
            do
            {
                pb pb1 = b();
                if (pb1 == null)
                {
                    H();
                    return this;
                }
                switch (pj.a[pb1.ordinal()])
                {
                default:
                    break;

                case 1: // '\001'
                case 2: // '\002'
                    i++;
                    break;

                case 3: // '\003'
                case 4: // '\004'
                    j = i - 1;
                    break label0;
                }
            } while (true);
            i = j;
        } while (j != 0);
        return this;
    }

    protected final void d(String s)
        throws ov
    {
        throw a(s);
    }

    public abstract String k()
        throws IOException, ov;
}
