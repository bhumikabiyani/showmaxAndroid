// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.Reader;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ph, pq, ov, afy, 
//            afj, pb, pk, ox, 
//            afr, pn, afq, on, 
//            pc

public final class pm extends ph
{

    protected Reader I;
    protected char J[];
    protected pc K;
    protected final afj L;
    protected boolean M;

    public pm(pq pq1, int i, Reader reader, pc pc, afj afj1)
    {
        super(pq1, i);
        M = false;
        I = reader;
        J = pq1.d();
        K = pc;
        L = afj1;
    }

    private final pb a(boolean flag)
        throws IOException, ov
    {
        int k2 = 0;
        char ac3[] = p.k();
        char c;
        char c1;
        char ac2[];
        int i;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        if (flag)
        {
            ac3[0] = '-';
            i = 1;
        } else
        {
            i = 0;
        }
        if (f < g)
        {
            char ac1[] = J;
            int j = f;
            f = j + 1;
            c = ac1[j];
        } else
        {
            c = e("No digit following minus sign");
        }
        c1 = c;
        if (c == '0')
        {
            c1 = ad();
        }
        i1 = 0;
        c = c1;
        if (c < '0' || c > '9')
        {
            break MISSING_BLOCK_LABEL_860;
        }
        i1++;
        j1 = i;
        ac2 = ac3;
        if (i >= ac3.length)
        {
            ac2 = p.m();
            j1 = 0;
        }
        i = j1 + 1;
        ac2[j1] = c;
        if (f < g || E()) goto _L2; else goto _L1
_L1:
        j1 = 1;
        c = '\0';
        k1 = i1;
        i1 = i;
        i = j1;
_L20:
        if (k1 == 0)
        {
            b((new StringBuilder()).append("Missing integer part (next char ").append(c(c)).append(")").toString());
        }
        if (c != '.') goto _L4; else goto _L3
_L3:
        ac2[i1] = c;
        i1++;
        j1 = 0;
_L15:
        if (f < g || E()) goto _L6; else goto _L5
_L5:
        i = 1;
_L13:
        if (j1 == 0)
        {
            a(c, "Decimal point not followed by a digit");
        }
        l1 = j1;
        j1 = i1;
        i1 = i;
        ac3 = ac2;
        i = j1;
_L18:
        if (c != 'e' && c != 'E') goto _L8; else goto _L7
_L7:
        j1 = i;
        ac2 = ac3;
        if (i >= ac3.length)
        {
            ac2 = p.m();
            j1 = 0;
        }
        i = j1 + 1;
        ac2[j1] = c;
        if (f < g)
        {
            ac3 = J;
            j1 = f;
            f = j1 + 1;
            c = ac3[j1];
        } else
        {
            c = e("expected a digit for number exponent");
        }
        if (c == '-' || c == '+')
        {
            if (i >= ac2.length)
            {
                ac2 = p.m();
                i = 0;
            }
            ac2[i] = c;
            if (f < g)
            {
                ac3 = J;
                j1 = f;
                f = j1 + 1;
                c = ac3[j1];
            } else
            {
                c = e("expected a digit for number exponent");
            }
            i++;
            j1 = 0;
        } else
        {
            j1 = 0;
        }
        if (c > '9' || c < '0') goto _L10; else goto _L9
_L9:
        j1++;
        i2 = i;
        ac3 = ac2;
        if (i >= ac2.length)
        {
            ac3 = p.m();
            i2 = 0;
        }
        i = i2 + 1;
        ac3[i2] = c;
        if (f < g || E()) goto _L12; else goto _L11
_L11:
        i2 = 1;
        i1 = i;
        i = i2;
_L16:
        i2 = i;
        j2 = i1;
        k2 = j1;
        if (j1 == 0)
        {
            a(c, "Exponent indicator not followed by a digit");
            k2 = j1;
            j2 = i1;
            i2 = i;
        }
_L17:
        if (i2 == 0)
        {
            f = f - 1;
        }
        p.a(j2);
        return a(flag, k1, l1, k2);
_L2:
        ac3 = J;
        j1 = f;
        f = j1 + 1;
        c = ac3[j1];
        ac3 = ac2;
        break MISSING_BLOCK_LABEL_80;
_L6:
        ac3 = J;
        l1 = f;
        f = l1 + 1;
        c = ac3[l1];
        if (c >= '0' && c <= '9') goto _L14; else goto _L13
_L14:
        j1++;
        if (i1 >= ac2.length)
        {
            ac2 = p.m();
            i1 = 0;
        }
        l1 = i1 + 1;
        ac2[i1] = c;
        i1 = l1;
          goto _L15
_L12:
        ac2 = J;
        i2 = f;
        f = i2 + 1;
        c = ac2[i2];
        ac2 = ac3;
        break MISSING_BLOCK_LABEL_456;
_L10:
        i2 = i;
        i = i1;
        i1 = i2;
          goto _L16
_L8:
        i2 = i1;
        j2 = i;
          goto _L17
_L4:
        l1 = 0;
        j1 = i;
        i = i1;
        ac3 = ac2;
        i1 = j1;
          goto _L18
        j1 = 0;
        k1 = i1;
        ac2 = ac3;
        i1 = i;
        i = j1;
        if (true) goto _L20; else goto _L19
_L19:
    }

    private String a(int i, int j, int i1)
        throws IOException, ov
    {
        char ac1[];
        p.a(J, i, f - i);
        ac1 = p.j();
        i = p.l();
_L3:
        char c1;
        if (f >= g && !E())
        {
            c((new StringBuilder()).append(": was expecting closing '").append((char)i1).append("' for name").toString());
        }
        char ac2[] = J;
        int j1 = f;
        f = j1 + 1;
        c1 = ac2[j1];
        if (c1 > '\\')
        {
            break MISSING_BLOCK_LABEL_243;
        }
        if (c1 != '\\') goto _L2; else goto _L1
_L1:
        char c = Q();
_L4:
        j = j * 31 + c1;
        int k1 = i + 1;
        ac1[i] = c;
        afy afy1;
        char ac3[];
        if (k1 >= ac1.length)
        {
            ac1 = p.m();
            i = 0;
        } else
        {
            i = k1;
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (c1 <= i1)
        {
            if (c1 == i1)
            {
                p.a(i);
                afy1 = p;
                ac3 = afy1.e();
                i = afy1.d();
                i1 = afy1.c();
                return L.a(ac3, i, i1, j);
            }
            if (c1 < ' ')
            {
                c(c1, "name");
            }
        }
        c = c1;
          goto _L4
    }

    private String a(int i, int j, int ai1[])
        throws IOException, ov
    {
        char ac1[];
        int k1;
        p.a(J, i, f - i);
        ac1 = p.j();
        i = p.l();
        k1 = ai1.length;
_L5:
        if (f < g || E()) goto _L2; else goto _L1
_L1:
        char c;
        p.a(i);
        ai1 = p;
        ac1 = ai1.e();
        i = ai1.d();
        int i1 = ai1.c();
        return L.a(ac1, i, i1, j);
_L2:
        int j1;
        if ((c = J[f]) > k1 ? Character.isJavaIdentifierPart(c) : ai1[c] == 0) goto _L3; else goto _L1
_L3:
        f = f + 1;
        j = j * 31 + c;
        j1 = i + 1;
        ac1[i] = c;
        if (j1 >= ac1.length)
        {
            ac1 = p.m();
            i = 0;
        } else
        {
            i = j1;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private final pb ac()
    {
        pb pb1;
        r = false;
        pb1 = o;
        o = null;
        if (pb1 != pb.d) goto _L2; else goto _L1
_L1:
        n = n.b(l, m);
_L4:
        b = pb1;
        return pb1;
_L2:
        if (pb1 == pb.b)
        {
            n = n.c(l, m);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private final char ad()
        throws IOException, ov
    {
        if (f < g || E()) goto _L2; else goto _L1
_L1:
        char c = '0';
_L4:
        return c;
_L2:
        char c1;
        c1 = J[f];
        if (c1 < '0' || c1 > '9')
        {
            return '0';
        }
        if (!a(ox.g))
        {
            b("Leading zeroes not allowed");
        }
        f = f + 1;
        c = c1;
        if (c1 != '0')
        {
            continue; /* Loop/switch isn't completed */
        }
        c = c1;
        do
        {
            if (f >= g && !E())
            {
                continue; /* Loop/switch isn't completed */
            }
            c1 = J[f];
            if (c1 < '0' || c1 > '9')
            {
                return '0';
            }
            f = f + 1;
            c = c1;
        } while (c1 == '0');
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return c1;
    }

    private final int ae()
        throws IOException, ov
    {
        do
        {
            if (f >= g && !E())
            {
                break;
            }
            char ac1[] = J;
            int i = f;
            f = i + 1;
            i = ac1[i];
            if (i > ' ')
            {
                if (i != '/')
                {
                    return i;
                }
                ag();
            } else
            if (i != ' ')
            {
                if (i == '\n')
                {
                    ab();
                } else
                if (i == '\r')
                {
                    aa();
                } else
                if (i != '\t')
                {
                    b(i);
                }
            }
        } while (true);
        throw a((new StringBuilder()).append("Unexpected end-of-input within/between ").append(n.d()).append(" entries").toString());
    }

    private final int af()
        throws IOException, ov
    {
        int i;
label0:
        {
            while (f < g || E()) 
            {
                char ac1[] = J;
                i = f;
                f = i + 1;
                char c = ac1[i];
                if (c > ' ')
                {
                    i = c;
                    if (c != '/')
                    {
                        break label0;
                    }
                    ag();
                } else
                if (c != ' ')
                {
                    if (c == '\n')
                    {
                        ab();
                    } else
                    if (c == '\r')
                    {
                        aa();
                    } else
                    if (c != '\t')
                    {
                        b(c);
                    }
                }
            }
            H();
            i = -1;
        }
        return i;
    }

    private final void ag()
        throws IOException, ov
    {
        if (!a(ox.b))
        {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (f >= g && !E())
        {
            c(" in a comment");
        }
        char ac1[] = J;
        int i = f;
        f = i + 1;
        i = ac1[i];
        if (i == '/')
        {
            ai();
            return;
        }
        if (i == '*')
        {
            ah();
            return;
        } else
        {
            b(i, "was expecting either '*' or '/' for a comment");
            return;
        }
    }

    private final void ah()
        throws IOException, ov
    {
        do
        {
            int i;
label0:
            {
label1:
                {
                    if (f < g || E())
                    {
                        char ac1[] = J;
                        i = f;
                        f = i + 1;
                        i = ac1[i];
                        if (i > '*')
                        {
                            continue;
                        }
                        if (i != '*')
                        {
                            break label0;
                        }
                        if (f < g || E())
                        {
                            break label1;
                        }
                    }
                    c(" in a comment");
                    return;
                }
                if (J[f] == '/')
                {
                    f = f + 1;
                    return;
                }
                continue;
            }
            if (i < ' ')
            {
                if (i == '\n')
                {
                    ab();
                } else
                if (i == '\r')
                {
                    aa();
                } else
                if (i != '\t')
                {
                    b(i);
                }
            }
        } while (true);
    }

    private final void ai()
        throws IOException, ov
    {
        do
        {
            int i;
label0:
            {
                if (f < g || E())
                {
                    char ac1[] = J;
                    i = f;
                    f = i + 1;
                    i = ac1[i];
                    if (i >= ' ')
                    {
                        continue;
                    }
                    if (i != '\n')
                    {
                        break label0;
                    }
                    ab();
                }
                return;
            }
            if (i == '\r')
            {
                aa();
                return;
            }
            if (i != '\t')
            {
                b(i);
            }
        } while (true);
    }

    protected final boolean E()
        throws IOException
    {
        boolean flag1 = false;
        h = h + (long)g;
        j = j - g;
        boolean flag = flag1;
        if (I != null)
        {
            int i = I.read(J, 0, J.length);
            if (i > 0)
            {
                f = 0;
                g = i;
                flag = true;
            } else
            {
                F();
                flag = flag1;
                if (i == 0)
                {
                    throw new IOException((new StringBuilder()).append("Reader returned 0 characters when trying to read ").append(g).toString());
                }
            }
        }
        return flag;
    }

    protected void F()
        throws IOException
    {
        if (I != null)
        {
            if (d.b() || a(ox.a))
            {
                I.close();
            }
            I = null;
        }
    }

    protected void G()
        throws IOException
    {
        super.G();
        char ac1[] = J;
        if (ac1 != null)
        {
            J = null;
            d.a(ac1);
        }
    }

    protected final char Q()
        throws IOException, ov
    {
        int j = 0;
        if (f >= g && !E())
        {
            c(" in character escape sequence");
        }
        char ac1[] = J;
        int i = f;
        f = i + 1;
        char c1 = ac1[i];
        char c = c1;
        switch (c1)
        {
        default:
            c = a(c1);
            // fall through

        case 34: // '"'
        case 47: // '/'
        case 92: // '\\'
            return c;

        case 98: // 'b'
            return '\b';

        case 116: // 't'
            return '\t';

        case 110: // 'n'
            return '\n';

        case 102: // 'f'
            return '\f';

        case 114: // 'r'
            return '\r';

        case 117: // 'u'
            i = 0;
            break;
        }
        for (; i < 4; i++)
        {
            if (f >= g && !E())
            {
                c(" in character escape sequence");
            }
            char ac2[] = J;
            int i1 = f;
            f = i1 + 1;
            i1 = ac2[i1];
            int j1 = afr.a(i1);
            if (j1 < 0)
            {
                b(i1, "expected a hex-digit for character escape sequence");
            }
            j = j << 4 | j1;
        }

        return (char)j;
    }

    protected final String V()
        throws IOException, ov
    {
        int i;
        int j;
        int i1;
        boolean flag;
        int l1;
        i1 = f;
        i = 0;
        flag = false;
        l1 = g;
        j = i1;
        if (i1 >= l1) goto _L2; else goto _L1
_L1:
        int ai1[];
        int i2;
        ai1 = afr.a();
        i2 = ai1.length;
        j = i1;
        i = ((flag) ? 1 : 0);
_L4:
        int j1 = J[j];
        if (j1 == 39)
        {
            j1 = f;
            f = j + 1;
            return L.a(J, j1, j - j1, i);
        }
        if (j1 >= i2 || ai1[j1] == 0)
        {
            int k1 = i * 31 + j1;
            j1 = j + 1;
            i = k1;
            j = j1;
            if (j1 < l1)
            {
                continue; /* Loop/switch isn't completed */
            }
            i = k1;
            j = j1;
        }
_L2:
        j1 = f;
        f = j;
        return a(j1, i, 39);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final pb W()
        throws IOException, ov
    {
        char ac1[];
        int i;
        ac1 = p.k();
        i = p.l();
_L2:
        char c;
        char c1;
        if (f >= g && !E())
        {
            c(": was expecting closing quote for a string value");
        }
        char ac2[] = J;
        int j = f;
        f = j + 1;
        c1 = ac2[j];
        c = c1;
        if (c1 <= '\\')
        {
            if (c1 != '\\')
            {
                break; /* Loop/switch isn't completed */
            }
            c = Q();
        }
_L3:
        if (i >= ac1.length)
        {
            ac1 = p.m();
            i = 0;
        }
        int i1 = i + 1;
        ac1[i] = c;
        i = i1;
        if (true) goto _L2; else goto _L1
_L1:
        c = c1;
        if (c1 <= '\'')
        {
            if (c1 == '\'')
            {
                p.a(i);
                return pb.h;
            }
            c = c1;
            if (c1 < ' ')
            {
                c(c1, "string value");
                c = c1;
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected void X()
        throws IOException, ov
    {
        int i = f;
        int i1 = g;
        int j = i;
        if (i < i1)
        {
            int ai1[] = afr.a();
            int j1 = ai1.length;
            do
            {
                char c = J[i];
                if (c < j1 && ai1[c] != 0)
                {
                    j = i;
                    if (c == '"')
                    {
                        p.a(J, f, i - f);
                        f = i + 1;
                        return;
                    }
                    break;
                }
                j = i + 1;
                i = j;
            } while (j < i1);
        }
        p.b(J, f, j - f);
        f = j;
        Y();
    }

    protected void Y()
        throws IOException, ov
    {
        char ac1[];
        int i;
        ac1 = p.j();
        i = p.l();
_L2:
        char c;
        char c1;
        if (f >= g && !E())
        {
            c(": was expecting closing quote for a string value");
        }
        char ac2[] = J;
        int j = f;
        f = j + 1;
        c1 = ac2[j];
        c = c1;
        if (c1 <= '\\')
        {
            if (c1 != '\\')
            {
                break; /* Loop/switch isn't completed */
            }
            c = Q();
        }
_L3:
        if (i >= ac1.length)
        {
            ac1 = p.m();
            i = 0;
        }
        int i1 = i + 1;
        ac1[i] = c;
        i = i1;
        if (true) goto _L2; else goto _L1
_L1:
        c = c1;
        if (c1 <= '"')
        {
            if (c1 == '"')
            {
                p.a(i);
                return;
            }
            c = c1;
            if (c1 < ' ')
            {
                c(c1, "string value");
                c = c1;
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected void Z()
        throws IOException, ov
    {
        M = false;
        int i = f;
        int j = g;
        char ac1[] = J;
        do
        {
            int i1 = j;
            int j1 = i;
            if (i >= j)
            {
                f = i;
                if (!E())
                {
                    c(": was expecting closing quote for a string value");
                }
                j1 = f;
                i1 = g;
            }
            i = j1 + 1;
            j = ac1[j1];
            if (j <= '\\')
            {
                if (j == '\\')
                {
                    f = i;
                    Q();
                    i = f;
                    j = g;
                    continue;
                }
                if (j <= 34)
                {
                    if (j == 34)
                    {
                        f = i;
                        return;
                    }
                    if (j < 32)
                    {
                        f = i;
                        c(j, "string value");
                    }
                }
            }
            j = i1;
        } while (true);
    }

    protected pb a(int i, boolean flag)
        throws IOException, ov
    {
        double d1;
        int j;
        d1 = (-1.0D / 0.0D);
        j = i;
        if (i != 73) goto _L2; else goto _L1
_L1:
        if (f >= g && !E())
        {
            T();
        }
        char ac1[] = J;
        i = f;
        f = i + 1;
        i = ac1[i];
        if (i != 78) goto _L4; else goto _L3
_L3:
        String s;
        if (flag)
        {
            s = "-INF";
        } else
        {
            s = "+INF";
        }
        a(s, 3);
        if (a(ox.h))
        {
            if (!flag)
            {
                d1 = (1.0D / 0.0D);
            }
            return a(s, d1);
        }
        d((new StringBuilder()).append("Non-standard token '").append(s).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
        j = i;
_L2:
        a(j, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
_L4:
        j = i;
        if (i == 110)
        {
            String s1;
            if (flag)
            {
                s1 = "-Infinity";
            } else
            {
                s1 = "+Infinity";
            }
            a(s1, 3);
            if (a(ox.h))
            {
                if (!flag)
                {
                    d1 = (1.0D / 0.0D);
                }
                return a(s1, d1);
            }
            d((new StringBuilder()).append("Non-standard token '").append(s1).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
            j = i;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public pc a()
    {
        return K;
    }

    protected final String a(pb pb1)
    {
        if (pb1 == null)
        {
            return null;
        }
        switch (pn.a[pb1.ordinal()])
        {
        default:
            return pb1.a();

        case 1: // '\001'
            return n.h();

        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            return p.f();
        }
    }

    protected final void a(String s, int i)
        throws IOException, ov
    {
        int i1 = s.length();
        int j;
        do
        {
            if (f >= g && !E())
            {
                T();
            }
            if (J[f] != s.charAt(i))
            {
                a(s.substring(0, i), "'null', 'true', 'false' or NaN");
            }
            f = f + 1;
            j = i + 1;
            i = j;
        } while (j < i1);
        char c;
        if (f < g || E())
        {
            if ((c = J[f]) >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c))
            {
                f = f + 1;
                a(s.substring(0, j), "'null', 'true', 'false' or NaN");
                return;
            }
        }
    }

    protected void a(String s, String s1)
        throws IOException, ov
    {
        s = new StringBuilder(s);
_L5:
        if (f < g || E()) goto _L2; else goto _L1
_L1:
        char c;
        d((new StringBuilder()).append("Unrecognized token '").append(s.toString()).append("': was expecting ").toString());
        return;
_L2:
        if (!Character.isJavaIdentifierPart(c = J[f])) goto _L1; else goto _L3
_L3:
        f = f + 1;
        s.append(c);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public byte[] a(on on1)
        throws IOException, ov
    {
        if (b != pb.h && (b != pb.g || t == null))
        {
            d((new StringBuilder()).append("Current token (").append(b).append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary").toString());
        }
        if (!M) goto _L2; else goto _L1
_L1:
        try
        {
            t = b(on1);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw a((new StringBuilder()).append("Failed to decode VALUE_STRING as base64 (").append(on1).append("): ").append(illegalargumentexception.getMessage()).toString());
        }
        M = false;
_L4:
        return t;
_L2:
        if (t == null)
        {
            afq afq1 = I();
            a(k(), afq1, on1);
            t = afq1.b();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void aa()
        throws IOException
    {
        if ((f < g || E()) && J[f] == '\n')
        {
            f = f + 1;
        }
        i = i + 1;
        j = f;
    }

    protected final void ab()
        throws IOException
    {
        i = i + 1;
        j = f;
    }

    public pb b()
        throws IOException, ov
    {
        int j;
        boolean flag;
        y = 0;
        if (b == pb.f)
        {
            return ac();
        }
        if (M)
        {
            Z();
        }
        j = af();
        if (j < 0)
        {
            close();
            b = null;
            return null;
        }
        k = (h + (long)f) - 1L;
        l = this.i;
        m = f - this.j - 1;
        t = null;
        if (j == 93)
        {
            if (!n.a())
            {
                a(j, '}');
            }
            n = n.i();
            pb pb1 = pb.e;
            b = pb1;
            return pb1;
        }
        if (j == 125)
        {
            if (!n.c())
            {
                a(j, ']');
            }
            n = n.i();
            pb pb2 = pb.c;
            b = pb2;
            return pb2;
        }
        int i = j;
        if (n.j())
        {
            if (j != 44)
            {
                b(j, (new StringBuilder()).append("was expecting comma to separate ").append(n.d()).append(" entries").toString());
            }
            i = ae();
        }
        flag = n.c();
        j = i;
        if (flag)
        {
            String s = e(i);
            n.a(s);
            b = pb.f;
            i = ae();
            if (i != 58)
            {
                b(i, "was expecting a colon to separate field name and value");
            }
            j = ae();
        }
        j;
        JVM INSTR lookupswitch 19: default 468
    //                   34: 489
    //                   45: 616
    //                   48: 616
    //                   49: 616
    //                   50: 616
    //                   51: 616
    //                   52: 616
    //                   53: 616
    //                   54: 616
    //                   55: 616
    //                   56: 616
    //                   57: 616
    //                   91: 501
    //                   93: 563
    //                   102: 586
    //                   110: 601
    //                   116: 571
    //                   123: 532
    //                   125: 563;
           goto _L1 _L2 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L5
_L3:
        break MISSING_BLOCK_LABEL_616;
_L1:
        pb pb3 = g(j);
_L10:
        if (flag)
        {
            o = pb3;
            return b;
        } else
        {
            b = pb3;
            return pb3;
        }
_L2:
        M = true;
        pb3 = pb.h;
          goto _L10
_L4:
        if (!flag)
        {
            n = n.b(l, m);
        }
        pb3 = pb.d;
          goto _L10
_L9:
        if (!flag)
        {
            n = n.c(l, m);
        }
        pb3 = pb.b;
          goto _L10
_L5:
        b(j, "expected a value");
_L8:
        a("true", 1);
        pb3 = pb.k;
          goto _L10
_L6:
        a("false", 1);
        pb3 = pb.l;
          goto _L10
_L7:
        a("null", 1);
        pb3 = pb.m;
          goto _L10
        pb3 = d(j);
          goto _L10
    }

    protected byte[] b(on on1)
        throws IOException, ov
    {
        afq afq1 = I();
        do
        {
            char c;
            do
            {
                if (f >= g)
                {
                    D();
                }
                char ac1[] = J;
                int i = f;
                f = i + 1;
                c = ac1[i];
            } while (c <= ' ');
            int j1 = on1.b(c);
            int j = j1;
            if (j1 < 0)
            {
                if (c == '"')
                {
                    return afq1.b();
                }
                j = a(on1, c, 0);
                if (j < 0)
                {
                    continue;
                }
            }
            if (f >= g)
            {
                D();
            }
            char ac2[] = J;
            j1 = f;
            f = j1 + 1;
            c = ac2[j1];
            int k1 = on1.b(c);
            j1 = k1;
            if (k1 < 0)
            {
                j1 = a(on1, c, 1);
            }
            int l1 = j1 | j << 6;
            if (f >= g)
            {
                D();
            }
            ac2 = J;
            j = f;
            f = j + 1;
            c = ac2[j];
            j1 = on1.b(c);
            k1 = j1;
            if (j1 < 0)
            {
                j = j1;
                if (j1 != -2)
                {
                    if (c == '"' && !on1.a())
                    {
                        afq1.a(l1 >> 4);
                        return afq1.b();
                    }
                    j = a(on1, c, 2);
                }
                k1 = j;
                if (j == -2)
                {
                    if (f >= g)
                    {
                        D();
                    }
                    ac2 = J;
                    j = f;
                    f = j + 1;
                    c = ac2[j];
                    if (!on1.a(c))
                    {
                        throw a(on1, c, 3, (new StringBuilder()).append("expected padding character '").append(on1.b()).append("'").toString());
                    }
                    afq1.a(l1 >> 4);
                    continue;
                }
            }
            l1 = l1 << 6 | k1;
            if (f >= g)
            {
                D();
            }
            ac2 = J;
            j = f;
            f = j + 1;
            c = ac2[j];
            j1 = on1.b(c);
            k1 = j1;
            if (j1 < 0)
            {
                int i1 = j1;
                if (j1 != -2)
                {
                    if (c == '"' && !on1.a())
                    {
                        afq1.b(l1 >> 2);
                        return afq1.b();
                    }
                    i1 = a(on1, c, 3);
                }
                k1 = i1;
                if (i1 == -2)
                {
                    afq1.b(l1 >> 2);
                    continue;
                }
            }
            afq1.c(k1 | l1 << 6);
        } while (true);
    }

    public void close()
        throws IOException
    {
        super.close();
        L.b();
    }

    protected final pb d(int i)
        throws IOException, ov
    {
        int j;
        int j1;
        int l1;
        int j2;
        boolean flag;
        int k2;
        boolean flag1;
        j1 = 1;
        l1 = 0;
        flag = false;
        if (i == 45)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        j = f;
        j2 = j - 1;
        k2 = g;
        if (!flag1) goto _L2; else goto _L1
_L1:
        if (j < g) goto _L4; else goto _L3
_L3:
        int k1;
        char ac1[];
        int i1;
        int i2;
        if (flag1)
        {
            i = j2 + 1;
        } else
        {
            i = j2;
        }
        f = i;
        return a(flag1);
_L4:
        ac1 = J;
        i1 = j + 1;
        k1 = ac1[j];
        if (k1 <= '9')
        {
            i = i1;
            j = k1;
            if (k1 >= '0')
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        f = i1;
        return a(k1, true);
_L2:
        i1 = j;
        j = i;
        i = i1;
        if (j == 48) goto _L3; else goto _L5
_L5:
        j = i;
_L22:
        if (j >= g) goto _L3; else goto _L6
_L6:
        ac1 = J;
        i = j + 1;
        i1 = ac1[j];
        if (i1 >= 48 && i1 <= 57) goto _L8; else goto _L7
_L7:
        if (i1 != 46)
        {
            break MISSING_BLOCK_LABEL_456;
        }
        j = 0;
        i1 = i;
        i = j;
_L23:
        if (i1 >= k2) goto _L3; else goto _L9
_L9:
        ac1 = J;
        j = i1 + 1;
        i1 = ac1[i1];
        if (i1 >= 48 && i1 <= 57) goto _L11; else goto _L10
_L10:
        if (i == 0)
        {
            a(i1, "Decimal point not followed by a digit");
        }
        k1 = i;
        i = j;
_L24:
        if (i1 == 101)
        {
            continue; /* Loop/switch isn't completed */
        }
        i2 = i;
        if (i1 != 69) goto _L13; else goto _L12
_L12:
        if (i >= k2) goto _L3; else goto _L14
_L14:
        ac1 = J;
        j = i + 1;
        i1 = ac1[i];
        if (i1 != '-' && i1 != '+') goto _L16; else goto _L15
_L15:
        if (j >= k2) goto _L3; else goto _L17
_L17:
        ac1 = J;
        i = j + 1;
        i1 = ac1[j];
        j = ((flag) ? 1 : 0);
_L21:
        if (i1 > '9' || i1 < '0') goto _L19; else goto _L18
_L18:
        j++;
        if (i >= k2) goto _L3; else goto _L20
_L20:
        i1 = J[i];
        i++;
          goto _L21
_L8:
        j1++;
        j = i;
          goto _L22
_L11:
        i++;
        i1 = j;
          goto _L23
_L19:
        l1 = j;
        i2 = i;
        if (j == 0)
        {
            a(i1, "Exponent indicator not followed by a digit");
            i2 = i;
            l1 = j;
        }
_L13:
        i = i2 - 1;
        f = i;
        p.a(J, j2, i - j2);
        return a(flag1, j1, k1, l1);
_L16:
        i = j;
        j = ((flag) ? 1 : 0);
          goto _L21
        k1 = 0;
          goto _L24
    }

    protected char e(String s)
        throws IOException, ov
    {
        if (f >= g && !E())
        {
            c(s);
        }
        s = J;
        int i = f;
        f = i + 1;
        return s[i];
    }

    protected final String e(int i)
        throws IOException, ov
    {
        if (i != 34)
        {
            return f(i);
        }
        i = f;
        int j1 = 0;
        int j = 0;
        int k1 = g;
        int i1 = i;
        if (i < k1)
        {
            int ai1[] = afr.a();
            int l1 = ai1.length;
            do
            {
                char c = J[i];
                if (c < l1 && ai1[c] != 0)
                {
                    j1 = j;
                    i1 = i;
                    if (c == '"')
                    {
                        i1 = f;
                        f = i + 1;
                        return L.a(J, i1, i - i1, j);
                    }
                    break;
                }
                j1 = j * 31 + c;
                i1 = i + 1;
                j = j1;
                i = i1;
            } while (i1 < k1);
        }
        i = f;
        f = i1;
        return a(i, j1, 34);
    }

    protected final String f(int i)
        throws IOException, ov
    {
        int i1 = 0;
        int j1 = 0;
        if (i == 39 && a(ox.d))
        {
            return V();
        }
        if (!a(ox.c))
        {
            b(i, "was expecting double-quote to start field name");
        }
        int ai1[] = afr.b();
        int k1 = ai1.length;
        int j;
        int l1;
        boolean flag;
        if (i < k1)
        {
            if (ai1[i] == 0 && (i < 48 || i > 57))
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = Character.isJavaIdentifierPart((char)i);
        }
        if (!flag)
        {
            b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        j = f;
        l1 = g;
        i = j;
        if (j < l1)
        {
            i = j1;
            do
            {
                i1 = J[j];
                if (i1 < k1)
                {
                    if (ai1[i1] != 0)
                    {
                        i1 = f - 1;
                        f = j;
                        return L.a(J, i1, j - i1, i);
                    }
                } else
                if (!Character.isJavaIdentifierPart((char)i1))
                {
                    i1 = f - 1;
                    f = j;
                    return L.a(J, i1, j - i1, i);
                }
                i1 = i * 31 + i1;
                j1 = j + 1;
                j = j1;
                i = i1;
            } while (j1 < l1);
            i = j1;
        }
        j = f;
        f = i;
        return a(j - 1, i1, ai1);
    }

    protected final pb g(int i)
        throws IOException, ov
    {
        i;
        JVM INSTR lookupswitch 3: default 36
    //                   39: 46
    //                   43: 100
    //                   78: 61;
           goto _L1 _L2 _L3 _L4
_L1:
        b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
_L2:
        if (a(ox.d))
        {
            return W();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        a("NaN", 1);
        if (a(ox.h))
        {
            return a("NaN", (0.0D / 0.0D));
        }
        d("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        if (true) goto _L1; else goto _L3
_L3:
        if (f >= g && !E())
        {
            T();
        }
        char ac1[] = J;
        i = f;
        f = i + 1;
        return a(ac1[i], false);
    }

    public final String k()
        throws IOException, ov
    {
        pb pb1 = b;
        if (pb1 == pb.h)
        {
            if (M)
            {
                M = false;
                X();
            }
            return p.f();
        } else
        {
            return a(pb1);
        }
    }

    public char[] l()
        throws IOException, ov
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        pn.a[b.ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 56
    //                   2 135
    //                   3 151
    //                   4 151;
           goto _L1 _L2 _L3 _L4 _L4
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        return b.b();
_L2:
        if (r) goto _L6; else goto _L5
_L5:
        String s;
        int i;
        s = n.h();
        i = s.length();
        if (q != null) goto _L8; else goto _L7
_L7:
        q = d.a(i);
_L10:
        s.getChars(0, i, q, 0);
        r = true;
_L6:
        return q;
_L8:
        if (q.length < i)
        {
            q = new char[i];
        }
        if (true) goto _L10; else goto _L9
_L9:
        break; /* Loop/switch isn't completed */
_L3:
        if (M)
        {
            M = false;
            X();
        }
        return p.e();
        return null;
    }

    public int m()
        throws IOException, ov
    {
label0:
        {
label1:
            {
label2:
                {
                    int i = 0;
                    if (b != null)
                    {
                        switch (pn.a[b.ordinal()])
                        {
                        default:
                            i = b.b().length;
                            break;

                        case 1: // '\001'
                            break label2;

                        case 2: // '\002'
                            break label1;

                        case 3: // '\003'
                        case 4: // '\004'
                            break label0;
                        }
                    }
                    return i;
                }
                return n.h().length();
            }
            if (M)
            {
                M = false;
                X();
            }
        }
        return p.c();
    }

    public int n()
        throws IOException, ov
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        pn.a[b.ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 48
    //                   2 50
    //                   3 66
    //                   4 66;
           goto _L2 _L2 _L3 _L4 _L4
_L2:
        return 0;
_L3:
        if (M)
        {
            M = false;
            X();
        }
_L4:
        return p.d();
    }
}
