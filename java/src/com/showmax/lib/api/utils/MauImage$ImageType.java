// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;


// Referenced classes of package com.showmax.lib.api.utils:
//            MauImage

public static final class  extends Enum
{

    private static final MOVIE_DETAIL_BANNER $VALUES[];
    public static final MOVIE_DETAIL_BANNER BANNER;
    public static final MOVIE_DETAIL_BANNER BRANDING;
    public static final MOVIE_DETAIL_BANNER CONTENT_WARNING;
    public static final MOVIE_DETAIL_BANNER LANDSCAPE;
    public static final MOVIE_DETAIL_BANNER MOVIE_DETAIL_BANNER;
    public static final MOVIE_DETAIL_BANNER PORTRAIT;
    public static final MOVIE_DETAIL_BANNER TV_SERIES_DETAIL_BANNER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/lib/api/utils/MauImage$ImageType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PORTRAIT = new <init>("PORTRAIT", 0);
        LANDSCAPE = new <init>("LANDSCAPE", 1);
        BANNER = new <init>("BANNER", 2);
        CONTENT_WARNING = new <init>("CONTENT_WARNING", 3);
        BRANDING = new <init>("BRANDING", 4);
        TV_SERIES_DETAIL_BANNER = new <init>("TV_SERIES_DETAIL_BANNER", 5);
        MOVIE_DETAIL_BANNER = new <init>("MOVIE_DETAIL_BANNER", 6);
        $VALUES = (new .VALUES[] {
            PORTRAIT, LANDSCAPE, BANNER, CONTENT_WARNING, BRANDING, TV_SERIES_DETAIL_BANNER, MOVIE_DETAIL_BANNER
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
