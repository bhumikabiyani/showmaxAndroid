// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist.v2;


// Referenced classes of package com.showmax.lib.api.model.user.userlist.v2:
//            Userlist

static class erlistType
{

    static final int $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType = new int[erlistType.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[erlistType.BOOKMARKS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[erlistType.RECENTLY_WATCHED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
