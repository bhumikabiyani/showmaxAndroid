// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


public interface Event
{
    public static final class AppGeneralEvent extends Enum
    {

        private static final AppGeneralEvent $VALUES[];
        public static final AppGeneralEvent CLOSE;
        private static final String EVENT_CATEGORY_NAME = "App";
        public static final AppGeneralEvent FIRST_START;
        public static final AppGeneralEvent LANGUAGE_SET;
        public static final AppGeneralEvent RESUME;
        public static final AppGeneralEvent START;
        public static final AppGeneralEvent SUSPEND;

        public static String getEventCategory()
        {
            return "App";
        }

        public static AppGeneralEvent valueOf(String s)
        {
            return (AppGeneralEvent)Enum.valueOf(com/showmax/lib/api/model/log/Event$AppGeneralEvent, s);
        }

        public static AppGeneralEvent[] values()
        {
            return (AppGeneralEvent[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls1
            {

                static final int $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[];
                static final int $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[];
                static final int $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[];
                static final int $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[];
                static final int $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent = new int[ErrorEvent.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[ErrorEvent.API.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror24) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[ErrorEvent.EXCEPTION.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror23) { }
                    $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent = new int[UserEvent.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent[UserEvent.PAYMENT_ASSET_SUCCESS.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror22) { }
                    $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent = new int[PlaybackEvent.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.START.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror21) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.PAUSE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror20) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.RESUME.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror19) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.RESUME_UNDERRUN.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror18) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.BUFFER_UNDERRUN.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror17) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.SEEK.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror16) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.SUBTITLES.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror15) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.STOP.ordinal()] = 8;
                    }
                    catch (NoSuchFieldError nosuchfielderror14) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.PROFILE_CHANGE.ordinal()] = 9;
                    }
                    catch (NoSuchFieldError nosuchfielderror13) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.THROUGHPUT.ordinal()] = 10;
                    }
                    catch (NoSuchFieldError nosuchfielderror12) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[PlaybackEvent.FULLSCREEN.ordinal()] = 11;
                    }
                    catch (NoSuchFieldError nosuchfielderror11) { }
                    $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent = new int[UiNavigationEvent.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[UiNavigationEvent.SECTION.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror10) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[UiNavigationEvent.SEARCH.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror9) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[UiNavigationEvent.MOVIES.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[UiNavigationEvent.SHOWS.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[UiNavigationEvent.ASSET_DETAIL.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent = new int[AppGeneralEvent.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.FIRST_START.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.START.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.CLOSE.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.SUSPEND.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.RESUME.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[AppGeneralEvent.LANGUAGE_SET.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1..SwitchMap.com.showmax.lib.api.model.log.Event.AppGeneralEvent[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "FirstStart";

            case 2: // '\002'
                return "Start";

            case 3: // '\003'
                return "Close";

            case 4: // '\004'
                return "Suspend";

            case 5: // '\005'
                return "Resume";

            case 6: // '\006'
                return "LanguageSet";
            }
        }

        static 
        {
            FIRST_START = new AppGeneralEvent("FIRST_START", 0);
            START = new AppGeneralEvent("START", 1);
            CLOSE = new AppGeneralEvent("CLOSE", 2);
            SUSPEND = new AppGeneralEvent("SUSPEND", 3);
            RESUME = new AppGeneralEvent("RESUME", 4);
            LANGUAGE_SET = new AppGeneralEvent("LANGUAGE_SET", 5);
            $VALUES = (new AppGeneralEvent[] {
                FIRST_START, START, CLOSE, SUSPEND, RESUME, LANGUAGE_SET
            });
        }

        private AppGeneralEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ErrorEvent extends Enum
    {

        private static final ErrorEvent $VALUES[];
        public static final ErrorEvent API;
        private static final String EVENT_CATEGORY_NAME = "Error";
        public static final ErrorEvent EXCEPTION;

        public static String getEventCategory()
        {
            return "Error";
        }

        public static ErrorEvent valueOf(String s)
        {
            return (ErrorEvent)Enum.valueOf(com/showmax/lib/api/model/log/Event$ErrorEvent, s);
        }

        public static ErrorEvent[] values()
        {
            return (ErrorEvent[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.model.log.Event.ErrorEvent[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "Api";

            case 2: // '\002'
                return "Exception";
            }
        }

        static 
        {
            API = new ErrorEvent("API", 0);
            EXCEPTION = new ErrorEvent("EXCEPTION", 1);
            $VALUES = (new ErrorEvent[] {
                API, EXCEPTION
            });
        }

        private ErrorEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class PlaybackEvent extends Enum
    {

        private static final PlaybackEvent $VALUES[];
        public static final PlaybackEvent BUFFER_UNDERRUN;
        private static final String EVENT_CATEGORY_NAME = "Playback";
        public static final PlaybackEvent FULLSCREEN;
        public static final PlaybackEvent PAUSE;
        public static final PlaybackEvent PROFILE_CHANGE;
        public static final PlaybackEvent RESUME;
        public static final PlaybackEvent RESUME_UNDERRUN;
        public static final PlaybackEvent SEEK;
        public static final PlaybackEvent START;
        public static final PlaybackEvent STOP;
        public static final PlaybackEvent SUBTITLES;
        public static final PlaybackEvent THROUGHPUT;

        public static String getEventCategory()
        {
            return "Playback";
        }

        public static PlaybackEvent valueOf(String s)
        {
            return (PlaybackEvent)Enum.valueOf(com/showmax/lib/api/model/log/Event$PlaybackEvent, s);
        }

        public static PlaybackEvent[] values()
        {
            return (PlaybackEvent[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.model.log.Event.PlaybackEvent[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "PlaybackStart";

            case 2: // '\002'
                return "PlaybackPause";

            case 3: // '\003'
                return "PlaybackResume";

            case 4: // '\004'
                return "PlaybackResumeUnderrun";

            case 5: // '\005'
                return "PlaybackBufferUnderrun";

            case 6: // '\006'
                return "PlaybackSeek";

            case 7: // '\007'
                return "PlaybackSubtitles";

            case 8: // '\b'
                return "PlaybackStop";

            case 9: // '\t'
                return "PlaybackProfileChange";

            case 10: // '\n'
                return "PlaybackThroughput";

            case 11: // '\013'
                return "PlaybackFullScreen";
            }
        }

        static 
        {
            START = new PlaybackEvent("START", 0);
            PAUSE = new PlaybackEvent("PAUSE", 1);
            RESUME = new PlaybackEvent("RESUME", 2);
            RESUME_UNDERRUN = new PlaybackEvent("RESUME_UNDERRUN", 3);
            BUFFER_UNDERRUN = new PlaybackEvent("BUFFER_UNDERRUN", 4);
            SEEK = new PlaybackEvent("SEEK", 5);
            SUBTITLES = new PlaybackEvent("SUBTITLES", 6);
            STOP = new PlaybackEvent("STOP", 7);
            PROFILE_CHANGE = new PlaybackEvent("PROFILE_CHANGE", 8);
            THROUGHPUT = new PlaybackEvent("THROUGHPUT", 9);
            FULLSCREEN = new PlaybackEvent("FULLSCREEN", 10);
            $VALUES = (new PlaybackEvent[] {
                START, PAUSE, RESUME, RESUME_UNDERRUN, BUFFER_UNDERRUN, SEEK, SUBTITLES, STOP, PROFILE_CHANGE, THROUGHPUT, 
                FULLSCREEN
            });
        }

        private PlaybackEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class UiNavigationEvent extends Enum
    {

        private static final UiNavigationEvent $VALUES[];
        public static final UiNavigationEvent ASSET_DETAIL;
        private static final String EVENT_CATEGORY_NAME = "Nav";
        public static final UiNavigationEvent MOVIES;
        public static final UiNavigationEvent SEARCH;
        public static final UiNavigationEvent SECTION;
        public static final UiNavigationEvent SHOWS;

        public static String getEventCategory()
        {
            return "Nav";
        }

        public static UiNavigationEvent valueOf(String s)
        {
            return (UiNavigationEvent)Enum.valueOf(com/showmax/lib/api/model/log/Event$UiNavigationEvent, s);
        }

        public static UiNavigationEvent[] values()
        {
            return (UiNavigationEvent[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.model.log.Event.UiNavigationEvent[ordinal()])
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
            SECTION = new UiNavigationEvent("SECTION", 0);
            SEARCH = new UiNavigationEvent("SEARCH", 1);
            MOVIES = new UiNavigationEvent("MOVIES", 2);
            SHOWS = new UiNavigationEvent("SHOWS", 3);
            ASSET_DETAIL = new UiNavigationEvent("ASSET_DETAIL", 4);
            $VALUES = (new UiNavigationEvent[] {
                SECTION, SEARCH, MOVIES, SHOWS, ASSET_DETAIL
            });
        }

        private UiNavigationEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class UserEvent extends Enum
    {

        private static final UserEvent $VALUES[];
        private static final String EVENT_CATEGORY_NAME = "User";
        public static final UserEvent PAYMENT_ASSET_SUCCESS;

        public static String getEventCategory()
        {
            return "User";
        }

        public static UserEvent valueOf(String s)
        {
            return (UserEvent)Enum.valueOf(com/showmax/lib/api/model/log/Event$UserEvent, s);
        }

        public static UserEvent[] values()
        {
            return (UserEvent[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.model.log.Event.UserEvent[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "PaymentAssetSuccess";
            }
        }

        static 
        {
            PAYMENT_ASSET_SUCCESS = new UserEvent("PAYMENT_ASSET_SUCCESS", 0);
            $VALUES = (new UserEvent[] {
                PAYMENT_ASSET_SUCCESS
            });
        }

        private UserEvent(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int DIMENSION_INDEX_NAV_TARGET = 1;
    public static final String DIMENSION_VALUE_NAV_TARGET_MY_ACCOUNT = "myaccount";
    public static final String DIMENSION_VALUE_NAV_TARGET_MY_FLIX = "myflix";
}
