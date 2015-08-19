// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


// Referenced classes of package com.showmax.lib.api.model.log:
//            Event

public static final class  extends Enum
{

    private static final FULLSCREEN $VALUES[];
    public static final FULLSCREEN BUFFER_UNDERRUN;
    private static final String EVENT_CATEGORY_NAME = "Playback";
    public static final FULLSCREEN FULLSCREEN;
    public static final FULLSCREEN PAUSE;
    public static final FULLSCREEN PROFILE_CHANGE;
    public static final FULLSCREEN RESUME;
    public static final FULLSCREEN RESUME_UNDERRUN;
    public static final FULLSCREEN SEEK;
    public static final FULLSCREEN START;
    public static final FULLSCREEN STOP;
    public static final FULLSCREEN SUBTITLES;
    public static final FULLSCREEN THROUGHPUT;

    public static String getEventCategory()
    {
        return "Playback";
    }

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/lib/api/model/log/Event$PlaybackEvent, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public String toString()
    {
        switch (om.showmax.lib.api.model.log.Event.PlaybackEvent[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "PlaybackStart";

        case 2: // '\002'
            return "PlaybackPause";

        case 3: // '\003'
            return "PlaybackResume";

        case 4: // '\004'
            return "PlaybackResumeUnderrun";

        case 5: // '\005'
            return "PlaybackBufferUnderrun";

        case 6: // '\006'
            return "PlaybackSeek";

        case 7: // '\007'
            return "PlaybackSubtitles";

        case 8: // '\b'
            return "PlaybackStop";

        case 9: // '\t'
            return "PlaybackProfileChange";

        case 10: // '\n'
            return "PlaybackThroughput";

        case 11: // '\013'
            return "PlaybackFullScreen";
        }
    }

    static 
    {
        START = new <init>("START", 0);
        PAUSE = new <init>("PAUSE", 1);
        RESUME = new <init>("RESUME", 2);
        RESUME_UNDERRUN = new <init>("RESUME_UNDERRUN", 3);
        BUFFER_UNDERRUN = new <init>("BUFFER_UNDERRUN", 4);
        SEEK = new <init>("SEEK", 5);
        SUBTITLES = new <init>("SUBTITLES", 6);
        STOP = new <init>("STOP", 7);
        PROFILE_CHANGE = new <init>("PROFILE_CHANGE", 8);
        THROUGHPUT = new <init>("THROUGHPUT", 9);
        FULLSCREEN = new <init>("FULLSCREEN", 10);
        $VALUES = (new .VALUES[] {
            START, PAUSE, RESUME, RESUME_UNDERRUN, BUFFER_UNDERRUN, SEEK, SUBTITLES, STOP, PROFILE_CHANGE, THROUGHPUT, 
            FULLSCREEN
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
