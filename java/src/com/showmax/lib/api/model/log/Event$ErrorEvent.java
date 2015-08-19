// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


// Referenced classes of package com.showmax.lib.api.model.log:
//            Event

public static final class  extends Enum
{

    private static final EXCEPTION $VALUES[];
    public static final EXCEPTION API;
    private static final String EVENT_CATEGORY_NAME = "Error";
    public static final EXCEPTION EXCEPTION;

    public static String getEventCategory()
    {
        return "Error";
    }

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/lib/api/model/log/Event$ErrorEvent, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public String toString()
    {
        switch (p.com.showmax.lib.api.model.log.Event.ErrorEvent[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "Api";

        case 2: // '\002'
            return "Exception";
        }
    }

    static 
    {
        API = new <init>("API", 0);
        EXCEPTION = new <init>("EXCEPTION", 1);
        $VALUES = (new .VALUES[] {
            API, EXCEPTION
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
