// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class  extends Enum
{

    private static final TV_SERIES $VALUES[];
    public static final TV_SERIES MOVIES;
    public static final TV_SERIES TV_SERIES;
    private static TV_SERIES allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$CategoryType, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (com.showmax.lib.api.io.ApiConstants.CategoryType[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "movies";

        case 2: // '\002'
            return "tv";
        }
    }

    static 
    {
        MOVIES = new <init>("MOVIES", 0);
        TV_SERIES = new <init>("TV_SERIES", 1);
        $VALUES = (new .VALUES[] {
            MOVIES, TV_SERIES
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
