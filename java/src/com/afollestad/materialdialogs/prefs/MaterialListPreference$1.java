// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.view.View;
import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.afollestad.materialdialogs.prefs:
//            MaterialListPreference

class this._cls0
    implements com.afollestad.materialdialogs.ckSingleChoice
{

    final MaterialListPreference this$0;

    public boolean onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
    {
        onClick(null, -1);
        if (i >= 0 && getEntryValues() != null)
        {
            materialdialog = getEntryValues()[i].toString();
            if (MaterialListPreference.access$000(MaterialListPreference.this, materialdialog) && isPersistent())
            {
                setValue(materialdialog);
            }
        }
        return true;
    }

    leChoice()
    {
        this$0 = MaterialListPreference.this;
        super();
    }
}
