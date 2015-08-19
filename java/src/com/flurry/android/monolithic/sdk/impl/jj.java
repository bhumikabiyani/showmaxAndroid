// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashSet;
import java.util.Set;

final class jj extends ThreadLocal
{

    jj()
    {
    }

    protected Set a()
    {
        return new HashSet();
    }

    protected Object initialValue()
    {
        return a();
    }
}
