// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qe, yd, xk, xp, 
//            xl, xj, xn, xi

public class yc extends qe
    implements Comparable
{

    protected final String a;
    protected final String b;
    protected yd c;
    protected yd d;
    protected yd e;
    protected yd f;

    public yc(yc yc1, String s1)
    {
        b = yc1.b;
        a = s1;
        c = yc1.c;
        d = yc1.d;
        e = yc1.e;
        f = yc1.f;
    }

    public yc(String s1)
    {
        b = s1;
        a = s1;
    }

    private transient xp a(int i1, yd ayd[])
    {
        xp xp1 = ((xk)ayd[i1].a).j();
        for (i1++; i1 < ayd.length; i1++)
        {
            if (ayd[i1] != null)
            {
                return xp.a(xp1, a(i1, ayd));
            }
        }

        return xp1;
    }

    private yd a(yd yd1)
    {
        if (yd1 == null)
        {
            return yd1;
        } else
        {
            return yd1.a();
        }
    }

    private static yd a(yd yd1, yd yd2)
    {
        if (yd1 == null)
        {
            return yd2;
        }
        if (yd2 == null)
        {
            return yd1;
        } else
        {
            return yd.a(yd1, yd2);
        }
    }

    private yd b(yd yd1)
    {
        if (yd1 == null)
        {
            return yd1;
        } else
        {
            return yd1.b();
        }
    }

    private yd b(yd yd1, yd yd2)
    {
_L2:
        yd yd3;
        String s1;
        if (yd1 == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s1 = yd1.c;
        if (s1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        yd3 = yd2;
_L3:
        yd1 = yd1.b;
        yd2 = yd3;
        if (true) goto _L2; else goto _L1
_L1:
        yd3 = yd2;
        if (!s1.equals(a))
        {
label0:
            {
                if (yd2 != null)
                {
                    break label0;
                }
                yd3 = yd1;
            }
        }
          goto _L3
        continue; /* Loop/switch isn't completed */
        yd3 = yd2;
        if (s1.equals(yd2.c)) goto _L3; else goto _L4
_L4:
        throw new IllegalStateException((new StringBuilder()).append("Conflicting property name definitions: '").append(yd2.c).append("' (for ").append(yd2.a).append(") vs '").append(yd1.c).append("' (for ").append(yd1.a).append(")").toString());
        return yd2;
        if (true) goto _L2; else goto _L5
_L5:
    }

    private yd c(yd yd1)
    {
        if (yd1 == null)
        {
            return yd1;
        } else
        {
            return yd1.c();
        }
    }

    private boolean d(yd yd1)
    {
        for (; yd1 != null; yd1 = yd1.b)
        {
            if (yd1.c != null && yd1.c.length() > 0)
            {
                return true;
            }
        }

        return false;
    }

    private boolean e(yd yd1)
    {
        for (; yd1 != null; yd1 = yd1.b)
        {
            if (yd1.d)
            {
                return true;
            }
        }

        return false;
    }

    private boolean f(yd yd1)
    {
        for (; yd1 != null; yd1 = yd1.b)
        {
            if (yd1.e)
            {
                return true;
            }
        }

        return false;
    }

    public int a(yc yc1)
    {
        if (d != null)
        {
            if (yc1.d == null)
            {
                return -1;
            }
        } else
        if (yc1.d != null)
        {
            return 1;
        }
        return a().compareTo(yc1.a());
    }

    public yc a(String s1)
    {
        return new yc(this, s1);
    }

    public String a()
    {
        return a;
    }

    public void a(xj xj1, String s1, boolean flag, boolean flag1)
    {
        c = new yd(xj1, c, s1, flag, flag1);
    }

    public void a(xl xl1, String s1, boolean flag, boolean flag1)
    {
        e = new yd(xl1, e, s1, flag, flag1);
    }

    public void a(xn xn1, String s1, boolean flag, boolean flag1)
    {
        d = new yd(xn1, d, s1, flag, flag1);
    }

    public void a(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (e == null) goto _L4; else goto _L3
_L3:
        xp xp1 = a(0, new yd[] {
            e, c, d, f
        });
        e = e.a(((xl)e.a).a(xp1));
_L6:
        return;
_L4:
        if (c != null)
        {
            xp xp2 = a(0, new yd[] {
                c, d, f
            });
            c = c.a(((xj)c.a).a(xp2));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (d != null)
        {
            xp xp3 = a(0, new yd[] {
                d, f, c, e
            });
            d = d.a(((xn)d.a).a(xp3));
            return;
        }
        if (f != null)
        {
            xp xp4 = a(0, new yd[] {
                f, c, e
            });
            f = f.a(((xl)f.a).a(xp4));
            return;
        }
        if (c != null)
        {
            xp xp5 = a(0, new yd[] {
                c, e
            });
            c = c.a(((xj)c.a).a(xp5));
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void b(xl xl1, String s1, boolean flag, boolean flag1)
    {
        f = new yd(xl1, f, s1, flag, flag1);
    }

    public void b(yc yc1)
    {
        c = a(c, yc1.c);
        d = a(d, yc1.d);
        e = a(e, yc1.e);
        f = a(f, yc1.f);
    }

    public boolean b()
    {
        return e != null;
    }

    public boolean c()
    {
        return f != null;
    }

    public int compareTo(Object obj)
    {
        return a((yc)obj);
    }

    public boolean d()
    {
        return c != null;
    }

    public boolean e()
    {
        return d != null;
    }

    public xl g()
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        xl xl2 = null;
_L4:
        return xl2;
_L2:
        xl xl1;
        yd yd1;
        xl1 = (xl)e.a;
        yd1 = e.b;
_L9:
        xl2 = xl1;
        if (yd1 == null) goto _L4; else goto _L3
_L3:
        Class class1;
        Class class2;
        xl2 = (xl)yd1.a;
        class1 = xl1.h();
        class2 = xl2.h();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        xl1 = xl2;
_L10:
        yd1 = yd1.b;
          goto _L9
_L8:
        if (!class2.isAssignableFrom(class1)) goto _L6; else goto _L10
_L6:
        throw new IllegalArgumentException((new StringBuilder()).append("Conflicting getter definitions for property \"").append(a()).append("\": ").append(xl1.n()).append(" vs ").append(xl2.n()).toString());
    }

    public xl h()
    {
        if (f != null) goto _L2; else goto _L1
_L1:
        xl xl2 = null;
_L4:
        return xl2;
_L2:
        xl xl1;
        yd yd1;
        xl1 = (xl)f.a;
        yd1 = f.b;
_L9:
        xl2 = xl1;
        if (yd1 == null) goto _L4; else goto _L3
_L3:
        Class class1;
        Class class2;
        xl2 = (xl)yd1.a;
        class1 = xl1.h();
        class2 = xl2.h();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        xl1 = xl2;
_L10:
        yd1 = yd1.b;
          goto _L9
_L8:
        if (!class2.isAssignableFrom(class1)) goto _L6; else goto _L10
_L6:
        throw new IllegalArgumentException((new StringBuilder()).append("Conflicting setter definitions for property \"").append(a()).append("\": ").append(xl1.n()).append(" vs ").append(xl2.n()).toString());
    }

    public xj i()
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        xj xj2 = null;
_L4:
        return xj2;
_L2:
        xj xj1;
        yd yd1;
        xj1 = (xj)c.a;
        yd1 = c.b;
_L9:
        xj2 = xj1;
        if (yd1 == null) goto _L4; else goto _L3
_L3:
        Class class1;
        Class class2;
        xj2 = (xj)yd1.a;
        class1 = xj1.h();
        class2 = xj2.h();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        xj1 = xj2;
_L10:
        yd1 = yd1.b;
          goto _L9
_L8:
        if (!class2.isAssignableFrom(class1)) goto _L6; else goto _L10
_L6:
        throw new IllegalArgumentException((new StringBuilder()).append("Multiple fields representing property \"").append(a()).append("\": ").append(xj1.f()).append(" vs ").append(xj2.f()).toString());
    }

    public xk j()
    {
        xl xl1 = g();
        Object obj = xl1;
        if (xl1 == null)
        {
            obj = i();
        }
        return ((xk) (obj));
    }

    public xk k()
    {
        xn xn1 = m();
        Object obj = xn1;
        if (xn1 == null)
        {
            xl xl1 = h();
            obj = xl1;
            if (xl1 == null)
            {
                obj = i();
            }
        }
        return ((xk) (obj));
    }

    public String l()
    {
        return b;
    }

    public xn m()
    {
        if (d == null)
        {
            return null;
        }
        yd yd1 = d;
        do
        {
            if (((xn)yd1.a).f() instanceof xi)
            {
                return (xn)yd1.a;
            }
            yd1 = yd1.b;
        } while (yd1 != null);
        return (xn)d.a;
    }

    public void n()
    {
        c = a(c);
        e = a(e);
        f = a(f);
        d = a(d);
    }

    public void o()
    {
        e = b(e);
        d = b(d);
        if (e == null)
        {
            c = b(c);
            f = b(f);
        }
    }

    public void p()
    {
        c = c(c);
        e = c(e);
        f = c(f);
        d = c(d);
    }

    public boolean q()
    {
        return d(c) || d(e) || d(f) || d(d);
    }

    public boolean r()
    {
        return e(c) || e(e) || e(f) || e(d);
    }

    public boolean s()
    {
        return f(c) || f(e) || f(f) || f(d);
    }

    public boolean t()
    {
        return f(c) || f(f) || f(d);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[Property '").append(a).append("'; ctors: ").append(d).append(", field(s): ").append(c).append(", getter(s): ").append(e).append(", setter(s): ").append(f);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public String u()
    {
        yd yd1 = b(c, null);
        yd1 = b(e, yd1);
        yd1 = b(f, yd1);
        yd1 = b(d, yd1);
        if (yd1 == null)
        {
            return null;
        } else
        {
            return yd1.c;
        }
    }
}
