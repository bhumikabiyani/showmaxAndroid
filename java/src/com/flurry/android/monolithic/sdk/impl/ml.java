// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nk, md, mu, mm, 
//            ji, kj, js, ou, 
//            jh, mc, mq, nj, 
//            mn, mw, ng, mt, 
//            mz, ni

public class ml extends nk
{

    private static md a = (new md()).a(32);

    public ml()
    {
    }

    private static mq a(List list, List list1)
    {
        Object aobj[] = new Object[list.size()];
        int i = 0;
        while (i < aobj.length) 
        {
            int j = list1.indexOf(list.get(i));
            Object obj;
            if (j == -1)
            {
                obj = (new StringBuilder()).append("No match for ").append((String)list.get(i)).toString();
            } else
            {
                obj = new Integer(j);
            }
            aobj[i] = obj;
            i++;
        }
        return new mu(list1.size(), aobj);
    }

    public static void a(mc mc1, ji ji1, ou ou1)
        throws IOException
    {
        mm.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 1 14: default 80
    //                   1 760
    //                   2 717
    //                   3 544
    //                   4 587
    //                   5 630
    //                   6 674
    //                   7 453
    //                   8 496
    //                   9 354
    //                   10 185
    //                   11 198
    //                   12 258
    //                   13 81
    //                   14 330;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
        return;
_L14:
        Iterator iterator1 = ji1.b().iterator();
        while (iterator1.hasNext()) 
        {
            js js1 = (js)iterator1.next();
            String s1 = js1.a();
            ou ou2 = ou1.a(s1);
            ji1 = ou2;
            if (ou2 == null)
            {
                ji1 = js1.e();
            }
            if (ji1 == null)
            {
                throw new jh((new StringBuilder()).append("No default value for: ").append(s1).toString());
            }
            a(mc1, js1.c(), ((ou) (ji1)));
        }
          goto _L1
_L11:
        mc1.a(ji1.c(ou1.h()));
        return;
_L12:
        mc1.b();
        mc1.a(ou1.o());
        ji1 = ji1.i();
        ou ou3;
        for (ou1 = ou1.iterator(); ou1.hasNext(); a(mc1, ji1, ou3))
        {
            ou3 = (ou)ou1.next();
            mc1.c();
        }

        mc1.d();
        return;
_L13:
        mc1.e();
        mc1.a(ou1.o());
        ji1 = ji1.j();
        String s;
        for (Iterator iterator = ou1.q(); iterator.hasNext(); a(mc1, ji1, ou1.a(s)))
        {
            mc1.c();
            s = (String)iterator.next();
            mc1.a(s);
        }

        mc1.f();
        return;
_L15:
        mc1.b(0);
        a(mc1, (ji)ji1.k().get(0), ou1);
        return;
_L10:
        if (!ou1.e())
        {
            throw new jh((new StringBuilder()).append("Non-string default value for fixed: ").append(ou1).toString());
        }
        ou1 = ou1.h().getBytes("ISO-8859-1");
        if (ou1.length != ji1.l())
        {
            byte abyte0[] = new byte[ji1.l()];
            int i;
            if (ji1.l() > ou1.length)
            {
                i = ou1.length;
            } else
            {
                i = ji1.l();
            }
            System.arraycopy(ou1, 0, abyte0, 0, i);
            ji1 = abyte0;
        } else
        {
            ji1 = ou1;
        }
        mc1.b(ji1);
        return;
_L8:
        if (!ou1.e())
        {
            throw new jh((new StringBuilder()).append("Non-string default value for string: ").append(ou1).toString());
        } else
        {
            mc1.a(ou1.h());
            return;
        }
_L9:
        if (!ou1.e())
        {
            throw new jh((new StringBuilder()).append("Non-string default value for bytes: ").append(ou1).toString());
        } else
        {
            mc1.a(ou1.h().getBytes("ISO-8859-1"));
            return;
        }
_L4:
        if (!ou1.c())
        {
            throw new jh((new StringBuilder()).append("Non-numeric default value for int: ").append(ou1).toString());
        } else
        {
            mc1.c(ou1.j());
            return;
        }
_L5:
        if (!ou1.c())
        {
            throw new jh((new StringBuilder()).append("Non-numeric default value for long: ").append(ou1).toString());
        } else
        {
            mc1.b(ou1.k());
            return;
        }
_L6:
        if (!ou1.c())
        {
            throw new jh((new StringBuilder()).append("Non-numeric default value for float: ").append(ou1).toString());
        } else
        {
            mc1.a((float)ou1.l());
            return;
        }
_L7:
        if (!ou1.c())
        {
            throw new jh((new StringBuilder()).append("Non-numeric default value for double: ").append(ou1).toString());
        } else
        {
            mc1.a(ou1.l());
            return;
        }
_L3:
        if (!ou1.f())
        {
            throw new jh((new StringBuilder()).append("Non-boolean default for boolean: ").append(ou1).toString());
        } else
        {
            mc1.a(ou1.i());
            return;
        }
_L2:
        if (!ou1.g())
        {
            throw new jh((new StringBuilder()).append("Non-null default value for null type: ").append(ou1).toString());
        } else
        {
            mc1.a();
            return;
        }
    }

    private static byte[] a(ji ji1, ou ou1)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        lr lr = a.a(bytearrayoutputstream, null);
        a(((mc) (lr)), ji1, ou1);
        lr.flush();
        return bytearrayoutputstream.toByteArray();
    }

    private static int b(ji ji1, ji ji2)
    {
        kj kj1;
        int j;
        boolean flag = false;
        kj1 = ji2.a();
        Iterator iterator = ji1.k().iterator();
        for (int i = 0; iterator.hasNext(); i++)
        {
            Object obj = (ji)iterator.next();
            if (kj1 != ((ji) (obj)).a())
            {
                continue;
            }
            if (kj1 == kj.a || kj1 == kj.b || kj1 == kj.f)
            {
                String s = ji2.g();
                obj = ((ji) (obj)).g();
                if ((s == null || !s.equals(obj)) && (s != obj || kj1 != kj.a))
                {
                    continue;
                }
            }
            return i;
        }

        ji1 = ji1.k().iterator();
        j = ((flag) ? 1 : 0);
_L2:
        if (!ji1.hasNext())
        {
            break MISSING_BLOCK_LABEL_282;
        }
        ji2 = (ji)ji1.next();
        switch (mm.a[kj1.ordinal()])
        {
        default:
            break;

        case 3: // '\003'
            break; /* Loop/switch isn't completed */

        case 4: // '\004'
        case 5: // '\005'
            break;
        }
        break MISSING_BLOCK_LABEL_246;
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        switch (mm.a[ji2.a().ordinal()])
        {
        case 4: // '\004'
        case 6: // '\006'
            return j;
        }
          goto _L3
        switch (mm.a[ji2.a().ordinal()])
        {
        case 6: // '\006'
            return j;
        }
          goto _L3
        return -1;
    }

    private mq b(ji ji1, ji ji2, Map map)
        throws IOException
    {
        Object obj = ji1.k();
        int i = ((List) (obj)).size();
        ji1 = new mq[i];
        String as[] = new String[i];
        obj = ((List) (obj)).iterator();
        for (int j = 0; ((Iterator) (obj)).hasNext(); j++)
        {
            ji ji3 = (ji)((Iterator) (obj)).next();
            ji1[j] = a(ji3, ji2, map);
            as[j] = ji3.g();
        }

        return mq.b(new mq[] {
            mq.a(ji1, as), new nj()
        });
    }

    private mq c(ji ji1, ji ji2, Map map)
        throws IOException
    {
        Object obj;
        Object obj1;
        mn mn1;
        mn1 = new mn(ji1, ji2);
        obj1 = (mq)map.get(mn1);
        obj = obj1;
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        js ajs[];
        List list;
        int i;
        int k;
        list = ji1.b();
        obj = ji2.b();
        ajs = new js[((List) (obj)).size()];
        int l = list.size();
        obj1 = list.iterator();
        i = 0;
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            js js3 = ji2.b(((js)((Iterator) (obj1)).next()).a());
            if (js3 != null)
            {
                int j = i + 1;
                ajs[i] = js3;
                i = j;
            }
        } while (true);
        obj1 = ((List) (obj)).iterator();
        k = l + 1;
_L6:
        js js4;
        if (!((Iterator) (obj1)).hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        js4 = (js)((Iterator) (obj1)).next();
        if (ji1.b(js4.a()) != null)
        {
            break MISSING_BLOCK_LABEL_562;
        }
        if (js4.e() != null) goto _L4; else goto _L3
_L3:
        obj = mq.a((new StringBuilder()).append("Found ").append(ji1.a(true)).append(", expecting ").append(ji2.a(true)).toString());
        map.put(mn1, obj);
_L2:
        return ((mq) (obj));
_L4:
        ajs[i] = js4;
        int i1 = k + 3;
        k = i + 1;
        i = i1;
_L7:
        int j1 = k;
        k = i;
        i = j1;
        if (true) goto _L6; else goto _L5
_L5:
        mq amq[] = new mq[k];
        i = k - 1;
        amq[i] = new mw(ajs);
        mq mq1 = mq.b(amq);
        map.put(mn1, mq1);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            js js2 = (js)iterator.next();
            js js5 = ji2.b(js2.a());
            if (js5 == null)
            {
                i--;
                amq[i] = new ng(a(js2.c(), js2.c(), map));
            } else
            {
                i--;
                amq[i] = a(js2.c(), js5.c(), map);
            }
        }

        ji2 = ((List) (obj)).iterator();
        do
        {
            if (!ji2.hasNext())
            {
                break;
            }
            js js1 = (js)ji2.next();
            if (ji1.b(js1.a()) == null)
            {
                byte abyte0[] = a(js1.c(), js1.e());
                i--;
                amq[i] = new mt(abyte0);
                i--;
                amq[i] = a(js1.c(), js1.c(), map);
                i--;
                amq[i] = mq.x;
            }
        } while (true);
        return mq1;
        int k1 = i;
        i = k;
        k = k1;
          goto _L7
    }

    public final mq a(ji ji1, ji ji2)
        throws IOException
    {
        return mq.a(new mq[] {
            a(ji1, ji2, ((Map) (new HashMap())))
        });
    }

    public mq a(ji ji1, ji ji2, Map map)
        throws IOException
    {
        kj kj1;
        kj kj2;
        kj1 = ji1.a();
        kj2 = ji2.a();
        if (kj1 != kj2) goto _L2; else goto _L1
_L1:
        switch (mm.a[kj1.ordinal()])
        {
        default:
            throw new jh((new StringBuilder()).append("Unkown type for schema: ").append(kj1).toString());

        case 1: // '\001'
            return mq.c;

        case 2: // '\002'
            return mq.d;

        case 3: // '\003'
            return mq.e;

        case 4: // '\004'
            return mq.f;

        case 5: // '\005'
            return mq.g;

        case 6: // '\006'
            return mq.h;

        case 7: // '\007'
            return mq.i;

        case 8: // '\b'
            return mq.j;

        case 9: // '\t'
            if (ji1.g().equals(ji2.g()) && ji1.l() == ji2.l())
            {
                return mq.b(new mq[] {
                    new mz(ji1.l()), mq.k
                });
            }
            break;

        case 10: // '\n'
            if (ji1.g() == null || ji1.g().equals(ji2.g()))
            {
                return mq.b(new mq[] {
                    a(ji1.c(), ji2.c()), mq.l
                });
            }
            break;

        case 11: // '\013'
            return mq.b(new mq[] {
                mq.a(mq.o, new mq[] {
                    a(ji1.i(), ji2.i(), map)
                }), mq.n
            });

        case 12: // '\f'
            return mq.b(new mq[] {
                mq.a(mq.q, new mq[] {
                    a(ji1.j(), ji2.j(), map), mq.i
                }), mq.p
            });

        case 13: // '\r'
            return c(ji1, ji2, map);

        case 14: // '\016'
            return b(ji1, ji2, map);
        }
          goto _L3
_L2:
        if (kj1 == kj.e)
        {
            return b(ji1, ji2, map);
        }
        mm.a[kj2.ordinal()];
        JVM INSTR tableswitch 1 14: default 468
    //                   1 524
    //                   2 524
    //                   3 524
    //                   4 497
    //                   5 579
    //                   6 628
    //                   7 524
    //                   8 524
    //                   9 468
    //                   10 524
    //                   11 524
    //                   12 524
    //                   13 524
    //                   14 680;
           goto _L4 _L5 _L5 _L5 _L6 _L7 _L8 _L5 _L5 _L4 _L5 _L5 _L5 _L5 _L9
_L5:
        break; /* Loop/switch isn't completed */
_L4:
        throw new RuntimeException((new StringBuilder()).append("Unexpected schema type: ").append(kj2).toString());
_L6:
        mm.a[kj1.ordinal()];
        JVM INSTR tableswitch 3 3: default 524
    //                   3 566;
           goto _L3 _L10
_L3:
        return mq.a((new StringBuilder()).append("Found ").append(ji1.a(true)).append(", expecting ").append(ji2.a(true)).toString());
_L10:
        return mq.a(super.a(ji1, map), mq.f);
_L7:
        switch (mm.a[kj1.ordinal()])
        {
        case 3: // '\003'
        case 4: // '\004'
            return mq.a(super.a(ji1, map), mq.g);
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L8:
        switch (mm.a[kj1.ordinal()])
        {
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            return mq.a(super.a(ji1, map), mq.h);
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L9:
        int i = b(ji2, ji1);
        if (i >= 0)
        {
            return mq.b(new mq[] {
                new ni(i, a(ji1, (ji)ji2.k().get(i), map)), mq.m
            });
        }
        if (true) goto _L3; else goto _L11
_L11:
    }

}
