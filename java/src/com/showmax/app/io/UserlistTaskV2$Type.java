// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;


// Referenced classes of package com.showmax.app.io:
//            UserlistTaskV2

public static final class  extends Enum
{

    private static final SYNC_USER_LISTS $VALUES[];
    public static final SYNC_USER_LISTS ADD_TO_BOOKMARKS;
    public static final SYNC_USER_LISTS ADD_TO_RECENTLY_WATCHED;
    public static final SYNC_USER_LISTS REMOVE_FROM_BOOKMARKS;
    public static final SYNC_USER_LISTS SYNC_USER_LISTS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/app/io/UserlistTaskV2$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ADD_TO_BOOKMARKS = new <init>("ADD_TO_BOOKMARKS", 0);
        REMOVE_FROM_BOOKMARKS = new <init>("REMOVE_FROM_BOOKMARKS", 1);
        ADD_TO_RECENTLY_WATCHED = new <init>("ADD_TO_RECENTLY_WATCHED", 2);
        SYNC_USER_LISTS = new <init>("SYNC_USER_LISTS", 3);
        $VALUES = (new .VALUES[] {
            ADD_TO_BOOKMARKS, REMOVE_FROM_BOOKMARKS, ADD_TO_RECENTLY_WATCHED, SYNC_USER_LISTS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
