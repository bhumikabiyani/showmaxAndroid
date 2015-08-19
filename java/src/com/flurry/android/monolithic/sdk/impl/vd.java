// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vf, vg, vm, vk, 
//            vl, vj, vi, vn, 
//            vh, adk, qu

public class vd
{

    static final vd b = new vd();
    HashMap a;

    protected vd()
    {
        a = new HashMap();
        a(Boolean.TYPE, new vf());
        a(Byte.TYPE, new vg());
        a(Short.TYPE, new vm());
        a(Integer.TYPE, new vk());
        a(Long.TYPE, new vl());
        a(Float.TYPE, new vj());
        a(Double.TYPE, new vi());
        a(java/lang/String, new vn());
        a(Character.TYPE, new vh());
    }

    public static HashMap a()
    {
        return b.a;
    }

    private void a(Class class1, qu qu)
    {
        a.put(adk.a().a(class1), qu);
    }

}
