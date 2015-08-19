// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class  extends Enum
{

    private static final PICK $VALUES[];
    public static final PICK LATEST;
    public static final PICK PICK;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/lib/api/io/ApiConstants$PromotedAssetType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public String toString()
    {
        switch (howmax.lib.api.io.ApiConstants.PromotedAssetType[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "latest";

        case 2: // '\002'
            return "pick";
        }
    }

    static 
    {
        LATEST = new <init>("LATEST", 0);
        PICK = new <init>("PICK", 1);
        $VALUES = (new .VALUES[] {
            LATEST, PICK
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
