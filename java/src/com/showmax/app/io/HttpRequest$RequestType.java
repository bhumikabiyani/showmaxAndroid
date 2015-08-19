// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;


// Referenced classes of package com.showmax.app.io:
//            HttpRequest

public static final class  extends Enum
{

    private static final DELETE $VALUES[];
    public static final DELETE DELETE;
    public static final DELETE GET;
    public static final DELETE POST;
    public static final DELETE PUT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/app/io/HttpRequest$RequestType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        GET = new <init>("GET", 0);
        POST = new <init>("POST", 1);
        PUT = new <init>("PUT", 2);
        DELETE = new <init>("DELETE", 3);
        $VALUES = (new .VALUES[] {
            GET, POST, PUT, DELETE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
