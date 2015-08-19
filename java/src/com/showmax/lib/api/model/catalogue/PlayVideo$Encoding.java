// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;


// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            PlayVideo

public static final class  extends Enum
{

    private static final WIDEVINE $VALUES[];
    public static final WIDEVINE HLS;
    public static final WIDEVINE WIDEVINE;
    private static WIDEVINE allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/model/catalogue/PlayVideo$Encoding, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    static 
    {
        HLS = new <init>("HLS", 0);
        WIDEVINE = new <init>("WIDEVINE", 1);
        $VALUES = (new .VALUES[] {
            HLS, WIDEVINE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
