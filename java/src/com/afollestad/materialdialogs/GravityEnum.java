// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


public final class GravityEnum extends Enum
{

    private static final GravityEnum $VALUES[];
    public static final GravityEnum CENTER;
    public static final GravityEnum END;
    private static final boolean HAS_RTL;
    public static final GravityEnum START;

    private GravityEnum(String s, int i)
    {
        super(s, i);
    }

    public static GravityEnum valueOf(String s)
    {
        return (GravityEnum)Enum.valueOf(com/afollestad/materialdialogs/GravityEnum, s);
    }

    public static GravityEnum[] values()
    {
        return (GravityEnum[])$VALUES.clone();
    }

    public int getGravityInt()
    {
        static class _cls1
        {

            static final int $SwitchMap$com$afollestad$materialdialogs$GravityEnum[];

            static 
            {
                $SwitchMap$com$afollestad$materialdialogs$GravityEnum = new int[GravityEnum.values().length];
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$GravityEnum[GravityEnum.START.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$GravityEnum[GravityEnum.CENTER.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$GravityEnum[GravityEnum.END.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.afollestad.materialdialogs.GravityEnum[ordinal()])
        {
        default:
            throw new IllegalStateException("Invalid gravity constant");

        case 1: // '\001'
            return !HAS_RTL ? 3 : 0x800003;

        case 2: // '\002'
            return 1;

        case 3: // '\003'
            break;
        }
        return !HAS_RTL ? 5 : 0x800005;
    }

    public int getTextAlignment()
    {
        switch (_cls1..SwitchMap.com.afollestad.materialdialogs.GravityEnum[ordinal()])
        {
        default:
            return 5;

        case 2: // '\002'
            return 4;

        case 3: // '\003'
            return 6;
        }
    }

    static 
    {
        boolean flag = true;
        START = new GravityEnum("START", 0);
        CENTER = new GravityEnum("CENTER", 1);
        END = new GravityEnum("END", 2);
        $VALUES = (new GravityEnum[] {
            START, CENTER, END
        });
        if (android.os.Build.VERSION.SDK_INT < 17)
        {
            flag = false;
        }
        HAS_RTL = flag;
    }
}
