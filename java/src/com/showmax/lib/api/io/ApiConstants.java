// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import java.util.Locale;

public interface ApiConstants
{
    public static final class ApiEnvironment extends Enum
    {

        private static final ApiEnvironment $VALUES[];
        public static final ApiEnvironment COM;
        public static final ApiEnvironment IO;
        private static ApiEnvironment allValues[] = values();

        public static ApiEnvironment fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static ApiEnvironment valueOf(String s)
        {
            return (ApiEnvironment)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiEnvironment, s);
        }

        public static ApiEnvironment[] values()
        {
            return (ApiEnvironment[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls1
            {

                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[];
                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform[];
                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[];
                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[];
                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[];
                static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType = new int[CategoryType.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[CategoryType.MOVIES.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror12) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[CategoryType.TV_SERIES.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror11) { }
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType = new int[PromotedAssetType.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[PromotedAssetType.LATEST.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror10) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[PromotedAssetType.PICK.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror9) { }
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage = new int[AppLanguage.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[AppLanguage.UNKNOWN.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[AppLanguage.ENG.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[AppLanguage.ARA.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[AppLanguage.FRA.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol = new int[ApiProtocol.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[ApiProtocol.HTTP.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[ApiProtocol.HTTPS.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform = new int[ApiPlatform.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform[ApiPlatform.ANDROID.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment = new int[ApiEnvironment.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[ApiEnvironment.COM.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[ApiEnvironment.IO.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.ApiEnvironment[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "com";

            case 2: // '\002'
                return "io";
            }
        }

        static 
        {
            IO = new ApiEnvironment("IO", 0);
            COM = new ApiEnvironment("COM", 1);
            $VALUES = (new ApiEnvironment[] {
                IO, COM
            });
        }

        private ApiEnvironment(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ApiPlatform extends Enum
    {

        private static final ApiPlatform $VALUES[];
        public static final ApiPlatform ANDROID;
        private static ApiPlatform allValues[] = values();

        public static ApiPlatform fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static ApiPlatform valueOf(String s)
        {
            return (ApiPlatform)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiPlatform, s);
        }

        public static ApiPlatform[] values()
        {
            return (ApiPlatform[])$VALUES.clone();
        }

        public String toString()
        {
            int i = _cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.ApiPlatform[ordinal()];
            return "mauandroid";
        }

        static 
        {
            ANDROID = new ApiPlatform("ANDROID", 0);
            $VALUES = (new ApiPlatform[] {
                ANDROID
            });
        }

        private ApiPlatform(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ApiProtocol extends Enum
    {

        private static final ApiProtocol $VALUES[];
        public static final ApiProtocol HTTP;
        public static final ApiProtocol HTTPS;
        private static ApiProtocol allValues[] = values();

        public static ApiProtocol fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static ApiProtocol valueOf(String s)
        {
            return (ApiProtocol)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiProtocol, s);
        }

        public static ApiProtocol[] values()
        {
            return (ApiProtocol[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.ApiProtocol[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "http";

            case 2: // '\002'
                return "https";
            }
        }

        static 
        {
            HTTP = new ApiProtocol("HTTP", 0);
            HTTPS = new ApiProtocol("HTTPS", 1);
            $VALUES = (new ApiProtocol[] {
                HTTP, HTTPS
            });
        }

        private ApiProtocol(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class AppLanguage extends Enum
    {

        private static final AppLanguage $VALUES[];
        public static final AppLanguage ARA;
        public static final AppLanguage ENG;
        public static final AppLanguage FRA;
        public static final AppLanguage UNKNOWN;
        private static AppLanguage allValues[] = values();
        private Locale mLocale;

        public static AppLanguage fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static AppLanguage valueOf(String s)
        {
            return (AppLanguage)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$AppLanguage, s);
        }

        public static AppLanguage[] values()
        {
            return (AppLanguage[])$VALUES.clone();
        }

        public Locale getLocale()
        {
            return mLocale;
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.AppLanguage[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "unknown";

            case 2: // '\002'
                return "eng";

            case 3: // '\003'
                return "ara";

            case 4: // '\004'
                return "fra";
            }
        }

        static 
        {
            UNKNOWN = new AppLanguage("UNKNOWN", 0, "unknown");
            ENG = new AppLanguage("ENG", 1, "en");
            ARA = new AppLanguage("ARA", 2, "ar");
            FRA = new AppLanguage("FRA", 3, "fr");
            $VALUES = (new AppLanguage[] {
                UNKNOWN, ENG, ARA, FRA
            });
        }

        private AppLanguage(String s, int i, String s1)
        {
            super(s, i);
            mLocale = new Locale(s1);
        }
    }

    public static final class CategoryType extends Enum
    {

        private static final CategoryType $VALUES[];
        public static final CategoryType MOVIES;
        public static final CategoryType TV_SERIES;
        private static CategoryType allValues[] = values();

        public static CategoryType fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static CategoryType valueOf(String s)
        {
            return (CategoryType)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$CategoryType, s);
        }

        public static CategoryType[] values()
        {
            return (CategoryType[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.CategoryType[ordinal()])
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
            MOVIES = new CategoryType("MOVIES", 0);
            TV_SERIES = new CategoryType("TV_SERIES", 1);
            $VALUES = (new CategoryType[] {
                MOVIES, TV_SERIES
            });
        }

        private CategoryType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class PromotedAssetType extends Enum
    {

        private static final PromotedAssetType $VALUES[];
        public static final PromotedAssetType LATEST;
        public static final PromotedAssetType PICK;

        public static PromotedAssetType valueOf(String s)
        {
            return (PromotedAssetType)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$PromotedAssetType, s);
        }

        public static PromotedAssetType[] values()
        {
            return (PromotedAssetType[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.io.ApiConstants.PromotedAssetType[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "latest";

            case 2: // '\002'
                return "pick";
            }
        }

        static 
        {
            LATEST = new PromotedAssetType("LATEST", 0);
            PICK = new PromotedAssetType("PICK", 1);
            $VALUES = (new PromotedAssetType[] {
                LATEST, PICK
            });
        }

        private PromotedAssetType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String API_ENDPOINT = "api.showmax";
    public static final String COM = "com";
    public static final String DEFAULT_API_VERSION = "v6.0";
    public static final String HEADER_AUTHORIZATION_NAME = "Authorization";
    public static final String HEADER_AUTHORIZATION_PREFIX_BEARER = "Bearer ";
    public static final String HEADER_DEVICE_ID_NAME = "ShowMax-Device-Id";
    public static final String HEADER_USER_AGENT_NAME = "User-Agent";
    public static final String HTTP = "http";
    public static final String HTTPS = "https";
    public static final String IO = "io";
    public static final String LOG_ENDPOINT = "log.showmax";
    public static final String PARAM_ASSET_ID = "asset_id";
    public static final String PARAM_ASSET_TYPE_EPISODE = "episode";
    public static final String PARAM_ASSET_TYPE_MOVIE = "movie";
    public static final String PARAM_ASSET_TYPE_NAME = "type";
    public static final String PARAM_ASSET_TYPE_SEASON = "season";
    public static final String PARAM_ASSET_TYPE_TV_SERIES = "tv_series";
    public static final String PARAM_ASSET_VOD_MODEL_AVOD = "avod";
    public static final String PARAM_ASSET_VOD_MODEL_PVOD = "pvod";
    public static final String PARAM_ASSET_VOD_MODEL_SVOD = "svod";
    public static final String PARAM_ASSET_VOD_MODEL_TVOD = "tvod";
    public static final String PARAM_CATEGORY_ID_NAME = "category";
    public static final String PARAM_CATEGORY_TYPE_MOVIES = "movies";
    public static final String PARAM_CATEGORY_TYPE_NAME = "type";
    public static final String PARAM_CATEGORY_TYPE_TV_SERIES = "tv";
    public static final String PARAM_DEVICE_CODE = "device_code";
    public static final String PARAM_FORCE_WIDEVINE = "force_widevine";
    public static final String PARAM_IDS_ARRAY = "id[]";
    public static final String PARAM_LANGUAGE_ARA = "ara";
    public static final String PARAM_LANGUAGE_ENG = "eng";
    public static final String PARAM_LANGUAGE_FRA = "fra";
    public static final String PARAM_LANGUAGE_NAME = "lang";
    public static final String PARAM_LOCALE_LANGUAGE_ARA = "ar";
    public static final String PARAM_LOCALE_LANGUAGE_ENG = "en";
    public static final String PARAM_LOCALE_LANGUAGE_FRA = "fr";
    public static final String PARAM_NUM = "num";
    public static final String PARAM_PROMOTED_ASSET_TYPE_LATEST = "latest";
    public static final String PARAM_PROMOTED_ASSET_TYPE_PICK = "pick";
    public static final String PARAM_QUERY_NAME = "q";
    public static final String PARAM_SECTION_NAME = "section";
    public static final String PARAM_SUBSCRIPTION_STATUS_FREE = "free";
    public static final String PARAM_SUBSCRIPTION_STATUS_FULL = "full";
    public static final String PARAM_USER_ID = "user_id";
    public static final String PARAM_VIDEO_ID = "video_id";
    public static final String PARAM_VIDEO_ID_WELCOME = "welcome";
    public static final String PLATFORM_ANDROID = "mauandroid";
    public static final String SECURE_CLIENT_ID_SHOWMAX_APP = "ixeephiphaixop0nu7iefai9hie2reipheiveexu";
    public static final String SECURE_ENDPOINT = "secure.showmax";
    public static final String SECURE_PARAM_ACCESS_TOKEN = "token";
    public static final String SECURE_PARAM_BONUS = "bonus";
    public static final String SECURE_PARAM_BONUS_FALSE = "false";
    public static final String SECURE_PARAM_BONUS_NO_POPUP = "no-popup";
    public static final String SECURE_PARAM_BONUS_TRUE = "true";
    public static final String SECURE_PARAM_EXPIRATION = "expires_in";
    public static final String SECURE_PARAM_SECURE_TOKEN = "secure_token";
}
