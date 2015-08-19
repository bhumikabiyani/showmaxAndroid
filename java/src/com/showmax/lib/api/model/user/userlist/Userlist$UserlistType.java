// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;


// Referenced classes of package com.showmax.lib.api.model.user.userlist:
//            Userlist

public static final class  extends Enum
{

    private static final RECENTLY_WATCHED $VALUES[];
    public static final RECENTLY_WATCHED BOOKMARKS;
    public static final RECENTLY_WATCHED RECENTLY_WATCHED;
    private static RECENTLY_WATCHED allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/user/userlist/Userlist$UserlistType, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (com.showmax.lib.api.model.user.userlist.Userlist.UserlistType[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "bookmarks";

        case 2: // '\002'
            return "recently_watched";
        }
    }

    static 
    {
        BOOKMARKS = new <init>("BOOKMARKS", 0);
        RECENTLY_WATCHED = new <init>("RECENTLY_WATCHED", 1);
        $VALUES = (new .VALUES[] {
            BOOKMARKS, RECENTLY_WATCHED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
