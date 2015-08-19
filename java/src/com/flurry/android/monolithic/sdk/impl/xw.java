// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xz

public class xw
    implements xz
{

    public xw()
    {
    }

    public boolean a(Method method)
    {
        if (Modifier.isStatic(method.getModifiers()))
        {
            return false;
        }
        switch (method.getParameterTypes().length)
        {
        default:
            return false;

        case 1: // '\001'
            return true;

        case 2: // '\002'
            return true;
        }
    }
}
