// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


public final class DialogAction extends Enum
{

    private static final DialogAction $VALUES[];
    public static final DialogAction NEGATIVE;
    public static final DialogAction NEUTRAL;
    public static final DialogAction POSITIVE;

    private DialogAction(String s, int i)
    {
        super(s, i);
    }

    public static DialogAction valueOf(String s)
    {
        return (DialogAction)Enum.valueOf(com/afollestad/materialdialogs/DialogAction, s);
    }

    public static DialogAction[] values()
    {
        return (DialogAction[])$VALUES.clone();
    }

    static 
    {
        POSITIVE = new DialogAction("POSITIVE", 0);
        NEUTRAL = new DialogAction("NEUTRAL", 1);
        NEGATIVE = new DialogAction("NEGATIVE", 2);
        $VALUES = (new DialogAction[] {
            POSITIVE, NEUTRAL, NEGATIVE
        });
    }
}
