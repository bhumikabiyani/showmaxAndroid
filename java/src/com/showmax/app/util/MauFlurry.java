// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.content.Context;
import com.flurry.android.FlurryAgent;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Build;
import com.showmax.app.Defs;

public class MauFlurry
    implements Defs
{
    public static final class ActionEvent extends Enum
    {

        private static final ActionEvent $VALUES[];
        public static final ActionEvent LANGUAGE_SWITCH;
        public static final ActionEvent PLAYBACK_PAUSE;
        public static final ActionEvent PLAYBACK_RESUME;
        public static final ActionEvent PLAYBACK_SEEK;
        public static final ActionEvent PLAYBACK_SUBTITLES_CHANGE;
        public static final ActionEvent SIGN_IN;
        public static final ActionEvent SIGN_OUT;
        public static final ActionEvent SIGN_UP;
        private static final String STR_LANGUAGE_SWITCH = "actionLanguageSwitch";
        private static final String STR_PLAYBACK_PAUSE = "actionPlaybackPaused";
        private static final String STR_PLAYBACK_RESUME = "actionPlaybackResumed";
        private static final String STR_PLAYBACK_SEEK = "actionPlaybackSeek";
        private static final String STR_PLAYBACK_SUBTITLES_CHANGE = "actionPlaybackSubtitlesChange";
        private static final String STR_SIGN_IN = "actionLogIn";
        private static final String STR_SIGN_OUT = "actionLogOut";
        private static final String STR_SIGN_UP = "actionSignUp";
        private static ActionEvent allValues[] = values();

        public static ActionEvent fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static ActionEvent valueOf(String s)
        {
            return (ActionEvent)Enum.valueOf(com/showmax/app/util/MauFlurry$ActionEvent, s);
        }

        public static ActionEvent[] values()
        {
            return (ActionEvent[])$VALUES.clone();
        }

        public String toString()
        {
            if (equals(SIGN_IN))
            {
                return "actionLogIn";
            }
            if (equals(SIGN_OUT))
            {
                return "actionLogOut";
            }
            if (equals(SIGN_UP))
            {
                return "actionSignUp";
            }
            if (equals(LANGUAGE_SWITCH))
            {
                return "actionLanguageSwitch";
            }
            if (equals(PLAYBACK_PAUSE))
            {
                return "actionPlaybackPaused";
            }
            if (equals(PLAYBACK_RESUME))
            {
                return "actionPlaybackResumed";
            }
            if (equals(PLAYBACK_SEEK))
            {
                return "actionPlaybackSeek";
            }
            if (equals(PLAYBACK_SUBTITLES_CHANGE))
            {
                return "actionPlaybackSubtitlesChange";
            } else
            {
                return "null";
            }
        }

        static 
        {
            SIGN_IN = new ActionEvent("SIGN_IN", 0);
            SIGN_OUT = new ActionEvent("SIGN_OUT", 1);
            SIGN_UP = new ActionEvent("SIGN_UP", 2);
            LANGUAGE_SWITCH = new ActionEvent("LANGUAGE_SWITCH", 3);
            PLAYBACK_PAUSE = new ActionEvent("PLAYBACK_PAUSE", 4);
            PLAYBACK_RESUME = new ActionEvent("PLAYBACK_RESUME", 5);
            PLAYBACK_SEEK = new ActionEvent("PLAYBACK_SEEK", 6);
            PLAYBACK_SUBTITLES_CHANGE = new ActionEvent("PLAYBACK_SUBTITLES_CHANGE", 7);
            $VALUES = (new ActionEvent[] {
                SIGN_IN, SIGN_OUT, SIGN_UP, LANGUAGE_SWITCH, PLAYBACK_PAUSE, PLAYBACK_RESUME, PLAYBACK_SEEK, PLAYBACK_SUBTITLES_CHANGE
            });
        }

        private ActionEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class NavigationEvent extends Enum
    {

        private static final NavigationEvent $VALUES[];
        public static final NavigationEvent ALL_MOVIES;
        public static final NavigationEvent ALL_TV_SHOWS;
        public static final NavigationEvent APP_CLOSE;
        public static final NavigationEvent APP_START;
        public static final NavigationEvent BOLLYWOOD;
        public static final NavigationEvent DETAIL_CLOSE;
        public static final NavigationEvent DETAIL_OPEN;
        public static final NavigationEvent GENRE_MOVIES;
        public static final NavigationEvent GENRE_TV_SHOWS;
        public static final NavigationEvent HOLLYWOOD;
        public static final NavigationEvent JAZWOOD;
        public static final NavigationEvent KIDS;
        public static final NavigationEvent LANGUAGE_SELECTION;
        public static final NavigationEvent MENU_COLLAPSE;
        public static final NavigationEvent MENU_EXPAND;
        public static final NavigationEvent MY_FLIX;
        public static final NavigationEvent PLAYBACK_CONTENT;
        public static final NavigationEvent PLAYBACK_EXIT;
        public static final NavigationEvent PLAYBACK_TRAILER;
        public static final NavigationEvent SEARCH;
        public static final NavigationEvent SIGN_IN;
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
        private static NavigationEvent allValues[] = values();

        public static NavigationEvent fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static NavigationEvent valueOf(String s)
        {
            return (NavigationEvent)Enum.valueOf(com/showmax/app/util/MauFlurry$NavigationEvent, s);
        }

        public static NavigationEvent[] values()
        {
            return (NavigationEvent[])$VALUES.clone();
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
            APP_START = new NavigationEvent("APP_START", 0);
            APP_CLOSE = new NavigationEvent("APP_CLOSE", 1);
            HOLLYWOOD = new NavigationEvent("HOLLYWOOD", 2);
            JAZWOOD = new NavigationEvent("JAZWOOD", 3);
            BOLLYWOOD = new NavigationEvent("BOLLYWOOD", 4);
            KIDS = new NavigationEvent("KIDS", 5);
            SEARCH = new NavigationEvent("SEARCH", 6);
            ALL_MOVIES = new NavigationEvent("ALL_MOVIES", 7);
            GENRE_MOVIES = new NavigationEvent("GENRE_MOVIES", 8);
            ALL_TV_SHOWS = new NavigationEvent("ALL_TV_SHOWS", 9);
            GENRE_TV_SHOWS = new NavigationEvent("GENRE_TV_SHOWS", 10);
            MY_FLIX = new NavigationEvent("MY_FLIX", 11);
            LANGUAGE_SELECTION = new NavigationEvent("LANGUAGE_SELECTION", 12);
            SIGN_IN = new NavigationEvent("SIGN_IN", 13);
            DETAIL_OPEN = new NavigationEvent("DETAIL_OPEN", 14);
            DETAIL_CLOSE = new NavigationEvent("DETAIL_CLOSE", 15);
            PLAYBACK_TRAILER = new NavigationEvent("PLAYBACK_TRAILER", 16);
            PLAYBACK_CONTENT = new NavigationEvent("PLAYBACK_CONTENT", 17);
            PLAYBACK_EXIT = new NavigationEvent("PLAYBACK_EXIT", 18);
            MENU_EXPAND = new NavigationEvent("MENU_EXPAND", 19);
            MENU_COLLAPSE = new NavigationEvent("MENU_COLLAPSE", 20);
            $VALUES = (new NavigationEvent[] {
                APP_START, APP_CLOSE, HOLLYWOOD, JAZWOOD, BOLLYWOOD, KIDS, SEARCH, ALL_MOVIES, GENRE_MOVIES, ALL_TV_SHOWS, 
                GENRE_TV_SHOWS, MY_FLIX, LANGUAGE_SELECTION, SIGN_IN, DETAIL_OPEN, DETAIL_CLOSE, PLAYBACK_TRAILER, PLAYBACK_CONTENT, PLAYBACK_EXIT, MENU_EXPAND, 
                MENU_COLLAPSE
            });
        }

        private NavigationEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class SystemEvent extends Enum
    {

        private static final SystemEvent $VALUES[];
        public static final SystemEvent APP_BACKGROUNDED;
        public static final SystemEvent APP_RESUMED;
        public static final SystemEvent CONNECTION_LOST;
        public static final SystemEvent CONNECTION_RESTORED;
        public static final SystemEvent PLAYBACK_LONG_BUFFERING;
        public static final SystemEvent SESSION_EXPIRED;
        private static final String STR_APP_BACKGROUNDED = "applicationToBackground";
        private static final String STR_APP_RESUMED = "applicationToForeground";
        private static final String STR_CONNECTION_LOST = "eventConnectioLost";
        private static final String STR_CONNECTION_RESTORED = "eventConnectioRestored";
        private static final String STR_PLAYBACK_LONG_BUFFERING = "eventLongBuffering";
        private static final String STR_SESSION_EXPIRED = "eventSessionExpired";
        private static final String STR_SUBSCRIPTION_EXPIRED = "eventSubscriptionExpired";
        public static final SystemEvent SUBSCRIPTION_EXPIRED;
        private static SystemEvent allValues[] = values();

        public static SystemEvent fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static SystemEvent valueOf(String s)
        {
            return (SystemEvent)Enum.valueOf(com/showmax/app/util/MauFlurry$SystemEvent, s);
        }

        public static SystemEvent[] values()
        {
            return (SystemEvent[])$VALUES.clone();
        }

        public String toString()
        {
            if (equals(CONNECTION_LOST))
            {
                return "eventConnectioLost";
            }
            if (equals(CONNECTION_RESTORED))
            {
                return "eventConnectioRestored";
            }
            if (equals(PLAYBACK_LONG_BUFFERING))
            {
                return "eventLongBuffering";
            }
            if (equals(SESSION_EXPIRED))
            {
                return "eventSessionExpired";
            }
            if (equals(SUBSCRIPTION_EXPIRED))
            {
                return "eventSubscriptionExpired";
            }
            if (equals(APP_BACKGROUNDED))
            {
                return "applicationToBackground";
            }
            if (equals(APP_RESUMED))
            {
                return "applicationToForeground";
            } else
            {
                return "null";
            }
        }

        static 
        {
            CONNECTION_LOST = new SystemEvent("CONNECTION_LOST", 0);
            CONNECTION_RESTORED = new SystemEvent("CONNECTION_RESTORED", 1);
            PLAYBACK_LONG_BUFFERING = new SystemEvent("PLAYBACK_LONG_BUFFERING", 2);
            SESSION_EXPIRED = new SystemEvent("SESSION_EXPIRED", 3);
            SUBSCRIPTION_EXPIRED = new SystemEvent("SUBSCRIPTION_EXPIRED", 4);
            APP_BACKGROUNDED = new SystemEvent("APP_BACKGROUNDED", 5);
            APP_RESUMED = new SystemEvent("APP_RESUMED", 6);
            $VALUES = (new SystemEvent[] {
                CONNECTION_LOST, CONNECTION_RESTORED, PLAYBACK_LONG_BUFFERING, SESSION_EXPIRED, SUBSCRIPTION_EXPIRED, APP_BACKGROUNDED, APP_RESUMED
            });
        }

        private SystemEvent(String s, int i)
        {
            super(s, i);
        }
    }


    private static boolean mInitiated = false;

    public MauFlurry()
    {
    }

    public static void closeSession(Context context)
    {
        if (Build.getInstance().FLURRY)
        {
            MauLog.d("[MauFlurry]::[closeSession]");
            FlurryAgent.onEndSession(context);
        }
    }

    public static void onAppToBackground(Context context)
    {
        sendEvent(context, SystemEvent.APP_BACKGROUNDED.toString());
    }

    public static void onAppToForeground(Context context)
    {
        sendEvent(context, SystemEvent.APP_RESUMED.toString());
    }

    public static void onConnectionLost(Context context)
    {
        sendEvent(context, SystemEvent.CONNECTION_LOST.toString());
    }

    public static void onConnectionRestore(Context context)
    {
        sendEvent(context, SystemEvent.CONNECTION_RESTORED.toString());
    }

    public static void onLanguageSwitch(Context context)
    {
        sendEvent(context, ActionEvent.LANGUAGE_SWITCH.toString());
    }

    public static void onNavAllMovies(Context context)
    {
        sendEvent(context, NavigationEvent.ALL_MOVIES.toString());
    }

    public static void onNavAllTvShows(Context context)
    {
        sendEvent(context, NavigationEvent.ALL_TV_SHOWS.toString());
    }

    public static void onNavAppClose(Context context)
    {
        sendEvent(context, NavigationEvent.APP_CLOSE.toString());
    }

    public static void onNavAppStart(Context context)
    {
        sendEvent(context, NavigationEvent.APP_START.toString());
    }

    public static void onNavBollywood(Context context)
    {
        sendEvent(context, NavigationEvent.BOLLYWOOD.toString());
    }

    public static void onNavDetailClose(Context context)
    {
        sendEvent(context, NavigationEvent.DETAIL_CLOSE.toString());
    }

    public static void onNavDetailOpen(Context context)
    {
        sendEvent(context, NavigationEvent.DETAIL_OPEN.toString());
    }

    public static void onNavGenreMovies(Context context)
    {
        sendEvent(context, NavigationEvent.GENRE_MOVIES.toString());
    }

    public static void onNavGenreTvShows(Context context)
    {
        sendEvent(context, NavigationEvent.GENRE_TV_SHOWS.toString());
    }

    public static void onNavHollywood(Context context)
    {
        sendEvent(context, NavigationEvent.HOLLYWOOD.toString());
    }

    public static void onNavJazwood(Context context)
    {
        sendEvent(context, NavigationEvent.JAZWOOD.toString());
    }

    public static void onNavKids(Context context)
    {
        sendEvent(context, NavigationEvent.KIDS.toString());
    }

    public static void onNavLanguageSelection(Context context)
    {
        sendEvent(context, NavigationEvent.LANGUAGE_SELECTION.toString());
    }

    public static void onNavMenuCollapse(Context context)
    {
        sendEvent(context, NavigationEvent.MENU_COLLAPSE.toString());
    }

    public static void onNavMenuExpand(Context context)
    {
        sendEvent(context, NavigationEvent.MENU_EXPAND.toString());
    }

    public static void onNavMyFlix(Context context)
    {
        sendEvent(context, NavigationEvent.MY_FLIX.toString());
    }

    public static void onNavPlaybackContent(Context context)
    {
        sendEvent(context, NavigationEvent.PLAYBACK_CONTENT.toString());
    }

    public static void onNavPlaybackExit(Context context)
    {
        sendEvent(context, NavigationEvent.PLAYBACK_EXIT.toString());
    }

    public static void onNavPlaybackTrailer(Context context)
    {
        sendEvent(context, NavigationEvent.PLAYBACK_TRAILER.toString());
    }

    public static void onNavSearch(Context context)
    {
        sendEvent(context, NavigationEvent.SEARCH.toString());
    }

    public static void onNavSignIn(Context context)
    {
        sendEvent(context, NavigationEvent.SIGN_IN.toString());
    }

    public static void onPlaybackLongBuffering(Context context)
    {
        sendEvent(context, SystemEvent.PLAYBACK_LONG_BUFFERING.toString());
    }

    public static void onPlaybackPause(Context context)
    {
        sendEvent(context, ActionEvent.PLAYBACK_PAUSE.toString());
    }

    public static void onPlaybackResume(Context context)
    {
        sendEvent(context, ActionEvent.PLAYBACK_RESUME.toString());
    }

    public static void onPlaybackSeek(Context context)
    {
        sendEvent(context, ActionEvent.PLAYBACK_SEEK.toString());
    }

    public static void onPlaybackSubtitleChange(Context context)
    {
        sendEvent(context, ActionEvent.PLAYBACK_SUBTITLES_CHANGE.toString());
    }

    public static void onSessionExpired(Context context)
    {
        sendEvent(context, SystemEvent.SESSION_EXPIRED.toString());
    }

    public static void onSignIn(Context context)
    {
        sendEvent(context, ActionEvent.SIGN_IN.toString());
    }

    public static void onSignOut(Context context)
    {
        sendEvent(context, ActionEvent.SIGN_OUT.toString());
    }

    public static void onSignUp(Context context)
    {
        sendEvent(context, ActionEvent.SIGN_UP.toString());
    }

    public static void onSubscriptionExpired(Context context)
    {
        sendEvent(context, SystemEvent.SUBSCRIPTION_EXPIRED.toString());
    }

    private static void sendEvent(Context context, String s)
    {
        if (Build.getInstance().FLURRY)
        {
            FlurryAgent.logEvent(s);
        }
    }

    public static void startSession(Context context)
    {
        if (Build.getInstance().FLURRY)
        {
            if (!mInitiated)
            {
                FlurryAgent.setLogEvents(true);
                mInitiated = true;
            }
            MauLog.d("[MauFlurry]::[startSession]");
            FlurryAgent.onStartSession(context, Build.getInstance().API_KEY_FLURRY);
        }
    }

}
