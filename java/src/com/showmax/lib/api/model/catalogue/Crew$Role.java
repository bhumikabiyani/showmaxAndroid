// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Crew

public static final class  extends Enum
{

    private static final COMPOSER $VALUES[];
    public static final COMPOSER COMPOSER;
    public static final COMPOSER DIRECTOR;
    public static final COMPOSER WRITER;
    private static COMPOSER allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Crew$Role, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        DIRECTOR = new <init>("DIRECTOR", 0);
        WRITER = new <init>("WRITER", 1);
        COMPOSER = new <init>("COMPOSER", 2);
        $VALUES = (new .VALUES[] {
            DIRECTOR, WRITER, COMPOSER
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
