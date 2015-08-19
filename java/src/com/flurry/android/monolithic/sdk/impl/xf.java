// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm, qu, ael, vo, 
//            ra, qk, qq, rq

public class xf
{

    public static final xf a = new xf();

    protected xf()
    {
    }

    private Object a(String s)
    {
        s = ((String) (Class.forName(s).newInstance()));
        return s;
        s;
_L2:
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean a(Class class1, String s)
    {
        for (; class1 != null; class1 = class1.getSuperclass())
        {
            while (class1.getName().equals(s) || b(class1, s)) 
            {
                return true;
            }
        }

        return false;
    }

    private boolean b(Class class1, String s)
    {
        int i;
        int k;
        class1 = class1.getInterfaces();
        k = class1.length;
        i = 0;
_L7:
        if (i >= k) goto _L2; else goto _L1
_L1:
        if (!class1[i].getName().equals(s)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        int l = class1.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= l)
                {
                    break label1;
                }
                if (b(class1[j], s))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L3; else goto _L5
_L5:
        return false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean c(Class class1, String s)
    {
        Class class3;
        Class class2 = class1.getSuperclass();
        do
        {
            class3 = class1;
            if (class2 == null)
            {
                break;
            }
            if (class2.getName().startsWith(s))
            {
                return true;
            }
            class2 = class2.getSuperclass();
        } while (true);
_L3:
        if (class3 != null)
        {
            if (d(class3, s))
            {
                return true;
            }
        } else
        {
            return false;
        }
        if (true) goto _L2; else goto _L1
_L2:
        class3 = class3.getSuperclass();
        if (true) goto _L3; else goto _L1
_L1:
    }

    private boolean d(Class class1, String s)
    {
        int i;
        int k;
        class1 = class1.getInterfaces();
        k = class1.length;
        i = 0;
_L7:
        if (i >= k) goto _L2; else goto _L1
_L1:
        if (!class1[i].getName().startsWith(s)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        int l = class1.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= l)
                {
                    break label1;
                }
                if (d(class1[j], s))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L3; else goto _L5
_L5:
        return false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public qu a(afm afm1, qk qk, qq qq)
    {
        qk = afm1.p();
        afm1 = qk.getName();
        if (!afm1.startsWith("org.joda.time.")) goto _L2; else goto _L1
_L1:
        afm1 = "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers";
_L4:
        afm1 = ((afm) (a(((String) (afm1)))));
        if (afm1 == null)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_101;
_L2:
        if (!afm1.startsWith("javax.xml.") && !c(qk, "javax.xml."))
        {
            break; /* Loop/switch isn't completed */
        }
        afm1 = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers";
        if (true) goto _L4; else goto _L3
_L3:
        if (a(((Class) (qk)), "org.w3c.dom.Node"))
        {
            return (qu)a("com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer");
        }
        if (a(((Class) (qk)), "org.w3c.dom.Node"))
        {
            return (qu)a("com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer");
        } else
        {
            return null;
        }
        afm1 = ((ael)afm1).a();
        for (qq = afm1.iterator(); qq.hasNext();)
        {
            vo vo1 = (vo)qq.next();
            if (qk == vo1.f())
            {
                return vo1;
            }
        }

        for (afm1 = afm1.iterator(); afm1.hasNext();)
        {
            qq = (vo)afm1.next();
            if (qq.f().isAssignableFrom(qk))
            {
                return qq;
            }
        }

        return null;
    }

    public ra a(rq rq, afm afm1)
    {
        afm1 = afm1.p();
        rq = afm1.getName();
        if (!rq.startsWith("org.joda.time.")) goto _L2; else goto _L1
_L1:
        rq = "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers";
_L4:
        rq = ((rq) (a(((String) (rq)))));
        if (rq == null)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_81;
_L2:
        if (!rq.startsWith("javax.xml.") && !c(afm1, "javax.xml."))
        {
            break; /* Loop/switch isn't completed */
        }
        rq = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers";
        if (true) goto _L4; else goto _L3
_L3:
        if (a(((Class) (afm1)), "org.w3c.dom.Node"))
        {
            return (ra)a("com.flurry.org.codehaus.jackson.map.ext.DOMSerializer");
        } else
        {
            return null;
        }
        rq = ((ael)rq).a();
        for (Iterator iterator = rq.iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
            if (afm1 == entry1.getKey())
            {
                return (ra)entry1.getValue();
            }
        }

        for (rq = rq.iterator(); rq.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)rq.next();
            if (((Class)entry.getKey()).isAssignableFrom(afm1))
            {
                return (ra)entry.getValue();
            }
        }

        return null;
    }

}
