// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;


// Referenced classes of package com.showmax.lib.api.utils:
//            UserPrefs

public static final class  extends Enum
{

    private static final ALPHABETIC_DESC $VALUES[];
    public static final ALPHABETIC_DESC ALPHABETIC_ASC;
    public static final ALPHABETIC_DESC ALPHABETIC_DESC;
    public static final ALPHABETIC_DESC DATE_NEWEST;
    public static final ALPHABETIC_DESC DATE_OLDEST;
    private static ALPHABETIC_DESC allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/utils/UserPrefs$SortOption, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        DATE_NEWEST = new <init>("DATE_NEWEST", 0);
        DATE_OLDEST = new <init>("DATE_OLDEST", 1);
        ALPHABETIC_ASC = new <init>("ALPHABETIC_ASC", 2);
        ALPHABETIC_DESC = new <init>("ALPHABETIC_DESC", 3);
        $VALUES = (new .VALUES[] {
            DATE_NEWEST, DATE_OLDEST, ALPHABETIC_ASC, ALPHABETIC_DESC
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
