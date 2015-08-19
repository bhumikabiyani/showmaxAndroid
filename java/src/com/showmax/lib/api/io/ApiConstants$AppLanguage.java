// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import java.util.Locale;

// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class mLocale extends Enum
{

    private static final FRA $VALUES[];
    public static final FRA ARA;
    public static final FRA ENG;
    public static final FRA FRA;
    public static final FRA UNKNOWN;
    private static FRA allValues[] = values();
    private Locale mLocale;

    public static mLocale fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$AppLanguage, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public Locale getLocale()
    {
        return mLocale;
    }

    public String toString()
    {
        switch (.com.showmax.lib.api.io.ApiConstants.AppLanguage[ordinal()])
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
        UNKNOWN = new <init>("UNKNOWN", 0, "unknown");
        ENG = new <init>("ENG", 1, "en");
        ARA = new <init>("ARA", 2, "ar");
        FRA = new <init>("FRA", 3, "fr");
        $VALUES = (new .VALUES[] {
            UNKNOWN, ENG, ARA, FRA
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mLocale = new Locale(s1);
    }
}
