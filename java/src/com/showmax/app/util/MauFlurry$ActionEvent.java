// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;


// Referenced classes of package com.showmax.app.util:
//            MauFlurry

public static final class  extends Enum
{

    private static final PLAYBACK_SUBTITLES_CHANGE $VALUES[];
    public static final PLAYBACK_SUBTITLES_CHANGE LANGUAGE_SWITCH;
    public static final PLAYBACK_SUBTITLES_CHANGE PLAYBACK_PAUSE;
    public static final PLAYBACK_SUBTITLES_CHANGE PLAYBACK_RESUME;
    public static final PLAYBACK_SUBTITLES_CHANGE PLAYBACK_SEEK;
    public static final PLAYBACK_SUBTITLES_CHANGE PLAYBACK_SUBTITLES_CHANGE;
    public static final PLAYBACK_SUBTITLES_CHANGE SIGN_IN;
    public static final PLAYBACK_SUBTITLES_CHANGE SIGN_OUT;
    public static final PLAYBACK_SUBTITLES_CHANGE SIGN_UP;
    private static final String STR_LANGUAGE_SWITCH = "actionLanguageSwitch";
    private static final String STR_PLAYBACK_PAUSE = "actionPlaybackPaused";
    private static final String STR_PLAYBACK_RESUME = "actionPlaybackResumed";
    private static final String STR_PLAYBACK_SEEK = "actionPlaybackSeek";
    private static final String STR_PLAYBACK_SUBTITLES_CHANGE = "actionPlaybackSubtitlesChange";
    private static final String STR_SIGN_IN = "actionLogIn";
    private static final String STR_SIGN_OUT = "actionLogOut";
    private static final String STR_SIGN_UP = "actionSignUp";
    private static PLAYBACK_SUBTITLES_CHANGE allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/app/util/MauFlurry$ActionEvent, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        if (equals(SIGN_IN))
        {
            return "actionLogIn";
        }
        if (equals(SIGN_OUT))
        {
            return "actionLogOut";
        }
        if (equals(SIGN_UP))
        {
            return "actionSignUp";
        }
        if (equals(LANGUAGE_SWITCH))
        {
            return "actionLanguageSwitch";
        }
        if (equals(PLAYBACK_PAUSE))
        {
            return "actionPlaybackPaused";
        }
        if (equals(PLAYBACK_RESUME))
        {
            return "actionPlaybackResumed";
        }
        if (equals(PLAYBACK_SEEK))
        {
            return "actionPlaybackSeek";
        }
        if (equals(PLAYBACK_SUBTITLES_CHANGE))
        {
            return "actionPlaybackSubtitlesChange";
        } else
        {
            return "null";
        }
    }

    static 
    {
        SIGN_IN = new <init>("SIGN_IN", 0);
        SIGN_OUT = new <init>("SIGN_OUT", 1);
        SIGN_UP = new <init>("SIGN_UP", 2);
        LANGUAGE_SWITCH = new <init>("LANGUAGE_SWITCH", 3);
        PLAYBACK_PAUSE = new <init>("PLAYBACK_PAUSE", 4);
        PLAYBACK_RESUME = new <init>("PLAYBACK_RESUME", 5);
        PLAYBACK_SEEK = new <init>("PLAYBACK_SEEK", 6);
        PLAYBACK_SUBTITLES_CHANGE = new <init>("PLAYBACK_SUBTITLES_CHANGE", 7);
        $VALUES = (new .VALUES[] {
            SIGN_IN, SIGN_OUT, SIGN_UP, LANGUAGE_SWITCH, PLAYBACK_PAUSE, PLAYBACK_RESUME, PLAYBACK_SEEK, PLAYBACK_SUBTITLES_CHANGE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
