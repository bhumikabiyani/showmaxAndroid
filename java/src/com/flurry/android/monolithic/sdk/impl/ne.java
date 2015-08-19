// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mq, na, mx, nf, 
//            mr

public class ne extends mq
    implements Iterable
{

    private ne(mq amq[])
    {
        super(na.c, amq);
    }

    ne(mq amq[], mr mr)
    {
        this(amq);
    }

    public final int a()
    {
        return a(b, 0);
    }

    public mq a(Map map, Map map1)
    {
        return b(map, map1);
    }

    public ne b(Map map, Map map1)
    {
        ne ne2 = (ne)map.get(this);
        ne ne1 = ne2;
        if (ne2 == null)
        {
            ne1 = new ne(new mq[a()]);
            map.put(this, ne1);
            Object obj = new ArrayList();
            map1.put(ne1, obj);
            a(b, 0, ne1.b, 0, map, map1);
            for (map = ((List) (obj)).iterator(); map.hasNext(); System.arraycopy(ne1.b, 0, ((mx) (obj)).a, ((mx) (obj)).b, ne1.b.length))
            {
                obj = (mx)map.next();
            }

            map1.remove(ne1);
        }
        return ne1;
    }

    public Iterator iterator()
    {
        return new nf(this);
    }
}
