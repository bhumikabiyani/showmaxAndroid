// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adj, afm

public abstract class xg
{

    protected xg()
    {
    }

    public afm a(adj adj1)
    {
        return adj1.a(c());
    }

    public abstract Annotation a(Class class1);

    public abstract AnnotatedElement a();

    public abstract String b();

    public final boolean b(Class class1)
    {
        return a(class1) != null;
    }

    public abstract Type c();

    public abstract Class d();
}
