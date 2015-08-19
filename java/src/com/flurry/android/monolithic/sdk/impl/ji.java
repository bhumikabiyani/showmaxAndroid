// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            op, rk, ox, jj, 
//            jk, kj, jl, kf, 
//            jn, kb, jm, ka, 
//            js, jg, ki, jp, 
//            jw, jy, jv, jq, 
//            jo, kd, ou, kc, 
//            kl, kg, jt, aex, 
//            jx, jr, jz, ju, 
//            kk, ke, or

public abstract class ji
{

    static final op a;
    static final rk b;
    static final Map e;
    private static final Set g;
    private static final Set h;
    private static final ThreadLocal i = new jj();
    private static final ThreadLocal j = new jk();
    private static ThreadLocal k = new jl();
    kf c;
    int d;
    private final kj f;

    ji(kj kj1)
    {
        c = new kf(g);
        d = 0x80000000;
        f = kj1;
    }

    public static ji a(ji ji1)
    {
        return new jn(ji1);
    }

    public static ji a(ji ji1, ji ji2)
    {
        if (ji1 != ji2)
        {
            IdentityHashMap identityhashmap = new IdentityHashMap(1);
            HashMap hashmap = new HashMap(1);
            HashMap hashmap1 = new HashMap(1);
            b(ji2, identityhashmap, hashmap, hashmap1);
            if (hashmap.size() != 0 || hashmap1.size() != 0)
            {
                identityhashmap.clear();
                return a(ji1, ((Map) (identityhashmap)), ((Map) (hashmap)), ((Map) (hashmap1)));
            }
        }
        return ji1;
    }

    private static ji a(ji ji1, Map map, Map map1, Map map2)
    {
        Object obj;
        if (ji1 instanceof kb)
        {
            obj = ((kb)ji1).f;
        } else
        {
            obj = null;
        }
        jm.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 9 14: default 64
    //                   9 90
    //                   10 295
    //                   11 336
    //                   12 363
    //                   13 390
    //                   14 456;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        map = ji1;
_L8:
        if (map != ji1)
        {
            ((ji) (map)).c.putAll(ji1.c);
        }
        return map;
_L2:
        if (map.containsKey(ji1))
        {
            return (ji)map.get(ji1);
        }
        if (map1.containsKey(obj))
        {
            obj = (ka)map1.get(obj);
        }
        ji ji2 = a(ka.a(((ka) (obj))), ji1.e(), ((String) (null)), ji1.h());
        map.put(ji1, ji2);
        ArrayList arraylist = new ArrayList();
        Object obj1;
        for (Iterator iterator1 = ji1.b().iterator(); iterator1.hasNext(); arraylist.add(obj1))
        {
            js js1 = (js)iterator1.next();
            obj1 = a(js.d(js1), map, map1, map2);
            obj1 = new js(a(((ka) (obj)), js.e(js1), map2), ((ji) (obj1)), js.f(js1), js.g(js1), js.h(js1));
            js.c(((js) (obj1))).putAll(js.c(js1));
        }

        ji2.b(arraylist);
        map = ji2;
          goto _L8
_L3:
        if (!map1.containsKey(obj)) goto _L1; else goto _L9
_L9:
        map = a(ka.a((ka)map1.get(obj)), ji1.e(), ((String) (null)), ji1.c());
          goto _L8
_L4:
        map = a(ji1.i(), map, map1, map2);
        if (map == ji1.i()) goto _L1; else goto _L10
_L10:
        map = a(((ji) (map)));
          goto _L8
_L5:
        map = a(ji1.j(), map, map1, map2);
        if (map == ji1.j()) goto _L1; else goto _L11
_L11:
        map = b(map);
          goto _L8
_L6:
        obj = new ArrayList();
        for (Iterator iterator = ji1.k().iterator(); iterator.hasNext(); ((List) (obj)).add(a((ji)iterator.next(), map, map1, map2))) { }
        map = a(((List) (obj)));
          goto _L8
_L7:
        if (!map1.containsKey(obj)) goto _L1; else goto _L12
_L12:
        map = a(ka.a((ka)map1.get(obj)), ji1.e(), ((String) (null)), ji1.l());
          goto _L8
    }

    public static ji a(kj kj1)
    {
        switch (jm.a[kj1.ordinal()])
        {
        default:
            throw new jg((new StringBuilder()).append("Can't create a: ").append(kj1).toString());

        case 1: // '\001'
            return new ki();

        case 2: // '\002'
            return new jp();

        case 3: // '\003'
            return new jw();

        case 4: // '\004'
            return new jy();

        case 5: // '\005'
            return new jv();

        case 6: // '\006'
            return new jq();

        case 7: // '\007'
            return new jo();

        case 8: // '\b'
            return new kd();
        }
    }

    static ji a(ou ou1, kc kc1)
    {
        Object obj2 = null;
        if (ou1.e())
        {
            ji ji1 = kc1.a(ou1.h());
            kc1 = ji1;
            if (ji1 == null)
            {
                throw new kl((new StringBuilder()).append("Undefined name: ").append(ou1).toString());
            }
            break MISSING_BLOCK_LABEL_1313;
        }
        if (!ou1.b())
        {
            break MISSING_BLOCK_LABEL_1250;
        }
        Object obj5 = a(ou1, "type", "No type");
        Object obj;
        Object obj1;
        if (((String) (obj5)).equals("record") || ((String) (obj5)).equals("error") || ((String) (obj5)).equals("enum") || ((String) (obj5)).equals("fixed"))
        {
            obj2 = a(ou1, "namespace");
            obj = a(ou1, "doc");
            obj1 = obj2;
            if (obj2 == null)
            {
                obj1 = kc1.a();
            }
            obj1 = new ka(a(ou1, "name", "No name in schema"), ((String) (obj1)));
            Object obj3;
            ArrayList arraylist;
            Iterator iterator;
            ou ou2;
            String s1;
            String s2;
            ji ji2;
            if (ka.c(((ka) (obj1))) != null)
            {
                String s = kc1.a();
                kc1.a(ka.c(((ka) (obj1))));
                obj2 = obj;
                obj = obj1;
                obj1 = s;
            } else
            {
                Object obj4 = null;
                obj2 = obj;
                obj = obj1;
                obj1 = obj4;
            }
        } else
        {
            obj1 = null;
            obj = null;
        }
        if (!e.containsKey(obj5)) goto _L2; else goto _L1
_L1:
        obj = a((kj)e.get(obj5));
_L4:
        obj2 = ou1.q();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            obj3 = (String)((Iterator) (obj2)).next();
            obj5 = ou1.a(((String) (obj3))).h();
            if (!g.contains(obj3) && obj5 != null)
            {
                ((ji) (obj)).a(((String) (obj3)), ((String) (obj5)));
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L2:
label0:
        {
            if (!((String) (obj5)).equals("record") && !((String) (obj5)).equals("error"))
            {
                break label0;
            }
            arraylist = new ArrayList();
            obj3 = new kg(((ka) (obj)), ((String) (obj2)), ((String) (obj5)).equals("error"));
            if (obj != null)
            {
                kc1.a(((ji) (obj3)));
            }
            obj = ou1.a("fields");
            if (obj == null || !((ou) (obj)).a())
            {
                throw new kl((new StringBuilder()).append("Record has no fields: ").append(ou1).toString());
            }
            for (iterator = ((ou) (obj)).iterator(); iterator.hasNext(); arraylist.add(obj))
            {
label1:
                {
                    ou2 = (ou)iterator.next();
                    s1 = a(ou2, "name", "No field name");
                    s2 = a(ou2, "doc");
                    obj = ou2.a("type");
                    if (obj == null)
                    {
                        throw new kl((new StringBuilder()).append("No field type: ").append(ou2).toString());
                    }
                    if (((ou) (obj)).e() && kc1.a(((ou) (obj)).h()) == null)
                    {
                        throw new kl((new StringBuilder()).append(obj).append(" is not a defined name.").append(" The type of the \"").append(s1).append("\" field must be").append(" a defined name or a {\"type\": ...} expression.").toString());
                    }
                    ji2 = a(((ou) (obj)), kc1);
                    obj = jt.a;
                    obj2 = ou2.a("order");
                    if (obj2 != null)
                    {
                        obj = jt.valueOf(((ou) (obj2)).h().toUpperCase());
                    }
                    obj5 = ou2.a("default");
                    obj2 = obj5;
                    if (obj5 == null)
                    {
                        break label1;
                    }
                    if (!kj.k.equals(ji2.a()))
                    {
                        obj2 = obj5;
                        if (!kj.l.equals(ji2.a()))
                        {
                            break label1;
                        }
                    }
                    obj2 = obj5;
                    if (((ou) (obj5)).e())
                    {
                        obj2 = new aex(Double.valueOf(((ou) (obj5)).h()).doubleValue());
                    }
                }
                obj = new js(s1, ji2, s2, ((ou) (obj2)), ((jt) (obj)));
                obj2 = ou2.q();
                do
                {
                    if (!((Iterator) (obj2)).hasNext())
                    {
                        break;
                    }
                    obj5 = (String)((Iterator) (obj2)).next();
                    s1 = ou2.a(((String) (obj5))).h();
                    if (!h.contains(obj5) && s1 != null)
                    {
                        ((js) (obj)).a(((String) (obj5)), s1);
                    }
                } while (true);
                js.a(((js) (obj)), a(ou2));
            }

            ((ji) (obj3)).b(arraylist);
            obj = obj3;
            continue; /* Loop/switch isn't completed */
        }
        if (((String) (obj5)).equals("enum"))
        {
            obj5 = ou1.a("symbols");
            if (obj5 == null || !((ou) (obj5)).a())
            {
                throw new kl((new StringBuilder()).append("Enum has no symbols: ").append(ou1).toString());
            }
            obj3 = new jx();
            for (obj5 = ((ou) (obj5)).iterator(); ((Iterator) (obj5)).hasNext(); ((jx) (obj3)).add(((ou)((Iterator) (obj5)).next()).h())) { }
            obj2 = new jr(((ka) (obj)), ((String) (obj2)), ((jx) (obj3)));
            if (obj != null)
            {
                kc1.a(((ji) (obj2)));
            }
            obj = obj2;
        } else
        if (((String) (obj5)).equals("array"))
        {
            obj = ou1.a("items");
            if (obj == null)
            {
                throw new kl((new StringBuilder()).append("Array has no items type: ").append(ou1).toString());
            }
            obj = new jn(a(((ou) (obj)), kc1));
        } else
        if (((String) (obj5)).equals("map"))
        {
            obj = ou1.a("values");
            if (obj == null)
            {
                throw new kl((new StringBuilder()).append("Map has no values type: ").append(ou1).toString());
            }
            obj = new jz(a(((ou) (obj)), kc1));
        } else
        if (((String) (obj5)).equals("fixed"))
        {
            obj3 = ou1.a("size");
            if (obj3 == null || !((ou) (obj3)).d())
            {
                throw new kl((new StringBuilder()).append("Invalid or no size: ").append(ou1).toString());
            }
            obj2 = new ju(((ka) (obj)), ((String) (obj2)), ((ou) (obj3)).j());
            if (obj != null)
            {
                kc1.a(((ji) (obj2)));
            }
            obj = obj2;
        } else
        {
            throw new kl((new StringBuilder()).append("Type not supported: ").append(((String) (obj5))).toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (obj1 != null)
        {
            kc1.a(((String) (obj1)));
        }
        kc1 = ((kc) (obj));
        if (obj instanceof kb)
        {
            ou1 = a(ou1);
            kc1 = ((kc) (obj));
            if (ou1 != null)
            {
                ou1 = ou1.iterator();
                do
                {
                    kc1 = ((kc) (obj));
                    if (!ou1.hasNext())
                    {
                        break;
                    }
                    ((ji) (obj)).d((String)ou1.next());
                } while (true);
            }
        }
        break MISSING_BLOCK_LABEL_1313;
        if (!ou1.a())
        {
            break MISSING_BLOCK_LABEL_1315;
        }
        obj = new jx(ou1.o());
        for (ou1 = ou1.iterator(); ou1.hasNext(); ((jx) (obj)).add(a((ou)ou1.next(), kc1))) { }
        kc1 = new kk(((jx) (obj)));
        return kc1;
        throw new kl((new StringBuilder()).append("Schema not yet supported: ").append(ou1).toString());
    }

    public static ji a(String s, String s1, String s2, int i1)
    {
        return new ju(new ka(s, s2), s1, i1);
    }

    public static ji a(String s, String s1, String s2, List list)
    {
        return new jr(new ka(s, s2), s1, new jx(list));
    }

    public static ji a(String s, String s1, String s2, boolean flag)
    {
        return new kg(new ka(s, s2), s1, flag);
    }

    public static ji a(List list)
    {
        return new kk(new jx(list));
    }

    private static String a(ka ka1, String s, Map map)
    {
        ka1 = (Map)map.get(ka1);
        if (ka1 != null)
        {
            if ((ka1 = (String)ka1.get(s)) != null)
            {
                return ka1;
            }
        }
        return s;
    }

    private static String a(ou ou1, String s)
    {
        ou1 = ou1.a(s);
        if (ou1 != null)
        {
            return ou1.h();
        } else
        {
            return null;
        }
    }

    private static String a(ou ou1, String s, String s1)
    {
        s = a(ou1, s);
        if (s == null)
        {
            throw new kl((new StringBuilder()).append(s1).append(": ").append(ou1).toString());
        } else
        {
            return s;
        }
    }

    private static Set a(ou ou1)
    {
        Object obj = ou1.a("aliases");
        if (obj == null)
        {
            return null;
        }
        if (!((ou) (obj)).a())
        {
            throw new kl((new StringBuilder()).append("aliases not an array: ").append(ou1).toString());
        }
        ou1 = new LinkedHashSet();
        ou ou2;
        for (obj = ((ou) (obj)).iterator(); ((Iterator) (obj)).hasNext(); ou1.add(ou2.h()))
        {
            ou2 = (ou)((Iterator) (obj)).next();
            if (!ou2.e())
            {
                throw new kl((new StringBuilder()).append("alias not a string: ").append(ou2).toString());
            }
        }

        return ou1;
    }

    public static ji b(ji ji1)
    {
        return new jz(ji1);
    }

    private static void b(ji ji1, Map map, Map map1, Map map2)
    {
        if (ji1 instanceof kb)
        {
            kb kb1 = (kb)ji1;
            if (kb1.h != null)
            {
                for (Iterator iterator = kb1.h.iterator(); iterator.hasNext(); map1.put((ka)iterator.next(), kb1.f)) { }
            }
        }
        jm.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 9 13: default 112
    //                   9 113
    //                   10 112
    //                   11 365
    //                   12 376
    //                   13 387;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        return;
_L2:
        if (!map.containsKey(ji1))
        {
            map.put(ji1, ji1);
            kg kg1 = (kg)ji1;
            js js1;
            for (Iterator iterator1 = ji1.b().iterator(); iterator1.hasNext(); b(js.d(js1), map, map1, map2))
            {
                js1 = (js)iterator1.next();
                if (js.b(js1) == null)
                {
                    continue;
                }
                String s;
                for (Iterator iterator2 = js.b(js1).iterator(); iterator2.hasNext(); ji1.put(s, js.e(js1)))
                {
                    s = (String)iterator2.next();
                    Map map3 = (Map)map2.get(kg1.f);
                    ji1 = map3;
                    if (map3 == null)
                    {
                        ka ka1 = kg1.f;
                        ji1 = new HashMap();
                        map2.put(ka1, ji1);
                    }
                }

            }

            if (kg1.h != null && map2.containsKey(kg1.f))
            {
                ji1 = kg1.h.iterator();
                while (ji1.hasNext()) 
                {
                    map2.put((ka)ji1.next(), map2.get(kg1.f));
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        b(ji1.i(), map, map1, map2);
        return;
_L4:
        b(ji1.j(), map, map1, map2);
        return;
_L5:
        ji1 = ji1.k().iterator();
        while (ji1.hasNext()) 
        {
            b((ji)ji1.next(), map, map1, map2);
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    static kj d(ji ji1)
    {
        return ji1.f;
    }

    public static ji f(String s)
    {
        return (new ke()).a(s);
    }

    static String g(String s)
    {
        return h(s);
    }

    private static String h(String s)
    {
        if (((Boolean)k.get()).booleanValue())
        {
            int j1 = s.length();
            if (j1 == 0)
            {
                throw new kl("Empty name");
            }
            char c1 = s.charAt(0);
            if (!Character.isLetter(c1) && c1 != '_')
            {
                throw new kl((new StringBuilder()).append("Illegal initial character: ").append(s).toString());
            }
            int i1 = 1;
            while (i1 < j1) 
            {
                char c2 = s.charAt(i1);
                if (!Character.isLetterOrDigit(c2) && c2 != '_')
                {
                    throw new kl((new StringBuilder()).append("Illegal character in: ").append(s).toString());
                }
                i1++;
            }
        }
        return s;
    }

    static Set n()
    {
        return h;
    }

    static ThreadLocal o()
    {
        return i;
    }

    static ThreadLocal p()
    {
        return j;
    }

    static ThreadLocal q()
    {
        return k;
    }

    public kj a()
    {
        return f;
    }

    public String a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = (String)c.get(s);
        this;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public String a(boolean flag)
    {
        Object obj;
        or or1;
        try
        {
            obj = new StringWriter();
            or1 = a.a(((java.io.Writer) (obj)));
        }
        catch (IOException ioexception)
        {
            throw new jg(ioexception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        or1.a();
        a(new kc(), or1);
        or1.g();
        obj = ((StringWriter) (obj)).toString();
        return ((String) (obj));
    }

    void a(kc kc1, or or1)
        throws IOException
    {
        if (c.size() == 0)
        {
            or1.b(d());
            return;
        } else
        {
            or1.d();
            or1.a("type", d());
            c.a(or1);
            or1.e();
            return;
        }
    }

    public void a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        c.a(s, s1);
        d = 0x80000000;
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public js b(String s)
    {
        throw new jg((new StringBuilder()).append("Not a record: ").append(this).toString());
    }

    public List b()
    {
        throw new jg((new StringBuilder()).append("Not a record: ").append(this).toString());
    }

    void b(kc kc1, or or1)
        throws IOException
    {
        throw new jg((new StringBuilder()).append("Not a record: ").append(this).toString());
    }

    public void b(List list)
    {
        throw new jg((new StringBuilder()).append("Not a record: ").append(this).toString());
    }

    public int c(String s)
    {
        throw new jg((new StringBuilder()).append("Not an enum: ").append(this).toString());
    }

    public List c()
    {
        throw new jg((new StringBuilder()).append("Not an enum: ").append(this).toString());
    }

    final boolean c(ji ji1)
    {
        return d == ji1.d || d == 0x80000000 || ji1.d == 0x80000000;
    }

    public String d()
    {
        return kj.a(f);
    }

    public void d(String s)
    {
        throw new jg((new StringBuilder()).append("Not a named type: ").append(this).toString());
    }

    public Integer e(String s)
    {
        throw new jg((new StringBuilder()).append("Not a union: ").append(this).toString());
    }

    public String e()
    {
        return null;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof ji))
            {
                return false;
            }
            obj = (ji)obj;
            if (f != ((ji) (obj)).f)
            {
                return false;
            }
            if (!c(((ji) (obj))) || !c.equals(((ji) (obj)).c))
            {
                return false;
            }
        }
        return true;
    }

    public String f()
    {
        throw new jg((new StringBuilder()).append("Not a named type: ").append(this).toString());
    }

    public String g()
    {
        return d();
    }

    public boolean h()
    {
        throw new jg((new StringBuilder()).append("Not a record: ").append(this).toString());
    }

    public final int hashCode()
    {
        if (d == 0x80000000)
        {
            d = m();
        }
        return d;
    }

    public ji i()
    {
        throw new jg((new StringBuilder()).append("Not an array: ").append(this).toString());
    }

    public ji j()
    {
        throw new jg((new StringBuilder()).append("Not a map: ").append(this).toString());
    }

    public List k()
    {
        throw new jg((new StringBuilder()).append("Not a union: ").append(this).toString());
    }

    public int l()
    {
        throw new jg((new StringBuilder()).append("Not fixed: ").append(this).toString());
    }

    int m()
    {
        return a().hashCode() + c.hashCode();
    }

    public String toString()
    {
        return a(false);
    }

    static 
    {
        a = new op();
        b = new rk(a);
        a.a(ox.b);
        a.a(b);
        g = new HashSet();
        Collections.addAll(g, new String[] {
            "doc", "fields", "items", "name", "namespace", "size", "symbols", "values", "type"
        });
        h = new HashSet();
        Collections.addAll(h, new String[] {
            "default", "doc", "name", "order", "type"
        });
        e = new HashMap();
        e.put("string", kj.g);
        e.put("bytes", kj.h);
        e.put("int", kj.i);
        e.put("long", kj.j);
        e.put("float", kj.k);
        e.put("double", kj.l);
        e.put("boolean", kj.m);
        e.put("null", kj.n);
    }
}
