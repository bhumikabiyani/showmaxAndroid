// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yh, xh, yg, xk, 
//            py, rf

public class yv extends yh
{

    protected LinkedHashSet a;

    public yv()
    {
    }

    public Collection a(xh xh1, rf rf, py py1)
    {
        HashMap hashmap = new HashMap();
        if (a != null)
        {
            Class class1 = xh1.d();
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                yg yg1 = (yg)iterator.next();
                if (class1.isAssignableFrom(yg1.a()))
                {
                    a(xh.b(yg1.a(), py1, rf), yg1, rf, py1, hashmap);
                }
            } while (true);
        }
        a(xh1, new yg(xh1.d(), null), rf, py1, hashmap);
        return new ArrayList(hashmap.values());
    }

    public Collection a(xk xk1, rf rf, py py1)
    {
        HashMap hashmap = new HashMap();
        if (a != null)
        {
            Class class1 = xk1.d();
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                yg yg2 = (yg)iterator.next();
                if (class1.isAssignableFrom(yg2.a()))
                {
                    a(xh.b(yg2.a(), py1, rf), yg2, rf, py1, hashmap);
                }
            } while (true);
        }
        Object obj = py1.a(xk1);
        if (obj != null)
        {
            yg yg1;
            for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext(); a(xh.b(yg1.a(), py1, rf), yg1, rf, py1, hashmap))
            {
                yg1 = (yg)((Iterator) (obj)).next();
            }

        }
        obj = new yg(xk1.d(), null);
        a(xh.b(xk1.d(), py1, rf), ((yg) (obj)), rf, py1, hashmap);
        return new ArrayList(hashmap.values());
    }

    protected void a(xh xh1, yg yg1, rf rf, py py1, HashMap hashmap)
    {
        yg yg2;
        yg2 = yg1;
        if (!yg1.c())
        {
            String s = py1.g(xh1);
            yg2 = yg1;
            if (s != null)
            {
                yg2 = new yg(yg1.a(), s);
            }
        }
        if (!hashmap.containsKey(yg2)) goto _L2; else goto _L1
_L1:
        if (yg2.c() && !((yg)hashmap.get(yg2)).c())
        {
            hashmap.put(yg2, yg2);
        }
_L4:
        return;
_L2:
        hashmap.put(yg2, yg2);
        xh1 = py1.a(xh1);
        if (xh1 != null && !xh1.isEmpty())
        {
            yg1 = xh1.iterator();
            while (yg1.hasNext()) 
            {
                xh1 = (yg)yg1.next();
                xh xh2 = xh.b(xh1.a(), py1, rf);
                if (!xh1.c())
                {
                    xh1 = new yg(xh1.a(), py1.g(xh2));
                }
                a(xh2, ((yg) (xh1)), rf, py1, hashmap);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
