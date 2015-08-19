// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xz, xs

class xu
    implements xz
{

    private xu()
    {
    }

    xu(xs xs)
    {
        this();
    }

    public boolean a(Method method)
    {
        while (Modifier.isStatic(method.getModifiers()) || method.getParameterTypes().length > 2) 
        {
            return false;
        }
        return true;
    }
}
