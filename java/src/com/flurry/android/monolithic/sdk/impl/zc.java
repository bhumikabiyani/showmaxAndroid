// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xl, qw, abl, ru, 
//            or

public class zc
{

    protected final Method a;
    protected final abl b;

    public zc(xl xl1, abl abl1)
    {
        a = xl1.e();
        b = abl1;
    }

    public void a(ru ru)
        throws qw
    {
        b.a(ru);
    }

    public void a(Object obj, or or, ru ru)
        throws Exception
    {
        obj = a.invoke(obj, new Object[0]);
        if (obj == null)
        {
            return;
        }
        if (!(obj instanceof Map))
        {
            throw new qw((new StringBuilder()).append("Value returned by 'any-getter' (").append(a.getName()).append("()) not java.util.Map but ").append(obj.getClass().getName()).toString());
        } else
        {
            b.b((Map)obj, or, ru);
            return;
        }
    }
}
