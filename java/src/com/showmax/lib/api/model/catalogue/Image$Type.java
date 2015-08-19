// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Image

public static final class  extends Enum
{

    private static final PICK $VALUES[];
    public static final PICK HERO;
    public static final PICK PICK;
    public static final PICK POSTER;
    private static PICK allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Image$Type, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        POSTER = new <init>("POSTER", 0);
        HERO = new <init>("HERO", 1);
        PICK = new <init>("PICK", 2);
        $VALUES = (new .VALUES[] {
            POSTER, HERO, PICK
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
