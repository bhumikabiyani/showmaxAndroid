// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public static final class A extends Enum
{

    private static final RTL $VALUES[];
    public static final RTL LTR;
    public static final RTL RTL;
    private static RTL allValues[] = values();

    public static A fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$MetadataDirection, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        LTR = new <init>("LTR", 0);
        RTL = new <init>("RTL", 1);
        $VALUES = (new .VALUES[] {
            LTR, RTL
        });
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
