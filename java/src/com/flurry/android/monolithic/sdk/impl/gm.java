// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gb, gh, gf

public class gm extends gb
{

    public gm(Context context, String s)
    {
        a = new gh(context, s);
    }

    public boolean c(String s, String s1, String s2, String s3)
    {
        if (!s1.equals(a.a(s, s2, s3)))
        {
            a(s2, s, s1);
            a.a(s, s1, s2, s3);
            return true;
        } else
        {
            return false;
        }
    }
}
