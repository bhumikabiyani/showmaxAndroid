// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nx

final class ky extends ThreadLocal
{

    ky()
    {
    }

    protected Map a()
    {
        return new nx();
    }

    protected Object initialValue()
    {
        return a();
    }
}
