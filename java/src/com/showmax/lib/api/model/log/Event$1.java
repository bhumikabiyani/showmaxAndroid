// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;


// Referenced classes of package com.showmax.lib.api.model.log:
//            Event

static class pGeneralEvent
{

    static final int $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[];
    static final int $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[];
    static final int $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[];
    static final int $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[];
    static final int $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent = new int[rorEvent.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[rorEvent.API.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror24) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent[rorEvent.EXCEPTION.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror23) { }
        $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent = new int[erEvent.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent[erEvent.PAYMENT_ASSET_SUCCESS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror22) { }
        $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent = new int[aybackEvent.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.START.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror21) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.PAUSE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror20) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.RESUME.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.RESUME_UNDERRUN.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.BUFFER_UNDERRUN.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.SEEK.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.SUBTITLES.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.STOP.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.PROFILE_CHANGE.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.THROUGHPUT.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent[aybackEvent.FULLSCREEN.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent = new int[NavigationEvent.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[NavigationEvent.SECTION.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[NavigationEvent.SEARCH.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[NavigationEvent.MOVIES.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[NavigationEvent.SHOWS.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent[NavigationEvent.ASSET_DETAIL.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent = new int[pGeneralEvent.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.FIRST_START.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.START.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.CLOSE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.SUSPEND.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.RESUME.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent[pGeneralEvent.LANGUAGE_SET.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
