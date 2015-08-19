// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aay, oq, ru, ra, 
//            afm, qc, rx, abc, 
//            or

public class abg extends aay
{

    public abg(afm afm, qc qc)
    {
        super(java/util/EnumSet, afm, true, null, qc, null);
    }

    public abc a(rx rx)
    {
        return this;
    }

    public void a(EnumSet enumset, or or, ru ru1)
        throws IOException, oq
    {
        Object obj = d;
        Iterator iterator = enumset.iterator();
        for (enumset = ((EnumSet) (obj)); iterator.hasNext(); enumset = ((EnumSet) (obj)))
        {
            Enum enum = (Enum)iterator.next();
            obj = enumset;
            if (enumset == null)
            {
                obj = ru1.a(enum.getDeclaringClass(), e);
            }
            ((ra) (obj)).a(enum, or, ru1);
        }

    }

    public void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((EnumSet)obj, or, ru1);
    }
}
