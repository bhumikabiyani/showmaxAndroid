// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;


// Referenced classes of package com.showmax.lib.api.model.user.userlist:
//            Userlist

static class erlistType
{

    static final int $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType = new int[erlistType.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[erlistType.BOOKMARKS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[erlistType.RECENTLY_WATCHED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
