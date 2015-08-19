// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Video

public static final class  extends Enum
{

    private static final TRAILER $VALUES[];
    public static final TRAILER MAIN;
    public static final TRAILER TRAILER;
    private static TRAILER allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Video$Type, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        MAIN = new <init>("MAIN", 0);
        TRAILER = new <init>("TRAILER", 1);
        $VALUES = (new .VALUES[] {
            MAIN, TRAILER
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
