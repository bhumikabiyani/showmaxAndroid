// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Image

public static final class  extends Enum
{

    private static final PORTRAIT $VALUES[];
    public static final PORTRAIT LANDSCAPE;
    public static final PORTRAIT PORTRAIT;
    private static PORTRAIT allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Image$Orientation, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        LANDSCAPE = new <init>("LANDSCAPE", 0);
        PORTRAIT = new <init>("PORTRAIT", 1);
        $VALUES = (new .VALUES[] {
            LANDSCAPE, PORTRAIT
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
