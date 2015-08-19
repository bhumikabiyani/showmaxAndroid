// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io.event;


public class SubscriptionStatusChangedEvent
{

    private com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus mSubscriptionStatus;

    public SubscriptionStatusChangedEvent(com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus subscriptionstatus)
    {
        mSubscriptionStatus = subscriptionstatus;
    }

    public com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus getSubscriptionStatus()
    {
        return mSubscriptionStatus;
    }
}
