// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;


// Referenced classes of package com.showmax.lib.api.model.user:
//            UserProfile

public static final class  extends Enum
{

    private static final FULL $VALUES[];
    public static final FULL FREE;
    public static final FULL FULL;
    private static FULL allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/user/UserProfile$SubscriptionStatus, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (owmax.lib.api.model.user.UserProfile.SubscriptionStatus[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "free";

        case 2: // '\002'
            return "full";
        }
    }

    static 
    {
        FREE = new <init>("FREE", 0);
        FULL = new <init>("FULL", 1);
        $VALUES = (new .VALUES[] {
            FREE, FULL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
