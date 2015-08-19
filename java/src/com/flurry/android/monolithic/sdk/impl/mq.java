// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nh, my, ne, nc, 
//            nb, mv, nd, ms, 
//            mx, na

public abstract class mq
{

    public static final mq c = new nh("null");
    public static final mq d = new nh("boolean");
    public static final mq e = new nh("int");
    public static final mq f = new nh("long");
    public static final mq g = new nh("float");
    public static final mq h = new nh("double");
    public static final mq i = new nh("string");
    public static final mq j = new nh("bytes");
    public static final mq k = new nh("fixed");
    public static final mq l = new nh("enum");
    public static final mq m = new nh("union");
    public static final mq n = new nh("array-start");
    public static final mq o = new nh("array-end");
    public static final mq p = new nh("map-start");
    public static final mq q = new nh("map-end");
    public static final mq r = new nh("item-end");
    public static final mq s = new nh("field-action");
    public static final mq t = new my(false, null);
    public static final mq u = new my(true, null);
    public static final mq v = new my(true, null);
    public static final mq w = new my(true, null);
    public static final mq x = new my(true, null);
    public static final mq y = new nh("map-key-marker");
    public final na a;
    public final mq b[];

    protected mq(na na)
    {
        this(na, null);
    }

    protected mq(na na, mq amq[])
    {
        b = amq;
        a = na;
    }

    protected static int a(mq amq[], int i1)
    {
        boolean flag = false;
        int j1 = i1;
        i1 = ((flag) ? 1 : 0);
        while (j1 < amq.length) 
        {
            if (amq[j1] instanceof ne)
            {
                i1 = ((ne)amq[j1]).a() + i1;
            } else
            {
                i1++;
            }
            j1++;
        }
        return i1;
    }

    static mq a(mq mq1, mq mq2)
    {
        return new nc(mq1, mq2, null);
    }

    static transient mq a(mq mq1, mq amq[])
    {
        return new nb(mq1, amq, null);
    }

    static mq a(String s1)
    {
        return new mv(s1, null);
    }

    static transient mq a(mq amq[])
    {
        return new nd(amq, null);
    }

    static mq a(mq amq[], String as[])
    {
        return new ms(amq, as, null);
    }

    static void a(mq amq[], int i1, mq amq1[], int j1, Map map, Map map1)
    {
        int k1 = j1;
        j1 = i1;
        while (j1 < amq.length) 
        {
            Object obj = amq[j1].a(map, map1);
            if (obj instanceof ne)
            {
                mq amq2[] = ((mq) (obj)).b;
                obj = (List)map1.get(obj);
                if (obj == null)
                {
                    System.arraycopy(amq2, 0, amq1, k1, amq2.length);
                } else
                {
                    ((List) (obj)).add(new mx(amq1, k1));
                }
                i1 = k1 + amq2.length;
            } else
            {
                amq1[k1] = ((mq) (obj));
                i1 = k1 + 1;
            }
            j1++;
            k1 = i1;
        }
    }

    static transient mq b(mq amq[])
    {
        return new ne(amq, null);
    }

    public int a()
    {
        return 1;
    }

    public mq a(Map map, Map map1)
    {
        return this;
    }

}
