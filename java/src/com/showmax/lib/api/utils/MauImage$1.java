// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;


// Referenced classes of package com.showmax.lib.api.utils:
//            MauImage

static class ageType
{

    static final int $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType = new int[ageType.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.LANDSCAPE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.BANNER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.CONTENT_WARNING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.BRANDING.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.MOVIE_DETAIL_BANNER.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ageType.TV_SERIES_DETAIL_BANNER.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
