// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class  extends Enum
{

    private static final HTTPS $VALUES[];
    public static final HTTPS HTTP;
    public static final HTTPS HTTPS;
    private static HTTPS allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiProtocol, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (.com.showmax.lib.api.io.ApiConstants.ApiProtocol[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "http";

        case 2: // '\002'
            return "https";
        }
    }

    static 
    {
        HTTP = new <init>("HTTP", 0);
        HTTPS = new <init>("HTTPS", 1);
        $VALUES = (new .VALUES[] {
            HTTP, HTTPS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
