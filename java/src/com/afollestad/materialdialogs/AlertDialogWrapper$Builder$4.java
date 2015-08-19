// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.afollestad.materialdialogs:
//            AlertDialogWrapper, MaterialDialog

class val.listener
    implements ltiChoice
{

    final val.checkedItems this$0;
    final boolean val$checkedItems[];
    final android.content.ClickListener val$listener;

    public boolean onSelection(MaterialDialog materialdialog, Integer ainteger[], CharSequence acharsequence[])
    {
        ainteger = Arrays.asList(ainteger);
        if (val$checkedItems != null)
        {
            for (int i = 0; i < val$checkedItems.length; i++)
            {
                boolean flag = val$checkedItems[i];
                val$checkedItems[i] = ainteger.contains(Integer.valueOf(i));
                if (flag != val$checkedItems[i])
                {
                    val$listener.onClick(materialdialog, i, val$checkedItems[i]);
                }
            }

        }
        return true;
    }

    ltiChoice()
    {
        this$0 = final_ltichoice;
        val$checkedItems = aflag;
        val$listener = android.content.ClickListener.this;
        super();
    }
}
