// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rf, py, yc, rl, 
//            xk, xl, xh, xj, 
//            ye, xi, ady, afm

public class yb
{

    protected final rf a;
    protected final boolean b;
    protected final afm c;
    protected final xh d;
    protected final ye e;
    protected final py f;
    protected final LinkedHashMap g = new LinkedHashMap();
    protected LinkedList h;
    protected LinkedList i;
    protected LinkedList j;
    protected LinkedList k;
    protected Set l;
    protected Set m;
    protected LinkedHashMap n;

    protected yb(rf rf1, boolean flag, afm afm, xh xh1)
    {
        Object obj = null;
        super();
        h = null;
        i = null;
        j = null;
        k = null;
        a = rf1;
        b = flag;
        c = afm;
        d = xh1;
        afm = obj;
        if (rf1.b())
        {
            afm = a.a();
        }
        f = afm;
        if (f == null)
        {
            e = a.e();
            return;
        } else
        {
            e = f.a(xh1, a.e());
            return;
        }
    }

    private Set a(Set set, String s)
    {
        Object obj = set;
        if (set == null)
        {
            obj = new HashSet();
        }
        ((Set) (obj)).add(s);
        return ((Set) (obj));
    }

    private void a(yc yc1)
    {
        if (!b)
        {
            String s = yc1.a();
            l = a(l, s);
            if (yc1.t())
            {
                m = a(m, s);
                return;
            }
        }
    }

    public rf a()
    {
        return a;
    }

    protected void a(rl rl1)
    {
        yc ayc[] = (yc[])g.values().toArray(new yc[g.size()]);
        g.clear();
        int j1 = ayc.length;
        int i1 = 0;
        while (i1 < j1) 
        {
            yc yc2 = ayc[i1];
            String s = yc2.a();
            yc yc1;
            if (b)
            {
                if (yc2.b())
                {
                    s = rl1.a(a, yc2.g(), s);
                } else
                if (yc2.d())
                {
                    s = rl1.a(a, yc2.i(), s);
                }
            } else
            if (yc2.c())
            {
                s = rl1.b(a, yc2.h(), s);
            } else
            if (yc2.e())
            {
                s = rl1.a(a, yc2.m(), s);
            } else
            if (yc2.d())
            {
                s = rl1.a(a, yc2.i(), s);
            } else
            if (yc2.b())
            {
                s = rl1.a(a, yc2.g(), s);
            }
            yc1 = yc2;
            if (!s.equals(yc2.a()))
            {
                yc1 = yc2.a(s);
            }
            yc2 = (yc)g.get(s);
            if (yc2 == null)
            {
                g.put(s, yc1);
            } else
            {
                yc2.b(yc1);
            }
            i1++;
        }
    }

    protected void a(Object obj, xk xk1)
    {
        if (obj != null)
        {
            if (n == null)
            {
                n = new LinkedHashMap();
            }
            if ((xk)n.put(obj, xk1) != null)
            {
                if (obj == null)
                {
                    xk1 = "[null]";
                } else
                {
                    xk1 = obj.getClass().getName();
                }
                throw new IllegalArgumentException((new StringBuilder()).append("Duplicate injectable value with id '").append(String.valueOf(obj)).append("' (of type ").append(xk1).append(")").toString());
            }
        }
    }

    protected void a(String s)
    {
        throw new IllegalArgumentException((new StringBuilder()).append("Problem with definition of ").append(d).append(": ").append(s).toString());
    }

    public afm b()
    {
        return c;
    }

    protected yc b(String s)
    {
        yc yc2 = (yc)g.get(s);
        yc yc1 = yc2;
        if (yc2 == null)
        {
            yc1 = new yc(s);
            g.put(s, yc1);
        }
        return yc1;
    }

    public xh c()
    {
        return d;
    }

    public List d()
    {
        return new ArrayList(g.values());
    }

    public Map e()
    {
        return n;
    }

    public xl f()
    {
        if (k != null)
        {
            if (k.size() > 1)
            {
                a((new StringBuilder()).append("Multiple value properties defined (").append(k.get(0)).append(" vs ").append(k.get(1)).append(")").toString());
            }
            return (xl)k.get(0);
        } else
        {
            return null;
        }
    }

    public xl g()
    {
        if (i != null)
        {
            if (i.size() > 1)
            {
                a((new StringBuilder()).append("Multiple 'any-getters' defined (").append(i.get(0)).append(" vs ").append(i.get(1)).append(")").toString());
            }
            return (xl)i.getFirst();
        } else
        {
            return null;
        }
    }

    public xl h()
    {
        if (j != null)
        {
            if (j.size() > 1)
            {
                a((new StringBuilder()).append("Multiple 'any-setters' defined (").append(j.get(0)).append(" vs ").append(j.get(1)).append(")").toString());
            }
            return (xl)j.getFirst();
        } else
        {
            return null;
        }
    }

    public Set i()
    {
        return l;
    }

    public Set j()
    {
        return m;
    }

    public yb k()
    {
        g.clear();
        m();
        o();
        n();
        p();
        q();
        r();
        rl rl1 = a.j();
        if (rl1 != null)
        {
            a(rl1);
        }
        for (Iterator iterator = g.values().iterator(); iterator.hasNext(); ((yc)iterator.next()).p()) { }
        for (Iterator iterator1 = g.values().iterator(); iterator1.hasNext(); ((yc)iterator1.next()).a(b)) { }
        l();
        return this;
    }

    protected void l()
    {
        Object obj;
        String as[];
        LinkedHashMap linkedhashmap;
        obj = a.a();
        Object obj1 = ((py) (obj)).i(d);
        boolean flag;
        if (obj1 == null)
        {
            flag = a.d();
        } else
        {
            flag = ((Boolean) (obj1)).booleanValue();
        }
        as = ((py) (obj)).h(d);
        if (!flag && h == null && as == null)
        {
            return;
        }
        int i1 = g.size();
        yc yc2;
        if (flag)
        {
            obj = new TreeMap();
        } else
        {
            obj = new LinkedHashMap(i1 + i1);
        }
        for (obj1 = g.values().iterator(); ((Iterator) (obj1)).hasNext(); ((Map) (obj)).put(yc2.a(), yc2))
        {
            yc2 = (yc)((Iterator) (obj1)).next();
        }

        linkedhashmap = new LinkedHashMap(i1 + i1);
        if (as == null) goto _L2; else goto _L1
_L1:
        int j1;
        int k1;
        k1 = as.length;
        j1 = 0;
_L4:
        if (j1 >= k1) goto _L2; else goto _L3
_L3:
        yc yc1;
        Object obj2;
        String s;
        s = as[j1];
        yc1 = (yc)((Map) (obj)).get(s);
        if (yc1 != null)
        {
            break MISSING_BLOCK_LABEL_365;
        }
        Iterator iterator1 = g.values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_365;
            }
            obj2 = (yc)iterator1.next();
        } while (!s.equals(((yc) (obj2)).l()));
        s = ((yc) (obj2)).a();
        yc1 = ((yc) (obj2));
        obj2 = s;
_L5:
        if (yc1 != null)
        {
            linkedhashmap.put(obj2, yc1);
        }
        j1++;
          goto _L4
_L2:
        if (h != null)
        {
            for (Iterator iterator = h.iterator(); iterator.hasNext(); linkedhashmap.put(((yc) (obj2)).a(), obj2))
            {
                obj2 = (yc)iterator.next();
            }

        }
        linkedhashmap.putAll(((Map) (obj)));
        g.clear();
        g.putAll(linkedhashmap);
        return;
        obj2 = s;
          goto _L5
    }

    protected void m()
    {
        py py1 = f;
        Iterator iterator = d.l().iterator();
        while (iterator.hasNext()) 
        {
            xj xj1 = (xj)iterator.next();
            String s1 = xj1.b();
            String s;
            boolean flag;
            boolean flag1;
            if (py1 == null)
            {
                s = null;
            } else
            if (b)
            {
                s = py1.b(xj1);
            } else
            {
                s = py1.c(xj1);
            }
            if ("".equals(s))
            {
                s = s1;
            }
            if (s != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                flag = e.a(xj1);
            }
            if (py1 != null && py1.c(xj1))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            b(s1).a(xj1, s, flag, flag1);
        }
    }

    protected void n()
    {
        py py1 = f;
        if (py1 != null)
        {
            for (Iterator iterator = d.i().iterator(); iterator.hasNext();)
            {
                xi xi1 = (xi)iterator.next();
                if (h == null)
                {
                    h = new LinkedList();
                }
                int k1 = xi1.f();
                int i1 = 0;
                while (i1 < k1) 
                {
                    xn xn = xi1.c(i1);
                    String s = py1.a(xn);
                    if (s != null)
                    {
                        yc yc1 = b(s);
                        yc1.a(xn, s, true, false);
                        h.add(yc1);
                    }
                    i1++;
                }
            }

            Iterator iterator1 = d.j().iterator();
            while (iterator1.hasNext()) 
            {
                xl xl1 = (xl)iterator1.next();
                if (h == null)
                {
                    h = new LinkedList();
                }
                int l1 = xl1.f();
                int j1 = 0;
                while (j1 < l1) 
                {
                    xn xn1 = xl1.c(j1);
                    String s1 = py1.a(xn1);
                    if (s1 != null)
                    {
                        yc yc2 = b(s1);
                        yc2.a(xn1, s1, true, false);
                        h.add(yc2);
                    }
                    j1++;
                }
            }
        }
    }

    protected void o()
    {
        py py1 = f;
        Iterator iterator = d.k().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xl xl1 = (xl)iterator.next();
            int i1 = xl1.f();
            if (i1 == 0)
            {
                if (py1 != null)
                {
                    if (py1.f(xl1))
                    {
                        if (i == null)
                        {
                            i = new LinkedList();
                        }
                        i.add(xl1);
                        continue;
                    }
                    if (py1.c(xl1))
                    {
                        if (k == null)
                        {
                            k = new LinkedList();
                        }
                        k.add(xl1);
                        continue;
                    }
                }
                String s;
                String s2;
                boolean flag;
                boolean flag2;
                if (py1 == null)
                {
                    s = null;
                } else
                {
                    s = py1.b(xl1);
                }
                if (s == null)
                {
                    String s4 = ady.a(xl1, xl1.b());
                    if (s4 == null)
                    {
                        s4 = ady.b(xl1, xl1.b());
                        if (s4 == null)
                        {
                            continue;
                        }
                        flag = e.b(xl1);
                        s2 = s;
                        s = s4;
                    } else
                    {
                        flag = e.a(xl1);
                        s2 = s;
                        s = s4;
                    }
                } else
                {
                    String s5 = ady.a(xl1);
                    s2 = s5;
                    if (s5 == null)
                    {
                        s2 = xl1.b();
                    }
                    s5 = s;
                    if (s.length() == 0)
                    {
                        s5 = s2;
                    }
                    s = s2;
                    s2 = s5;
                    flag = true;
                }
                if (py1 == null)
                {
                    flag2 = false;
                } else
                {
                    flag2 = py1.c(xl1);
                }
                b(s).a(xl1, s2, flag, flag2);
                continue;
            }
            if (i1 == 1)
            {
                String s1;
                String s3;
                boolean flag1;
                boolean flag3;
                if (py1 == null)
                {
                    s1 = null;
                } else
                {
                    s1 = py1.d(xl1);
                }
                if (s1 == null)
                {
                    String s6 = ady.b(xl1);
                    if (s6 == null)
                    {
                        continue;
                    }
                    flag1 = e.c(xl1);
                    s3 = s1;
                    s1 = s6;
                } else
                {
                    String s7 = ady.b(xl1);
                    s3 = s7;
                    if (s7 == null)
                    {
                        s3 = xl1.b();
                    }
                    s7 = s1;
                    if (s1.length() == 0)
                    {
                        s7 = s3;
                    }
                    s1 = s3;
                    s3 = s7;
                    flag1 = true;
                }
                if (py1 == null)
                {
                    flag3 = false;
                } else
                {
                    flag3 = py1.c(xl1);
                }
                b(s1).b(xl1, s3, flag1, flag3);
            } else
            if (i1 == 2 && py1 != null && py1.e(xl1))
            {
                if (j == null)
                {
                    j = new LinkedList();
                }
                j.add(xl1);
            }
        } while (true);
    }

    protected void p()
    {
        py py1 = f;
        if (py1 != null)
        {
            xj xj1;
            for (Iterator iterator = d.l().iterator(); iterator.hasNext(); a(py1.d(xj1), xj1))
            {
                xj1 = (xj)iterator.next();
            }

            Iterator iterator1 = d.k().iterator();
            while (iterator1.hasNext()) 
            {
                xl xl1 = (xl)iterator1.next();
                if (xl1.f() == 1)
                {
                    a(py1.d(xl1), xl1);
                }
            }
        }
    }

    protected void q()
    {
        Iterator iterator = g.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            yc yc1 = (yc)((java.util.Map.Entry)iterator.next()).getValue();
            if (!yc1.r())
            {
                iterator.remove();
                continue;
            }
            if (yc1.s())
            {
                a(yc1);
                if (!yc1.q())
                {
                    iterator.remove();
                    continue;
                }
                yc1.n();
            }
            yc1.o();
        } while (true);
    }

    protected void r()
    {
        Iterator iterator = g.entrySet().iterator();
        Object obj = null;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            yc yc2 = (yc)((java.util.Map.Entry)iterator.next()).getValue();
            String s1 = yc2.u();
            if (s1 != null)
            {
                LinkedList linkedlist = ((LinkedList) (obj));
                if (obj == null)
                {
                    linkedlist = new LinkedList();
                }
                linkedlist.add(yc2.a(s1));
                iterator.remove();
                obj = linkedlist;
            }
        } while (true);
        if (obj != null)
        {
            for (obj = ((LinkedList) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
            {
                yc yc1 = (yc)((Iterator) (obj)).next();
                String s = yc1.a();
                yc yc3 = (yc)g.get(s);
                if (yc3 == null)
                {
                    g.put(s, yc1);
                } else
                {
                    yc3.b(yc1);
                }
            }

        }
    }
}
