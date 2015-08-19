// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.util;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.afollestad.materialdialogs.util:
//            DialogUtils

static final class val.builder
    implements Runnable
{

    final com.afollestad.materialdialogs..Builder val$builder;
    final MaterialDialog val$dialog;

    public void run()
    {
        val$dialog.getInputEditText().requestFocus();
        InputMethodManager inputmethodmanager = (InputMethodManager)val$builder.getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.showSoftInput(val$dialog.getInputEditText(), 1);
        }
    }

    der(MaterialDialog materialdialog, com.afollestad.materialdialogs..Builder builder1)
    {
        val$dialog = materialdialog;
        val$builder = builder1;
        super();
    }
}
