// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.graphics.drawable.Drawable;

// Referenced classes of package com.afollestad.materialdialogs:
//            GravityEnum

public class ThemeSingleton
{

    private static ThemeSingleton singleton;
    public int backgroundColor;
    public int btnSelectorNegative;
    public int btnSelectorNeutral;
    public int btnSelectorPositive;
    public int btnSelectorStacked;
    public GravityEnum btnStackedGravity;
    public GravityEnum buttonsGravity;
    public int contentColor;
    public GravityEnum contentGravity;
    public boolean darkTheme;
    public int dividerColor;
    public Drawable icon;
    public int itemColor;
    public GravityEnum itemsGravity;
    public int listSelector;
    public int negativeColor;
    public int neutralColor;
    public int positiveColor;
    public int titleColor;
    public GravityEnum titleGravity;
    public int widgetColor;

    public ThemeSingleton()
    {
        darkTheme = false;
        titleColor = 0;
        contentColor = 0;
        positiveColor = 0;
        neutralColor = 0;
        negativeColor = 0;
        widgetColor = 0;
        itemColor = 0;
        icon = null;
        backgroundColor = 0;
        dividerColor = 0;
        listSelector = 0;
        btnSelectorStacked = 0;
        btnSelectorPositive = 0;
        btnSelectorNeutral = 0;
        btnSelectorNegative = 0;
        titleGravity = GravityEnum.START;
        contentGravity = GravityEnum.START;
        btnStackedGravity = GravityEnum.START;
        itemsGravity = GravityEnum.START;
        buttonsGravity = GravityEnum.START;
    }

    public static ThemeSingleton get()
    {
        return get(true);
    }

    public static ThemeSingleton get(boolean flag)
    {
        if (singleton == null && flag)
        {
            singleton = new ThemeSingleton();
        }
        return singleton;
    }
}
