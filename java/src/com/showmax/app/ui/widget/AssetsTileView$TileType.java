// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;


// Referenced classes of package com.showmax.app.ui.widget:
//            AssetsTileView

public static final class  extends Enum
{

    private static final TV_SERIES_ASSETS $VALUES[];
    public static final TV_SERIES_ASSETS ASSETS;
    public static final TV_SERIES_ASSETS GROSSING;
    public static final TV_SERIES_ASSETS MOVIE_ASSETS;
    public static final TV_SERIES_ASSETS PICK;
    public static final TV_SERIES_ASSETS TV_SERIES_ASSETS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/app/ui/widget/AssetsTileView$TileType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PICK = new <init>("PICK", 0);
        GROSSING = new <init>("GROSSING", 1);
        ASSETS = new <init>("ASSETS", 2);
        MOVIE_ASSETS = new <init>("MOVIE_ASSETS", 3);
        TV_SERIES_ASSETS = new <init>("TV_SERIES_ASSETS", 4);
        $VALUES = (new .VALUES[] {
            PICK, GROSSING, ASSETS, MOVIE_ASSETS, TV_SERIES_ASSETS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
