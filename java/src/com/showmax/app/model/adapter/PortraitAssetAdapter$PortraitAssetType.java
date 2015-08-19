// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;


// Referenced classes of package com.showmax.app.model.adapter:
//            PortraitAssetAdapter

public static final class  extends Enum
{

    private static final TWOWAY $VALUES[];
    public static final TWOWAY GRID;
    public static final TWOWAY TWOWAY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        GRID = new <init>("GRID", 0);
        TWOWAY = new <init>("TWOWAY", 1);
        $VALUES = (new .VALUES[] {
            GRID, TWOWAY
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
