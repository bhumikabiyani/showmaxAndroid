// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class  extends Enum
{

    private static final ANDROID $VALUES[];
    public static final ANDROID ANDROID;
    private static ANDROID allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiPlatform, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        int i = .com.showmax.lib.api.io.ApiConstants.ApiPlatform[ordinal()];
        return "mauandroid";
    }

    static 
    {
        ANDROID = new <init>("ANDROID", 0);
        $VALUES = (new .VALUES[] {
            ANDROID
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
