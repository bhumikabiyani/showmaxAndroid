// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


// Referenced classes of package com.showmax.lib.api.model.log:
//            Event

public static final class _cls9 extends Enum
{

    private static final LANGUAGE_SET $VALUES[];
    public static final LANGUAGE_SET CLOSE;
    private static final String EVENT_CATEGORY_NAME = "App";
    public static final LANGUAGE_SET FIRST_START;
    public static final LANGUAGE_SET LANGUAGE_SET;
    public static final LANGUAGE_SET RESUME;
    public static final LANGUAGE_SET START;
    public static final LANGUAGE_SET SUSPEND;

    public static String getEventCategory()
    {
        return "App";
    }

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/showmax/lib/api/model/log/Event$AppGeneralEvent, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    public String toString()
    {
        switch (.showmax.lib.api.model.log.Event.AppGeneralEvent[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "FirstStart";

        case 2: // '\002'
            return "Start";

        case 3: // '\003'
            return "Close";

        case 4: // '\004'
            return "Suspend";

        case 5: // '\005'
            return "Resume";

        case 6: // '\006'
            return "LanguageSet";
        }
    }

    static 
    {
        FIRST_START = new <init>("FIRST_START", 0);
        START = new <init>("START", 1);
        CLOSE = new <init>("CLOSE", 2);
        SUSPEND = new <init>("SUSPEND", 3);
        RESUME = new <init>("RESUME", 4);
        LANGUAGE_SET = new <init>("LANGUAGE_SET", 5);
        $VALUES = (new .VALUES[] {
            FIRST_START, START, CLOSE, SUSPEND, RESUME, LANGUAGE_SET
        });
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
