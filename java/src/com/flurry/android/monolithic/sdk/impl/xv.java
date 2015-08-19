// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xw, adz

public final class xv extends xw
{

    public xv()
    {
    }

    public boolean a(Method method)
    {
        if (!super.a(method))
        {
            if (!adz.a(method))
            {
                return false;
            }
            method = method.getReturnType();
            if (!java/util/Collection.isAssignableFrom(method) && !java/util/Map.isAssignableFrom(method))
            {
                return false;
            }
        }
        return true;
    }
}
