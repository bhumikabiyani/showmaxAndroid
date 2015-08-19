// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            acq, acu, afm, act, 
//            acs, ra

public class acr
{

    protected static final ra a = new acq();
    protected static final ra b = new acu();

    public static ra a(afm afm1)
    {
        if (afm1 == null)
        {
            return a;
        }
        afm1 = afm1.p();
        if (afm1 == java/lang/String)
        {
            return b;
        }
        if (afm1 == java/lang/Object)
        {
            return a;
        }
        if (java/util/Date.isAssignableFrom(afm1))
        {
            return act.a;
        }
        if (java/util/Calendar.isAssignableFrom(afm1))
        {
            return acs.a;
        } else
        {
            return a;
        }
    }

}
