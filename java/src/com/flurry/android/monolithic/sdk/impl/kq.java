// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kj, ji, km, kr, 
//            js, jt, jg, nw, 
//            kx, lf, ld, lc, 
//            ks, kv, kw, kp, 
//            lw

public class kq
{

    private static final kq a = new kq();
    private static final ji b;

    protected kq()
    {
    }

    public static kq a()
    {
        return a;
    }

    private void a(String s, StringBuilder stringbuilder)
    {
        int i1 = 0;
_L11:
        char c1;
        if (i1 >= s.length())
        {
            break MISSING_BLOCK_LABEL_282;
        }
        c1 = s.charAt(i1);
        c1;
        JVM INSTR lookupswitch 8: default 96
    //                   8: 201
    //                   9: 241
    //                   10: 221
    //                   12: 211
    //                   13: 231
    //                   34: 175
    //                   47: 251
    //                   92: 191;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break; /* Loop/switch isn't completed */
_L7:
        stringbuilder.append("\\\"");
_L12:
        i1++;
        if (true) goto _L11; else goto _L10
_L10:
        stringbuilder.append("\\\\");
          goto _L12
_L2:
        stringbuilder.append("\\b");
          goto _L12
_L5:
        stringbuilder.append("\\f");
          goto _L12
_L4:
        stringbuilder.append("\\n");
          goto _L12
_L6:
        stringbuilder.append("\\r");
          goto _L12
_L3:
        stringbuilder.append("\\t");
          goto _L12
_L8:
        stringbuilder.append("\\/");
          goto _L12
_L1:
        if ((c1 < 0 || c1 > '\037') && (c1 < '\177' || c1 > '\237') && (c1 < '\u2000' || c1 > '\u20FF'))
        {
            break MISSING_BLOCK_LABEL_273;
        }
        Integer.toHexString(c1);
        stringbuilder.append("\\u");
        for (int j1 = 0; j1 < 4 - stringbuilder.length(); j1++)
        {
            stringbuilder.append('0');
        }

        stringbuilder.append(s.toUpperCase());
        break; /* Loop/switch isn't completed */
        stringbuilder.append(c1);
          goto _L12
    }

    protected int a(int i1, Object obj, ji ji1)
    {
        return i1 * 31 + b(obj, ji1);
    }

    public int a(ji ji1, Object obj)
    {
        Integer integer = ji1.e(b(obj));
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new km(ji1, obj);
        }
    }

    public int a(Object obj, Object obj1, ji ji1)
    {
        return a(obj, obj1, ji1, false);
    }

    protected int a(Object obj, Object obj1, ji ji1, boolean flag)
    {
        int i1 = 1;
        if (obj != obj1) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        kr.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 1 14: default 92
    //                   1 103
    //                   2 216
    //                   3 234
    //                   4 343
    //                   5 371
    //                   6 92
    //                   7 431
    //                   8 92
    //                   9 92
    //                   10 92
    //                   11 92
    //                   12 92
    //                   13 92
    //                   14 8;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L3 _L9 _L3 _L3 _L3 _L3 _L3 _L3 _L1
_L3:
        return ((Comparable)obj).compareTo(obj1);
_L4:
        ji1 = ji1.b().iterator();
_L12:
        if (!ji1.hasNext()) goto _L1; else goto _L10
_L10:
        js js1 = (js)ji1.next();
        if (js1.f() == jt.c) goto _L12; else goto _L11
_L11:
        i1 = js1.b();
        String s = js1.a();
        i1 = a(a(obj, s, i1), a(obj1, s, i1), js1.c(), flag);
        if (i1 == 0) goto _L12; else goto _L13
_L13:
        if (js1.f() == jt.b)
        {
            i1 = -i1;
        }
        return i1;
_L5:
        return ji1.c(obj.toString()) - ji1.c(obj1.toString());
_L6:
        obj = (Collection)obj;
        obj1 = (Collection)obj1;
        obj = ((Collection) (obj)).iterator();
        obj1 = ((Collection) (obj1)).iterator();
        ji1 = ji1.i();
        while (((Iterator) (obj)).hasNext() && ((Iterator) (obj1)).hasNext()) 
        {
            int k1 = a(((Iterator) (obj)).next(), ((Iterator) (obj1)).next(), ji1, flag);
            if (k1 != 0)
            {
                return k1;
            }
        }
        if (!((Iterator) (obj)).hasNext())
        {
            if (((Iterator) (obj1)).hasNext())
            {
                i1 = -1;
            } else
            {
                i1 = 0;
            }
        }
        return i1;
_L7:
        if (flag)
        {
            if (!((Map)obj).equals(obj1))
            {
                return 1;
            }
        } else
        {
            throw new jg("Can't compare maps!");
        }
          goto _L1
_L8:
        int j1 = a(ji1, obj);
        int l1 = a(ji1, obj1);
        if (j1 == l1)
        {
            j1 = a(obj, obj1, (ji)ji1.k().get(j1), flag);
        } else
        {
            j1 -= l1;
        }
        return j1;
_L9:
        if (obj instanceof nw)
        {
            obj = (nw)obj;
        } else
        {
            obj = new nw(obj.toString());
        }
        if (obj1 instanceof nw)
        {
            obj1 = (nw)obj1;
        } else
        {
            obj1 = new nw(obj1.toString());
        }
        return ((nw) (obj)).a(((nw) (obj1)));
    }

    public lw a(ji ji1)
    {
        return new kx(ji1, ji1, this);
    }

    protected Object a(Object obj, ji ji1)
    {
        return null;
    }

    public Object a(Object obj, String s, int i1)
    {
        return ((lf)obj).a(i1);
    }

    public Object a(Object obj, byte abyte0[], ji ji1)
    {
        obj = (ld)c(obj, ji1);
        System.arraycopy(abyte0, 0, ((ld) (obj)).b(), 0, ji1.l());
        return obj;
    }

    public String a(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder();
        a(obj, stringbuilder);
        return stringbuilder.toString();
    }

    public void a(Object obj, String s, int i1, Object obj1)
    {
        ((lf)obj).a(i1, obj1);
    }

    protected void a(Object obj, String s, int i1, Object obj1, Object obj2)
    {
        a(obj, s, i1, obj1);
    }

    protected void a(Object obj, StringBuilder stringbuilder)
    {
        int i1 = 0;
        if (d(obj))
        {
            stringbuilder.append("{");
            ji ji1 = e(obj);
            Iterator iterator1 = ji1.b().iterator();
            i1 = 0;
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                js js1 = (js)iterator1.next();
                a(js1.a(), stringbuilder);
                stringbuilder.append(": ");
                a(a(obj, js1.a(), js1.b()), stringbuilder);
                i1++;
                if (i1 < ji1.b().size())
                {
                    stringbuilder.append(", ");
                }
            } while (true);
            stringbuilder.append("}");
            return;
        }
        if (obj instanceof Collection)
        {
            obj = (Collection)obj;
            stringbuilder.append("[");
            long l1 = ((Collection) (obj)).size() - 1;
            for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
            {
                a(((Iterator) (obj)).next(), stringbuilder);
                if ((long)i1 < l1)
                {
                    stringbuilder.append(", ");
                }
                i1++;
            }

            stringbuilder.append("]");
            return;
        }
        if (obj instanceof Map)
        {
            stringbuilder.append("{");
            obj = (Map)obj;
            Iterator iterator = ((Map) (obj)).entrySet().iterator();
            int j1 = 0;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                a(entry.getKey(), stringbuilder);
                stringbuilder.append(": ");
                a(entry.getValue(), stringbuilder);
                j1++;
                if (j1 < ((Map) (obj)).size())
                {
                    stringbuilder.append(", ");
                }
            } while (true);
            stringbuilder.append("}");
            return;
        }
        if ((obj instanceof CharSequence) || (obj instanceof lc))
        {
            stringbuilder.append("\"");
            a(obj.toString(), stringbuilder);
            stringbuilder.append("\"");
            return;
        }
        if (obj instanceof ByteBuffer)
        {
            stringbuilder.append("{\"bytes\": \"");
            obj = (ByteBuffer)obj;
            for (int k1 = ((ByteBuffer) (obj)).position(); k1 < ((ByteBuffer) (obj)).limit(); k1++)
            {
                stringbuilder.append((char)((ByteBuffer) (obj)).get(k1));
            }

            stringbuilder.append("\"}");
            return;
        } else
        {
            stringbuilder.append(obj);
            return;
        }
    }

    public int b(Object obj, ji ji1)
    {
        int j1 = 0;
        if (obj != null) goto _L2; else goto _L1
_L1:
        return j1;
_L2:
        int i1 = 1;
        kr.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 1 14: default 96
    //                   1 101
    //                   2 246
    //                   3 175
    //                   4 96
    //                   5 222
    //                   6 96
    //                   7 255
    //                   8 96
    //                   9 96
    //                   10 96
    //                   11 96
    //                   12 96
    //                   13 96
    //                   14 7;
           goto _L3 _L4 _L5 _L6 _L3 _L7 _L3 _L8 _L3 _L3 _L3 _L3 _L3 _L3 _L1
_L3:
        return obj.hashCode();
_L4:
        ji1 = ji1.b().iterator();
        i1 = 1;
_L10:
        j1 = i1;
        if (!ji1.hasNext()) goto _L1; else goto _L9
_L9:
        js js1 = (js)ji1.next();
        if (js1.f() != jt.c)
        {
            i1 = a(i1, a(obj, js1.a(), js1.b()), js1.c());
        }
          goto _L10
          goto _L1
_L6:
        obj = (Collection)obj;
        ji1 = ji1.i();
        for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
        {
            i1 = a(i1, ((Iterator) (obj)).next(), ji1);
        }

        return i1;
_L7:
        return b(obj, (ji)ji1.k().get(a(ji1, obj)));
_L5:
        return ji1.c(obj.toString());
_L8:
        if (!(obj instanceof nw))
        {
            obj = new nw(obj.toString());
        }
        return obj.hashCode();
    }

    public Object b(ji ji1, Object obj)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L4:
        return obj1;
_L2:
        obj1 = obj;
        switch (kr.a[ji1.a().ordinal()])
        {
        default:
            throw new jg((new StringBuilder()).append("Deep copy failed for schema \"").append(ji1).append("\" and value \"").append(obj).append("\"").toString());

        case 3: // '\003'
            obj1 = (List)obj;
            obj = new ks(((List) (obj1)).size(), ji1);
            Object obj2;
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((List) (obj)).add(b(ji1.i(), obj2)))
            {
                obj2 = ((Iterator) (obj1)).next();
            }

            return obj;

        case 13: // '\r'
            return new Boolean(((Boolean)obj).booleanValue());

        case 8: // '\b'
            ji1 = (ByteBuffer)obj;
            obj = new byte[ji1.capacity()];
            ji1.rewind();
            ji1.get(((byte []) (obj)));
            ji1.rewind();
            return ByteBuffer.wrap(((byte []) (obj)));

        case 12: // '\f'
            return new Double(((Double)obj).doubleValue());

        case 6: // '\006'
            return a(null, ((ld)obj).b(), ji1);

        case 11: // '\013'
            return new Float(((Float)obj).floatValue());

        case 9: // '\t'
            return new Integer(((Integer)obj).intValue());

        case 10: // '\n'
            return new Long(((Long)obj).longValue());

        case 4: // '\004'
            obj1 = (Map)obj;
            obj = new HashMap(((Map) (obj1)).size());
            java.util.Map.Entry entry;
            for (obj1 = ((Map) (obj1)).entrySet().iterator(); ((Iterator) (obj1)).hasNext(); ((Map) (obj)).put((CharSequence)(CharSequence)b(b, entry.getKey()), b(ji1.j(), entry.getValue())))
            {
                entry = (java.util.Map.Entry)((Iterator) (obj1)).next();
            }

            return obj;

        case 14: // '\016'
            return null;

        case 1: // '\001'
            obj = (lf)obj;
            obj1 = (lf)d(null, ji1);
            js js1;
            for (ji1 = ji1.b().iterator(); ji1.hasNext(); ((lf) (obj1)).a(js1.b(), b(js1.c(), ((lf) (obj)).a(js1.b()))))
            {
                js1 = (js)ji1.next();
            }

            return obj1;

        case 7: // '\007'
            obj1 = obj;
            if (!(obj instanceof String))
            {
                if (obj instanceof nw)
                {
                    return new nw((nw)obj);
                } else
                {
                    return new nw(obj.toString());
                }
            }
            break;

        case 5: // '\005'
            return b((ji)ji1.k().get(a(ji1, obj)), obj);

        case 2: // '\002'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Object b(Object obj, String s, int i1, Object obj1)
    {
        return a(obj, s, i1);
    }

    protected String b(Object obj)
    {
        if (obj == null)
        {
            return kj.n.a();
        }
        if (d(obj))
        {
            return e(obj).g();
        }
        if (f(obj))
        {
            return g(obj).g();
        }
        if (c(obj))
        {
            return kj.c.a();
        }
        if (h(obj))
        {
            return kj.d.a();
        }
        if (i(obj))
        {
            return j(obj).g();
        }
        if (k(obj))
        {
            return kj.g.a();
        }
        if (l(obj))
        {
            return kj.h.a();
        }
        if (obj instanceof Integer)
        {
            return kj.i.a();
        }
        if (obj instanceof Long)
        {
            return kj.j.a();
        }
        if (obj instanceof Float)
        {
            return kj.k.a();
        }
        if (obj instanceof Double)
        {
            return kj.l.a();
        }
        if (obj instanceof Boolean)
        {
            return kj.m.a();
        } else
        {
            throw new jg((new StringBuilder()).append("Unknown datum type: ").append(obj).toString());
        }
    }

    public Object c(Object obj, ji ji1)
    {
        if ((obj instanceof ld) && ((ld)obj).b().length == ji1.l())
        {
            return obj;
        } else
        {
            return new kv(ji1);
        }
    }

    protected boolean c(Object obj)
    {
        return obj instanceof Collection;
    }

    public Object d(Object obj, ji ji1)
    {
        if (obj instanceof lf)
        {
            obj = (lf)obj;
            if (((lf) (obj)).a() == ji1)
            {
                return obj;
            }
        }
        return new kw(ji1);
    }

    protected boolean d(Object obj)
    {
        return obj instanceof lf;
    }

    protected ji e(Object obj)
    {
        return ((kp)obj).a();
    }

    protected boolean f(Object obj)
    {
        return obj instanceof lc;
    }

    protected ji g(Object obj)
    {
        return ((kp)obj).a();
    }

    protected boolean h(Object obj)
    {
        return obj instanceof Map;
    }

    protected boolean i(Object obj)
    {
        return obj instanceof ld;
    }

    protected ji j(Object obj)
    {
        return ((kp)obj).a();
    }

    protected boolean k(Object obj)
    {
        return obj instanceof CharSequence;
    }

    protected boolean l(Object obj)
    {
        return obj instanceof ByteBuffer;
    }

    static 
    {
        b = ji.a(kj.g);
    }
}
