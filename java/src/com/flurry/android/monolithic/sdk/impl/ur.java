// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.regex.Pattern;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class ur extends um
{

    public ur()
    {
        super(java/util/regex/Pattern);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected Pattern b(String s, qm qm)
        throws IllegalArgumentException
    {
        return Pattern.compile(s);
    }
}
