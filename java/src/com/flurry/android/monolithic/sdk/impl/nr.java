// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kx, nn, ji

public class nr extends kx
{

    public nr()
    {
        this(null, null, nn.b());
    }

    public nr(ji ji)
    {
        this(ji, ji, nn.b());
    }

    public nr(ji ji, ji ji1, nn nn1)
    {
        super(ji, ji1, nn1);
    }

    public nr(Class class1)
    {
        this(nn.b().a(class1));
    }

    protected Object a(String s, ji ji)
    {
        Class class1 = b().b(ji);
        if (class1 == null)
        {
            return super.a(s, ji);
        } else
        {
            return Enum.valueOf(class1, s);
        }
    }

    public nn b()
    {
        return (nn)a();
    }
}
