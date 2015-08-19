// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.view.View;

// Referenced classes of package com.afollestad.materialdialogs:
//            AlertDialogWrapper, MaterialDialog

class val.listener
    implements ngleChoice
{

    final val.listener this$0;
    final android.content.er val$listener;

    public boolean onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
    {
        val$listener.onClick(materialdialog, i);
        return true;
    }

    ngleChoice()
    {
        this$0 = final_nglechoice;
        val$listener = android.content.er.this;
        super();
    }
}
