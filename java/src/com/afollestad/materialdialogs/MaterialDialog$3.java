// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


// Referenced classes of package com.afollestad.materialdialogs:
//            MaterialDialog, DialogAction

static class stType
{

    static final int $SwitchMap$com$afollestad$materialdialogs$DialogAction[];
    static final int $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[];

    static 
    {
        $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType = new int[stType.values().length];
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[stType.REGULAR.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[stType.SINGLE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[stType.MULTI.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SwitchMap$com$afollestad$materialdialogs$DialogAction = new int[DialogAction.values().length];
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.NEUTRAL.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.NEGATIVE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.POSITIVE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
