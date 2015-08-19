// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, pb, 
//            qm

public class ue extends wv
{

    public ue()
    {
        super(java/lang/Class);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Class b(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = ow1.e();
        if (obj == pb.h)
        {
            obj = ow1.k();
            if (((String) (obj)).indexOf('.') < 0)
            {
                if ("int".equals(obj))
                {
                    return Integer.TYPE;
                }
                if ("long".equals(obj))
                {
                    return Long.TYPE;
                }
                if ("float".equals(obj))
                {
                    return Float.TYPE;
                }
                if ("double".equals(obj))
                {
                    return Double.TYPE;
                }
                if ("boolean".equals(obj))
                {
                    return Boolean.TYPE;
                }
                if ("byte".equals(obj))
                {
                    return Byte.TYPE;
                }
                if ("char".equals(obj))
                {
                    return Character.TYPE;
                }
                if ("short".equals(obj))
                {
                    return Short.TYPE;
                }
                if ("void".equals(obj))
                {
                    return Void.TYPE;
                }
            }
            try
            {
                ow1 = Class.forName(ow1.k());
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.a(q, ow1);
            }
            return ow1;
        } else
        {
            throw qm1.a(q, ((pb) (obj)));
        }
    }
}
