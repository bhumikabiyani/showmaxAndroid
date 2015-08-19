// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


// Referenced classes of package com.afollestad.materialdialogs:
//            MaterialDialog

protected static final class  extends Enum
{

    private static final MULTI $VALUES[];
    public static final MULTI MULTI;
    public static final MULTI REGULAR;
    public static final MULTI SINGLE;

    public static int getLayoutForType( )
    {
        switch (Map.com.afollestad.materialdialogs.MaterialDialog.ListType[.ordinal()])
        {
        default:
            throw new IllegalArgumentException("Not a valid list type");

        case 1: // '\001'
            return ordinal;

        case 2: // '\002'
            return glechoice;

        case 3: // '\003'
            return tichoice;
        }
    }

    public static tichoice valueOf(String s)
    {
        return (tichoice)Enum.valueOf(com/afollestad/materialdialogs/MaterialDialog$ListType, s);
    }

    public static tichoice[] values()
    {
        return (tichoice[])$VALUES.clone();
    }

    static 
    {
        REGULAR = new <init>("REGULAR", 0);
        SINGLE = new <init>("SINGLE", 1);
        MULTI = new <init>("MULTI", 2);
        $VALUES = (new .VALUES[] {
            REGULAR, SINGLE, MULTI
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
