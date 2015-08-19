// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public static final class  extends Enum
{

    private static final PVOD $VALUES[];
    public static final PVOD AVOD;
    public static final PVOD PVOD;
    public static final PVOD SVOD;
    public static final PVOD TVOD;
    private static PVOD allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$VodModel, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (Map.com.showmax.lib.api.model.catalogue.Asset.VodModel[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "avod";

        case 2: // '\002'
            return "pvod";

        case 3: // '\003'
            return "svod";

        case 4: // '\004'
            return "tvod";
        }
    }

    static 
    {
        AVOD = new <init>("AVOD", 0);
        SVOD = new <init>("SVOD", 1);
        TVOD = new <init>("TVOD", 2);
        PVOD = new <init>("PVOD", 3);
        $VALUES = (new .VALUES[] {
            AVOD, SVOD, TVOD, PVOD
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
