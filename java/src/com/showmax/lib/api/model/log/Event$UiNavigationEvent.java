// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


// Referenced classes of package com.showmax.lib.api.model.log:
//            Event

public static final class  extends Enum
{

    private static final ASSET_DETAIL $VALUES[];
    public static final ASSET_DETAIL ASSET_DETAIL;
    private static final String EVENT_CATEGORY_NAME = "Nav";
    public static final ASSET_DETAIL MOVIES;
    public static final ASSET_DETAIL SEARCH;
    public static final ASSET_DETAIL SECTION;
    public static final ASSET_DETAIL SHOWS;

    public static String getEventCategory()
    {
        return "Nav";
    }

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/lib/api/model/log/Event$UiNavigationEvent, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public String toString()
    {
        switch (howmax.lib.api.model.log.Event.UiNavigationEvent[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "Section";

        case 2: // '\002'
            return "Search";

        case 3: // '\003'
            return "Movies";

        case 4: // '\004'
            return "Shows";

        case 5: // '\005'
            return "AssetDetail";
        }
    }

    static 
    {
        SECTION = new <init>("SECTION", 0);
        SEARCH = new <init>("SEARCH", 1);
        MOVIES = new <init>("MOVIES", 2);
        SHOWS = new <init>("SHOWS", 3);
        ASSET_DETAIL = new <init>("ASSET_DETAIL", 4);
        $VALUES = (new .VALUES[] {
            SECTION, SEARCH, MOVIES, SHOWS, ASSET_DETAIL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
