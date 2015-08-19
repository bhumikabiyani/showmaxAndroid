// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, ru, or

public class acq extends abt
{

    static final acq a = new acq();

    public acq()
    {
        super(java/lang/Object);
    }

    public void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        if (obj instanceof Date)
        {
            ru1.b((Date)obj, or1);
            return;
        } else
        {
            or1.a(obj.toString());
            return;
        }
    }

}
