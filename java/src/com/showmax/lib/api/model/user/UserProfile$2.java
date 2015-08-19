// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;


// Referenced classes of package com.showmax.lib.api.model.user:
//            UserProfile

static class bscriptionStatus
{

    static final int $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus = new int[bscriptionStatus.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[bscriptionStatus.FREE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[bscriptionStatus.FULL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
