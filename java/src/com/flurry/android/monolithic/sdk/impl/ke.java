// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.StringReader;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kc, ov, ji, rk, 
//            kl, op, ow

public class ke
{

    private kc a;
    private boolean b;

    public ke()
    {
        a = new kc();
        b = true;
    }

    private ji a(ow ow)
        throws IOException
    {
        boolean flag = ((Boolean)ji.q().get()).booleanValue();
        ji.q().set(Boolean.valueOf(b));
        ow = ji.a(ji.b.a(ow), a);
        ji.q().set(Boolean.valueOf(flag));
        return ow;
        ow;
        throw new kl(ow);
        ow;
        ji.q().set(Boolean.valueOf(flag));
        throw ow;
    }

    public ji a(String s)
    {
        try
        {
            s = a(ji.a.a(new StringReader(s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new kl(s);
        }
        return s;
    }
}
