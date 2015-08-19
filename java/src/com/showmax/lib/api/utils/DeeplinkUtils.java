// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.utils:
//            LanguageUtils

public class DeeplinkUtils
{
    public static class DeeplinkAsset
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public DeeplinkAsset createFromParcel(Parcel parcel)
            {
                return new DeeplinkAsset(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public DeeplinkAsset[] newArray(int i)
            {
                return new DeeplinkAsset[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        public Asset asset;
        public String assetId;
        public String query;
        public com.showmax.lib.api.model.catalogue.Asset.Type searchType;
        public Section section;
        public Type type;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            byte byte0 = -1;
            int j;
            if (type != null)
            {
                j = type.ordinal();
            } else
            {
                j = -1;
            }
            parcel.writeInt(j);
            parcel.writeString(assetId);
            parcel.writeParcelable(asset, i);
            parcel.writeString(query);
            parcel.writeParcelable(section, i);
            i = byte0;
            if (searchType != null)
            {
                i = searchType.ordinal();
            }
            parcel.writeInt(i);
        }


        private DeeplinkAsset(Parcel parcel)
        {
            Object obj = null;
            super();
            int i = parcel.readInt();
            Type type1;
            if (i == -1)
            {
                type1 = null;
            } else
            {
                type1 = Type.fromOrdinal(i);
            }
            type = type1;
            assetId = parcel.readString();
            asset = (Asset)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Asset.getClassLoader());
            query = parcel.readString();
            section = (Section)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Section.getClassLoader());
            i = parcel.readInt();
            if (i == -1)
            {
                parcel = obj;
            } else
            {
                parcel = com.showmax.lib.api.model.catalogue.Asset.Type.fromOrdinal(i);
            }
            searchType = parcel;
        }


        public DeeplinkAsset(String s, Type type1, Asset asset1, String s1, String s2, com.showmax.lib.api.model.catalogue.Asset.Type type2)
        {
            type = type1;
            assetId = s;
            asset = asset1;
            query = s1;
            section = new Section(s2, s2);
            searchType = type2;
        }
    }

    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type CLOSE_WEBVIEW;
        public static final Type EPISODE;
        public static final Type HOME_TAB;
        public static final Type MOVIE;
        public static final Type SEARCH;
        public static final Type SEASON;
        public static final Type START_IAP;
        public static final Type TV_SERIE;
        private static Type allValues[] = values();

        public static Type fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/showmax/lib/api/utils/DeeplinkUtils$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            SEARCH = new Type("SEARCH", 0);
            HOME_TAB = new Type("HOME_TAB", 1);
            MOVIE = new Type("MOVIE", 2);
            TV_SERIE = new Type("TV_SERIE", 3);
            SEASON = new Type("SEASON", 4);
            EPISODE = new Type("EPISODE", 5);
            CLOSE_WEBVIEW = new Type("CLOSE_WEBVIEW", 6);
            START_IAP = new Type("START_IAP", 7);
            $VALUES = (new Type[] {
                SEARCH, HOME_TAB, MOVIE, TV_SERIE, SEASON, EPISODE, CLOSE_WEBVIEW, START_IAP
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String DEEPLINK_CLOSE_WEBVIEW = "close_webview";
    private static final String DEEPLINK_HOME_TAB = "home_tab";
    private static final String DEEPLINK_IAP = "start_iap";
    private static final String DEEPLINK_MOVIE = "movie";
    private static final String DEEPLINK_SEARCH = "search";
    private static final String DEEPLINK_SEARCH_PARAM_QUERY = "q";
    private static final String DEEPLINK_TV_EPISODE = "tv_episode";
    private static final String DEEPLINK_TV_SERIES = "tv_series";
    private static final String DEEPLINK_TV_SERIES_TV_SEASON = "tv_season";

    public DeeplinkUtils()
    {
    }

    public static Type getDeepLinkType(Uri uri)
    {
        String s;
        if (uri == null)
        {
            s = "null";
        } else
        {
            s = uri.toString();
        }
        MauLog.v("[DeeplinkUtils]::[getDeepLinkType]::[%s]", new Object[] {
            s
        });
        if (uri != null)
        {
            s = uri.getHost();
            if (s != null)
            {
                if (s.equals("search"))
                {
                    return Type.SEARCH;
                }
                if (s.equals("movie"))
                {
                    return Type.MOVIE;
                }
                if (s.equals("tv_series"))
                {
                    if ((new ArrayList(uri.getPathSegments())).contains("tv_season"))
                    {
                        return Type.SEASON;
                    } else
                    {
                        return Type.TV_SERIE;
                    }
                }
                if (s.equals("tv_episode"))
                {
                    return Type.EPISODE;
                }
            }
        }
        return null;
    }

    public static DeeplinkAsset parseDeeplinkUri(Uri uri)
    {
        Object obj;
        if (uri == null)
        {
            obj = "null";
        } else
        {
            obj = uri.toString();
        }
        MauLog.v("[DeeplinkUtils]::[parseDeeplinkUri]::[%s]", new Object[] {
            obj
        });
        if (uri != null)
        {
            obj = uri.getHost();
            if (obj != null)
            {
                if (((String) (obj)).equals("search"))
                {
                    try
                    {
                        obj = uri.getQueryParameter("q");
                        String s = uri.getQueryParameter("section");
                        uri = com.showmax.lib.api.model.catalogue.Asset.Type.parse(uri.getQueryParameter("type"));
                        LanguageUtils.getInstance();
                        uri = new DeeplinkAsset(null, Type.SEARCH, null, ((String) (obj)), s, uri);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Uri uri)
                    {
                        return null;
                    }
                    // Misplaced declaration of an exception variable
                    catch (Uri uri)
                    {
                        return null;
                    }
                    return uri;
                }
                if (((String) (obj)).equals("movie"))
                {
                    uri = uri.getLastPathSegment();
                    if (uri == null || uri.isEmpty())
                    {
                        return null;
                    } else
                    {
                        return new DeeplinkAsset(uri, Type.MOVIE, null, null, null, null);
                    }
                }
                if (((String) (obj)).equals("tv_series"))
                {
                    obj = new ArrayList(uri.getPathSegments());
                    uri = uri.getLastPathSegment();
                    if (uri == null || uri.isEmpty())
                    {
                        return null;
                    }
                    if (((ArrayList) (obj)).contains("tv_season"))
                    {
                        return new DeeplinkAsset(uri, Type.SEASON, null, null, null, null);
                    } else
                    {
                        return new DeeplinkAsset(uri, Type.TV_SERIE, null, null, null, null);
                    }
                }
                if (((String) (obj)).equals("tv_episode"))
                {
                    uri = uri.getLastPathSegment();
                    if (uri == null || uri.isEmpty())
                    {
                        return null;
                    } else
                    {
                        return new DeeplinkAsset(uri, Type.EPISODE, null, null, null, null);
                    }
                }
            }
        }
        return null;
    }
}
