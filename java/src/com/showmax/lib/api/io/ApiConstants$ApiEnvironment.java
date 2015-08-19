// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public static final class  extends Enum
{

    private static final COM $VALUES[];
    public static final COM COM;
    public static final COM IO;
    private static COM allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/lib/api/io/ApiConstants$ApiEnvironment, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        switch (m.showmax.lib.api.io.ApiConstants.ApiEnvironment[ordinal()])
        {
        default:
            return "null";

        case 1: // '\001'
            return "com";

        case 2: // '\002'
            return "io";
        }
    }

    static 
    {
        IO = new <init>("IO", 0);
        COM = new <init>("COM", 1);
        $VALUES = (new .VALUES[] {
            IO, COM
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
