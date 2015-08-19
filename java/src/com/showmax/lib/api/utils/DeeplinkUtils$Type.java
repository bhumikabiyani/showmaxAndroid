// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;


// Referenced classes of package com.showmax.lib.api.utils:
//            DeeplinkUtils

public static final class  extends Enum
{

    private static final START_IAP $VALUES[];
    public static final START_IAP CLOSE_WEBVIEW;
    public static final START_IAP EPISODE;
    public static final START_IAP HOME_TAB;
    public static final START_IAP MOVIE;
    public static final START_IAP SEARCH;
    public static final START_IAP SEASON;
    public static final START_IAP START_IAP;
    public static final START_IAP TV_SERIE;
    private static START_IAP allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/utils/DeeplinkUtils$Type, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        SEARCH = new <init>("SEARCH", 0);
        HOME_TAB = new <init>("HOME_TAB", 1);
        MOVIE = new <init>("MOVIE", 2);
        TV_SERIE = new <init>("TV_SERIE", 3);
        SEASON = new <init>("SEASON", 4);
        EPISODE = new <init>("EPISODE", 5);
        CLOSE_WEBVIEW = new <init>("CLOSE_WEBVIEW", 6);
        START_IAP = new <init>("START_IAP", 7);
        $VALUES = (new .VALUES[] {
            SEARCH, HOME_TAB, MOVIE, TV_SERIE, SEASON, EPISODE, CLOSE_WEBVIEW, START_IAP
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
