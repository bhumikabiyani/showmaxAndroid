// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

static class pe
{

    static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[];
    static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[];

    static 
    {
        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel = new int[dModel.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[dModel.AVOD.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[dModel.PVOD.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[dModel.SVOD.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[dModel.TVOD.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type = new int[pe.values().length];
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[pe.MOVIE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[pe.TV_SERIES.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[pe.SEASON.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[pe.EPISODE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
