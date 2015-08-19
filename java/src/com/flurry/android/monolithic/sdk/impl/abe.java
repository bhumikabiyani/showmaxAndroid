// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abc, rp, afm, qw, 
//            ru, oq, oz, or, 
//            abt, abf, aee, ra, 
//            rx, qc

public class abe extends abc
    implements rp
{

    protected final boolean a;
    protected final aee b;
    protected final afm c;
    protected final qc d;
    protected ra e;
    protected final rx f;

    public abe(afm afm1, boolean flag, aee aee1, rx rx1, qc qc, ra ra1)
    {
label0:
        {
            boolean flag1 = false;
            super(java/util/EnumMap, false);
            if (!flag)
            {
                flag = flag1;
                if (afm1 == null)
                {
                    break label0;
                }
                flag = flag1;
                if (!afm1.u())
                {
                    break label0;
                }
            }
            flag = true;
        }
        a = flag;
        c = afm1;
        b = aee1;
        f = rx1;
        d = qc;
        e = ra1;
    }

    public abc a(rx rx1)
    {
        return new abe(c, a, b, rx1, d, e);
    }

    public void a(ru ru1)
        throws qw
    {
        if (a && e == null)
        {
            e = ru1.a(c, d);
        }
    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((EnumMap)obj, or1, ru1);
    }

    public volatile void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oz
    {
        a((EnumMap)obj, or1, ru1, rx1);
    }

    public void a(EnumMap enummap, or or1, ru ru1)
        throws IOException, oq
    {
        or1.d();
        if (!enummap.isEmpty())
        {
            b(enummap, or1, ru1);
        }
        or1.e();
    }

    protected void a(EnumMap enummap, or or1, ru ru1, ra ra1)
        throws IOException, oq
    {
        Object obj;
        Iterator iterator;
        obj = b;
        iterator = enummap.entrySet().iterator();
_L2:
        aee aee1;
        java.util.Map.Entry entry;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        Enum enum = (Enum)entry.getKey();
        aee1 = ((aee) (obj));
        if (obj == null)
        {
            aee1 = ((abf)(abt)ru1.a(enum.getDeclaringClass(), d)).d();
        }
        or1.a(aee1.a(enum));
        obj = entry.getValue();
        if (obj == null)
        {
            ru1.a(or1);
            obj = aee1;
            continue; /* Loop/switch isn't completed */
        }
        ra1.a(obj, or1, ru1);
        obj = aee1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        a(ru1, ((Throwable) (exception)), enummap, ((Enum)entry.getKey()).name());
        exception = aee1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(EnumMap enummap, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.b(enummap, or1);
        if (!enummap.isEmpty())
        {
            b(enummap, or1, ru1);
        }
        rx1.e(enummap, or1);
    }

    protected void b(EnumMap enummap, or or1, ru ru1)
        throws IOException, oq
    {
        Object obj1 = null;
        if (e == null) goto _L2; else goto _L1
_L1:
        a(enummap, or1, ru1, e);
_L4:
        return;
_L2:
        Object obj;
        aee aee1;
        Iterator iterator;
        aee1 = b;
        iterator = enummap.entrySet().iterator();
        obj = null;
_L7:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        java.util.Map.Entry entry;
        Object obj7;
        entry = (java.util.Map.Entry)iterator.next();
        Enum enum = (Enum)entry.getKey();
        if (aee1 == null)
        {
            aee1 = ((abf)(abt)ru1.a(enum.getDeclaringClass(), d)).d();
        }
        or1.a(aee1.a(enum));
        obj7 = entry.getValue();
        if (obj7 != null) goto _L6; else goto _L5
_L5:
        ru1.a(or1);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L8:
        Object obj3 = obj1;
        obj1 = obj;
        obj = obj3;
          goto _L7
_L6:
        Object obj6 = obj7.getClass();
        Object obj4;
        if (obj6 == obj1)
        {
            obj6 = obj;
            obj4 = obj;
            obj = obj6;
        } else
        {
            obj4 = ru1.a(((Class) (obj6)), d);
            obj = obj4;
            obj1 = obj6;
        }
        ((ra) (obj4)).a(obj7, or1, ru1);
        obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L8
        Exception exception;
        exception;
        a(ru1, exception, enummap, ((Enum)entry.getKey()).name());
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L8
    }
}
