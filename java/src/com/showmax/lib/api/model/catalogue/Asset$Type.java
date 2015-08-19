// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public static final class  extends Enum
{

    private static final EPISODE $VALUES[];
    public static final EPISODE EPISODE;
    public static final EPISODE MOVIE;
    public static final EPISODE SEASON;
    public static final EPISODE TV_SERIES;
    private static EPISODE allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues parse(String s)
    {
        if (s != null && !s.isEmpty())
        {
            if (s.equals(MOVIE.toString()))
            {
                return MOVIE;
            }
            if (s.equals(TV_SERIES.toString()))
            {
                return TV_SERIES;
            }
            if (s.equals(SEASON.toString()))
            {
                return SEASON;
            }
            if (s.equals(EPISODE.toString()))
            {
                return EPISODE;
            }
        }
        return null;
    }

    public static EPISODE valueOf(String s)
    {
        return (EPISODE)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$Type, s);
    }

    public static EPISODE[] values()
    {
        return (EPISODE[])$VALUES.clone();
    }

    public String toString()
    {
        switch (itchMap.com.showmax.lib.api.model.catalogue.Asset.Type[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "movie";

        case 2: // '\002'
            return "tv_series";

        case 3: // '\003'
            return "season";

        case 4: // '\004'
            return "episode";
        }
    }

    static 
    {
        MOVIE = new <init>("MOVIE", 0);
        TV_SERIES = new <init>("TV_SERIES", 1);
        SEASON = new <init>("SEASON", 2);
        EPISODE = new <init>("EPISODE", 3);
        $VALUES = (new .VALUES[] {
            MOVIE, TV_SERIES, SEASON, EPISODE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
