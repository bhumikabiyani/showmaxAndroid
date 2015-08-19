// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

static class iEnvironment
{

    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[];
    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform[];
    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[];
    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[];
    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[];
    static final int $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType = new int[tegoryType.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[tegoryType.MOVIES.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType[tegoryType.TV_SERIES.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType = new int[omotedAssetType.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[omotedAssetType.LATEST.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType[omotedAssetType.PICK.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage = new int[pLanguage.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[pLanguage.UNKNOWN.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[pLanguage.ENG.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[pLanguage.ARA.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage[pLanguage.FRA.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol = new int[iProtocol.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[iProtocol.HTTP.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol[iProtocol.HTTPS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform = new int[iPlatform.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform[iPlatform.ANDROID.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment = new int[iEnvironment.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[iEnvironment.COM.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment[iEnvironment.IO.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
