// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.widget.EditText;
import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.afollestad.materialdialogs.prefs:
//            MaterialEditTextPreference

class > extends com.afollestad.materialdialogs.
{

    final MaterialEditTextPreference this$0;

    public void onPositive(MaterialDialog materialdialog)
    {
        materialdialog = getEditText().getText().toString();
        if (MaterialEditTextPreference.access$000(MaterialEditTextPreference.this, materialdialog) && isPersistent())
        {
            setText(materialdialog);
        }
    }

    ()
    {
        this$0 = MaterialEditTextPreference.this;
        super();
    }
}
