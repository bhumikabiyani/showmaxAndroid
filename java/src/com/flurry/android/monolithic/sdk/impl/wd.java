// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, pb, 
//            qw, qm

public class wd extends wv
{

    public wd()
    {
        super(java/lang/StackTraceElement);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public StackTraceElement b(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = ow1.e();
        if (obj == pb.b)
        {
            obj = "";
            String s = "";
            String s1 = "";
            int i = -1;
            do
            {
                pb pb1 = ow1.c();
                if (pb1 == pb.c)
                {
                    break;
                }
                String s2 = ow1.g();
                if ("className".equals(s2))
                {
                    obj = ow1.k();
                } else
                if ("fileName".equals(s2))
                {
                    s1 = ow1.k();
                } else
                if ("lineNumber".equals(s2))
                {
                    if (pb1.c())
                    {
                        i = ow1.t();
                    } else
                    {
                        throw qw.a(ow1, (new StringBuilder()).append("Non-numeric token (").append(pb1).append(") for property 'lineNumber'").toString());
                    }
                } else
                if ("methodName".equals(s2))
                {
                    s = ow1.k();
                } else
                if (!"nativeMethod".equals(s2))
                {
                    a(ow1, qm1, q, s2);
                }
            } while (true);
            return new StackTraceElement(((String) (obj)), s, s1, i);
        } else
        {
            throw qm1.a(q, ((pb) (obj)));
        }
    }
}
