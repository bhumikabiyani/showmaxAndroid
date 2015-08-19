// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.IdentityHashMap;
import java.util.Map;

final class jk extends ThreadLocal
{

    jk()
    {
    }

    protected Map a()
    {
        return new IdentityHashMap();
    }

    protected Object initialValue()
    {
        return a();
    }
}
