// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;


// Referenced classes of package com.showmax.app.ui.widget:
//            PlayButton

public static final class  extends Enum
{

    private static final PURCHASED $VALUES[];
    public static final PURCHASED PLAY;
    public static final PURCHASED PURCHASE;
    public static final PURCHASED PURCHASED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/showmax/app/ui/widget/PlayButton$State, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PLAY = new <init>("PLAY", 0);
        PURCHASE = new <init>("PURCHASE", 1);
        PURCHASED = new <init>("PURCHASED", 2);
        $VALUES = (new .VALUES[] {
            PLAY, PURCHASE, PURCHASED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
