// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

// Referenced classes of package com.afollestad.materialdialogs:
//            MaterialDialog, DialogAction

class this._cls0
    implements TextWatcher
{

    final MaterialDialog this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (mBuilder.alwaysCallInputCallback)
        {
            mBuilder.inputCallback.onInput(MaterialDialog.this, charsequence);
        }
        i = charsequence.toString().trim().length();
        if (!mBuilder.inputAllowEmpty)
        {
            charsequence = getActionButton(DialogAction.POSITIVE);
            boolean flag;
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            charsequence.setEnabled(flag);
        }
        invalidateInputMinMaxIndicator(i);
    }

    putCallback()
    {
        this$0 = MaterialDialog.this;
        super();
    }
}
