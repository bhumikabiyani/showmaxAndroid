// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;


// Referenced classes of package com.showmax.app.util:
//            MauFlurry

public static final class  extends Enum
{

    private static final MENU_COLLAPSE $VALUES[];
    public static final MENU_COLLAPSE ALL_MOVIES;
    public static final MENU_COLLAPSE ALL_TV_SHOWS;
    public static final MENU_COLLAPSE APP_CLOSE;
    public static final MENU_COLLAPSE APP_START;
    public static final MENU_COLLAPSE BOLLYWOOD;
    public static final MENU_COLLAPSE DETAIL_CLOSE;
    public static final MENU_COLLAPSE DETAIL_OPEN;
    public static final MENU_COLLAPSE GENRE_MOVIES;
    public static final MENU_COLLAPSE GENRE_TV_SHOWS;
    public static final MENU_COLLAPSE HOLLYWOOD;
    public static final MENU_COLLAPSE JAZWOOD;
    public static final MENU_COLLAPSE KIDS;
    public static final MENU_COLLAPSE LANGUAGE_SELECTION;
    public static final MENU_COLLAPSE MENU_COLLAPSE;
    public static final MENU_COLLAPSE MENU_EXPAND;
    public static final MENU_COLLAPSE MY_FLIX;
    public static final MENU_COLLAPSE PLAYBACK_CONTENT;
    public static final MENU_COLLAPSE PLAYBACK_EXIT;
    public static final MENU_COLLAPSE PLAYBACK_TRAILER;
    public static final MENU_COLLAPSE SEARCH;
    public static final MENU_COLLAPSE SIGN_IN;
    private static final String STR_ALL_MOVIES = "navAllMovies";
    private static final String STR_ALL_TV_SHOWS = "navAllShows";
    private static final String STR_APP_CLOSE = "navAppClosed";
    private static final String STR_APP_START = "navAppStarted";
    private static final String STR_BOLLYWOOD = "navBollywood";
    private static final String STR_DETAIL_CLOSE = "navDetailClosed";
    private static final String STR_DETAIL_OPEN = "navDetailOpened";
    private static final String STR_GENRE_MOVIES = "navGenreMovies";
    private static final String STR_GENRE_TV_SHOWS = "navGenreShows";
    private static final String STR_HOLLYWOOD = "navHollywood";
    private static final String STR_JAZWOOD = "navJazwood";
    private static final String STR_KIDS = "navKidSection";
    private static final String STR_LANGUAGE_SELECTION = "navLanguageSection";
    private static final String STR_MENU_COLLAPSE = "actionMenuCollapse";
    private static final String STR_MENU_EXPAND = "actionMenuExpand";
    private static final String STR_MY_FLIX = "navPersonalSection";
    private static final String STR_PLAYBACK_CONTENT = "navPlaybackContent";
    private static final String STR_PLAYBACK_EXIT = "navPlaybackExit";
    private static final String STR_PLAYBACK_TRAILER = "navPlaybackTrailer";
    private static final String STR_SEARCH = "navSearchSection";
    private static final String STR_SIGN_IN = "navLoginSection";
    private static MENU_COLLAPSE allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/app/util/MauFlurry$NavigationEvent, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        if (equals(APP_START))
        {
            return "navAppStarted";
        }
        if (equals(APP_CLOSE))
        {
            return "navAppClosed";
        }
        if (equals(HOLLYWOOD))
        {
            return "navHollywood";
        }
        if (equals(JAZWOOD))
        {
            return "navJazwood";
        }
        if (equals(BOLLYWOOD))
        {
            return "navBollywood";
        }
        if (equals(KIDS))
        {
            return "navKidSection";
        }
        if (equals(SEARCH))
        {
            return "navSearchSection";
        }
        if (equals(ALL_MOVIES))
        {
            return "navAllMovies";
        }
        if (equals(GENRE_MOVIES))
        {
            return "navGenreMovies";
        }
        if (equals(ALL_TV_SHOWS))
        {
            return "navAllShows";
        }
        if (equals(GENRE_TV_SHOWS))
        {
            return "navGenreShows";
        }
        if (equals(MY_FLIX))
        {
            return "navPersonalSection";
        }
        if (equals(LANGUAGE_SELECTION))
        {
            return "navLanguageSection";
        }
        if (equals(SIGN_IN))
        {
            return "navLoginSection";
        }
        if (equals(DETAIL_OPEN))
        {
            return "navDetailOpened";
        }
        if (equals(DETAIL_CLOSE))
        {
            return "navDetailClosed";
        }
        if (equals(PLAYBACK_TRAILER))
        {
            return "navPlaybackTrailer";
        }
        if (equals(PLAYBACK_CONTENT))
        {
            return "navPlaybackContent";
        }
        if (equals(PLAYBACK_EXIT))
        {
            return "navPlaybackExit";
        }
        if (equals(MENU_EXPAND))
        {
            return "actionMenuExpand";
        }
        if (equals(MENU_COLLAPSE))
        {
            return "actionMenuCollapse";
        } else
        {
            return "null";
        }
    }

    static 
    {
        APP_START = new <init>("APP_START", 0);
        APP_CLOSE = new <init>("APP_CLOSE", 1);
        HOLLYWOOD = new <init>("HOLLYWOOD", 2);
        JAZWOOD = new <init>("JAZWOOD", 3);
        BOLLYWOOD = new <init>("BOLLYWOOD", 4);
        KIDS = new <init>("KIDS", 5);
        SEARCH = new <init>("SEARCH", 6);
        ALL_MOVIES = new <init>("ALL_MOVIES", 7);
        GENRE_MOVIES = new <init>("GENRE_MOVIES", 8);
        ALL_TV_SHOWS = new <init>("ALL_TV_SHOWS", 9);
        GENRE_TV_SHOWS = new <init>("GENRE_TV_SHOWS", 10);
        MY_FLIX = new <init>("MY_FLIX", 11);
        LANGUAGE_SELECTION = new <init>("LANGUAGE_SELECTION", 12);
        SIGN_IN = new <init>("SIGN_IN", 13);
        DETAIL_OPEN = new <init>("DETAIL_OPEN", 14);
        DETAIL_CLOSE = new <init>("DETAIL_CLOSE", 15);
        PLAYBACK_TRAILER = new <init>("PLAYBACK_TRAILER", 16);
        PLAYBACK_CONTENT = new <init>("PLAYBACK_CONTENT", 17);
        PLAYBACK_EXIT = new <init>("PLAYBACK_EXIT", 18);
        MENU_EXPAND = new <init>("MENU_EXPAND", 19);
        MENU_COLLAPSE = new <init>("MENU_COLLAPSE", 20);
        $VALUES = (new .VALUES[] {
            APP_START, APP_CLOSE, HOLLYWOOD, JAZWOOD, BOLLYWOOD, KIDS, SEARCH, ALL_MOVIES, GENRE_MOVIES, ALL_TV_SHOWS, 
            GENRE_TV_SHOWS, MY_FLIX, LANGUAGE_SELECTION, SIGN_IN, DETAIL_OPEN, DETAIL_CLOSE, PLAYBACK_TRAILER, PLAYBACK_CONTENT, PLAYBACK_EXIT, MENU_EXPAND, 
            MENU_COLLAPSE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
