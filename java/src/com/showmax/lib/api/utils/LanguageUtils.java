// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;
import java.util.Iterator;

public class LanguageUtils
{

    private static final boolean LOG = true;
    private static LanguageUtils sInstance;
    private ArrayList mLanguages;

    private LanguageUtils()
    {
    }

    public static LanguageUtils getInstance()
    {
        if (sInstance == null)
        {
            MauLog.w("[LanguageUtils]::[getInstance]::[sInstance is null]", new Object[0]);
        }
        return sInstance;
    }

    public static void initInstance(ArrayList arraylist)
    {
        MauLog.d("[LanguageUtils]::[initInstance]");
        if (sInstance == null)
        {
            MauLog.d("[LanguageUtils]::[initInstance]::[sInstance is null, create a new instance]");
            sInstance = new LanguageUtils();
        }
        sInstance.setAvailableLanguages(arraylist);
    }

    private void setAvailableLanguages(ArrayList arraylist)
    {
        mLanguages = new ArrayList();
        if (arraylist != null && !arraylist.isEmpty())
        {
            mLanguages.addAll(arraylist);
        }
    }

    public Language convert(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage)
    {
        for (Iterator iterator = mLanguages.iterator(); iterator.hasNext();)
        {
            Language language = (Language)iterator.next();
            if (language.iso6393.equals(applanguage.toString()))
            {
                return language;
            }
        }

        return null;
    }

    public ArrayList getAvailableLanguages()
    {
        if (mLanguages == null)
        {
            return new ArrayList();
        } else
        {
            return mLanguages;
        }
    }

    public boolean isArabic(String s)
    {
        if (s != null && !s.isEmpty())
        {
            return com.showmax.lib.api.io.ApiConstants.AppLanguage.ARA.toString().equals(s);
        } else
        {
            return false;
        }
    }

    public boolean isEnglish(String s)
    {
        if (s != null && !s.isEmpty())
        {
            return com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG.toString().equals(s);
        } else
        {
            return false;
        }
    }

    public boolean isFrench(String s)
    {
        if (s != null && !s.isEmpty())
        {
            return com.showmax.lib.api.io.ApiConstants.AppLanguage.FRA.toString().equals(s);
        } else
        {
            return false;
        }
    }

    public Language parseLanguage(String s)
    {
        if (s == null || s.isEmpty())
        {
            return null;
        }
        for (Iterator iterator = mLanguages.iterator(); iterator.hasNext();)
        {
            Language language = (Language)iterator.next();
            if (language.iso6393.equals(s))
            {
                return language;
            }
        }

        return null;
    }
}
