// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;

public class UserPrefs
{
    public static final class SortOption extends Enum
    {

        private static final SortOption $VALUES[];
        public static final SortOption ALPHABETIC_ASC;
        public static final SortOption ALPHABETIC_DESC;
        public static final SortOption DATE_NEWEST;
        public static final SortOption DATE_OLDEST;
        private static SortOption allValues[] = values();

        public static SortOption fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static SortOption valueOf(String s)
        {
            return (SortOption)Enum.valueOf(com/showmax/lib/api/utils/UserPrefs$SortOption, s);
        }

        public static SortOption[] values()
        {
            return (SortOption[])$VALUES.clone();
        }

        static 
        {
            DATE_NEWEST = new SortOption("DATE_NEWEST", 0);
            DATE_OLDEST = new SortOption("DATE_OLDEST", 1);
            ALPHABETIC_ASC = new SortOption("ALPHABETIC_ASC", 2);
            ALPHABETIC_DESC = new SortOption("ALPHABETIC_DESC", 3);
            $VALUES = (new SortOption[] {
                DATE_NEWEST, DATE_OLDEST, ALPHABETIC_ASC, ALPHABETIC_DESC
            });
        }

        private SortOption(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String USERPREFS_KEY_BONUS_FALSE_SHOWN = "userprefs.key.bonus.false.shown";
    private static final String USERPREFS_KEY_BONUS_TRUE_SHOWN = "userprefs.key.bonus.true.shown";
    private static final String USERPREFS_KEY_CURRENT_LANGUAGE = "userprefs.key.current.language";
    private static final String USERPREFS_KEY_CURRENT_SECTION = "userprefs.key.current.section";
    private static final String USERPREFS_KEY_FIRST_TIME_LAUNCH = "userprefs.key.first.time.launch";
    private static final String USERPREFS_KEY_FIRST_TIME_TUTORIAL = "userprefs.key.first.time.tutorial";
    private static final String USERPREFS_KEY_FIRST_TIME_WELCOME_VIDEO = "userprefs.key.first.time.welcome.video";
    private static final String USERPREFS_KEY_SORT_OPTION = "userprefs.key.sort.option";
    private static final String USERPREFS_KEY_USERLIST_BOOKMARKS = "userprefs.key.userlist.bookmarks";
    private static final String USERPREFS_KEY_USERLIST_RECENTLY_WATCHED = "userprefs.key.userlist.recently.watched";
    private static final String USERPREFS_KEY_USER_EMAIL = "userprefs.key.user.email";
    private static final String USERPREFS_KEY_USER_ID = "userprefs.key.user.id";
    private static final String USERPREFS_KEY_USER_SECURE_TOKEN = "userprefs.key.user.secure.token";
    private static final String USERPREFS_KEY_USER_TOKEN = "userprefs.key.user.token";
    private static final String USERPREFS_KEY_USER_TOKEN_EXPIRATION = "userprefs.key.user.token.expiration";
    private static final String USERPREFS_NAME = "shared.preferences.userprefs.name";

    public UserPrefs()
    {
    }

    public static com.showmax.lib.api.io.ApiConstants.AppLanguage getCurrentLanguage(Context context)
    {
        int i = getPrefs(context).getInt("userprefs.key.current.language", -1);
        if (i != -1)
        {
            return com.showmax.lib.api.io.ApiConstants.AppLanguage.fromOrdinal(i);
        } else
        {
            return com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG;
        }
    }

    public static Section getCurrentSection(Context context)
    {
        Object obj = null;
        String s = getPrefs(context).getString("userprefs.key.current.section", null);
        context = obj;
        if (s != null)
        {
            context = (Section)(new Gson()).fromJson(s, com/showmax/lib/api/model/catalogue/Section);
        }
        return context;
    }

    private static SharedPreferences getPrefs(Context context)
    {
        if (context == null)
        {
            return null;
        } else
        {
            return context.getSharedPreferences("shared.preferences.userprefs.name", 0);
        }
    }

    public static SortOption getSortOption(Context context)
    {
        context = getPrefs(context);
        int i;
        if (context != null)
        {
            if ((i = context.getInt("userprefs.key.sort.option", -1)) != -1)
            {
                return SortOption.fromOrdinal(i);
            }
        }
        return null;
    }

    public static String[] getUserAccessData(Context context)
    {
        context = getPrefs(context);
        return (new String[] {
            context.getString("userprefs.key.user.token", "null"), context.getString("userprefs.key.user.secure.token", "null"), context.getString("userprefs.key.user.token.expiration", "null")
        });
    }

    public static String getUserEmail(Context context)
    {
        return getPrefs(context).getString("userprefs.key.user.email", null);
    }

    public static String getUserId(Context context)
    {
        return getPrefs(context).getString("userprefs.key.user.id", null);
    }

    public static Userlist getUserlist(Context context, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype)
    {
        Object obj = null;
        Userlist userlist;
        if (userlisttype == com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS)
        {
            context = getPrefs(context).getString("userprefs.key.userlist.bookmarks", null);
            userlist = obj;
            if (context != null)
            {
                userlist = Userlist.deserialize(context);
            }
        } else
        {
            userlist = obj;
            if (userlisttype == com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED)
            {
                context = getPrefs(context).getString("userprefs.key.userlist.recently.watched", null);
                userlist = obj;
                if (context != null)
                {
                    return Userlist.deserialize(context);
                }
            }
        }
        return userlist;
    }

    public static boolean isBonusFalseAlreadyShown(Context context)
    {
        return getPrefs(context).getBoolean("userprefs.key.bonus.false.shown", false);
    }

    public static boolean isBonusTrueAlreadyShown(Context context)
    {
        return getPrefs(context).getBoolean("userprefs.key.bonus.true.shown", false);
    }

    public static boolean isFirstLaunch(Context context)
    {
        return getPrefs(context).getBoolean("userprefs.key.first.time.launch", true);
    }

    public static boolean isFirstTimeTutorial(Context context)
    {
        return getPrefs(context).getBoolean("userprefs.key.first.time.tutorial", true);
    }

    public static boolean isFirstTimeWelcomeVideo(Context context)
    {
        return getPrefs(context).getBoolean("userprefs.key.first.time.welcome.video", true);
    }

    public static boolean isUserSignedIn(Context context)
    {
        return getPrefs(context).contains("userprefs.key.user.token");
    }

    public static void removeUserAccessData(Context context)
    {
        getPrefs(context).edit().remove("userprefs.key.user.token").remove("userprefs.key.user.secure.token").remove("userprefs.key.user.id").remove("userprefs.key.user.email").remove("userprefs.key.user.token.expiration").commit();
    }

    public static void setBonusFalseAlreadyShown(Context context)
    {
        getPrefs(context).edit().putBoolean("userprefs.key.bonus.false.shown", true).commit();
    }

    public static void setBonusTrueAlreadyShown(Context context)
    {
        getPrefs(context).edit().putBoolean("userprefs.key.bonus.true.shown", true).commit();
    }

    public static void setCurrentLanguage(Context context, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage)
    {
        getPrefs(context).edit().putInt("userprefs.key.current.language", applanguage.ordinal()).commit();
    }

    public static void setCurrentSection(Context context, Section section)
    {
        section = (new Gson()).toJson(section);
        getPrefs(context).edit().putString("userprefs.key.current.section", section).commit();
    }

    public static void setFirstLaunch(Context context, boolean flag)
    {
        getPrefs(context).edit().putBoolean("userprefs.key.first.time.launch", flag).commit();
    }

    public static void setFirstTimeTutorial(Context context, boolean flag)
    {
        getPrefs(context).edit().putBoolean("userprefs.key.first.time.tutorial", flag).commit();
    }

    public static void setFirstTimeWelcomeVideo(Context context, boolean flag)
    {
        getPrefs(context).edit().putBoolean("userprefs.key.first.time.welcome.video", flag).commit();
    }

    public static void setSortOption(Context context, SortOption sortoption)
    {
        getPrefs(context).edit().putInt("userprefs.key.sort.option", sortoption.ordinal()).commit();
    }

    public static void setUserAccessData(Context context, String s, String s1, String s2)
    {
        getPrefs(context).edit().putString("userprefs.key.user.token", s).putString("userprefs.key.user.secure.token", s1).putString("userprefs.key.user.token.expiration", s2).commit();
    }

    public static void setUserEmail(Context context, String s)
    {
        getPrefs(context).edit().putString("userprefs.key.user.email", s).commit();
    }

    public static void setUserId(Context context, String s)
    {
        getPrefs(context).edit().putString("userprefs.key.user.id", s).commit();
    }

    public static void setUserlist(Context context, Userlist userlist)
    {
        if (userlist.getUserlistType() == com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS)
        {
            getPrefs(context).edit().putString("userprefs.key.userlist.bookmarks", userlist.serialize()).commit();
        } else
        if (userlist.getUserlistType() == com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED)
        {
            getPrefs(context).edit().putString("userprefs.key.userlist.recently.watched", userlist.serialize()).commit();
            return;
        }
    }
}
