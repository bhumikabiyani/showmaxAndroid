// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xy, xl

public final class xm
    implements Iterable
{

    protected LinkedHashMap a;

    public xm()
    {
    }

    public xl a(String s, Class aclass[])
    {
        if (a == null)
        {
            return null;
        } else
        {
            return (xl)a.get(new xy(s, aclass));
        }
    }

    public xl a(Method method)
    {
        if (a != null)
        {
            return (xl)a.remove(new xy(method));
        } else
        {
            return null;
        }
    }

    public void a(xl xl1)
    {
        if (a == null)
        {
            a = new LinkedHashMap();
        }
        a.put(new xy(xl1.e()), xl1);
    }

    public boolean a()
    {
        return a == null || a.size() == 0;
    }

    public xl b(Method method)
    {
        if (a == null)
        {
            return null;
        } else
        {
            return (xl)a.get(new xy(method));
        }
    }

    public Iterator iterator()
    {
        if (a != null)
        {
            return a.values().iterator();
        } else
        {
            return Collections.emptyList().iterator();
        }
    }
}
