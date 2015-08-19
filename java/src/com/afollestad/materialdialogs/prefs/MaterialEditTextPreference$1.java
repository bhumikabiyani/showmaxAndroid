// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.content.DialogInterface;
import android.text.Editable;
import android.widget.EditText;

// Referenced classes of package com.afollestad.materialdialogs.prefs:
//            MaterialEditTextPreference

class this._cls0
    implements android.content.r
{

    final MaterialEditTextPreference this$0;

    public void onShow(DialogInterface dialoginterface)
    {
        if (getEditText().getText().length() > 0)
        {
            getEditText().setSelection(getEditText().length());
        }
    }

    ()
    {
        this$0 = MaterialEditTextPreference.this;
        super();
    }
}
