// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


public final class Theme extends Enum
{

    private static final Theme $VALUES[];
    public static final Theme DARK;
    public static final Theme LIGHT;

    private Theme(String s, int i)
    {
        super(s, i);
    }

    public static Theme valueOf(String s)
    {
        return (Theme)Enum.valueOf(com/afollestad/materialdialogs/Theme, s);
    }

    public static Theme[] values()
    {
        return (Theme[])$VALUES.clone();
    }

    static 
    {
        LIGHT = new Theme("LIGHT", 0);
        DARK = new Theme("DARK", 1);
        $VALUES = (new Theme[] {
            LIGHT, DARK
        });
    }
}
