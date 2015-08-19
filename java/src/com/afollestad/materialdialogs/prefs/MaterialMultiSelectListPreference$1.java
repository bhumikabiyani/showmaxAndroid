// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import com.afollestad.materialdialogs.MaterialDialog;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.afollestad.materialdialogs.prefs:
//            MaterialMultiSelectListPreference

class this._cls0
    implements com.afollestad.materialdialogs.ce
{

    final MaterialMultiSelectListPreference this$0;

    public boolean onSelection(MaterialDialog materialdialog, Integer ainteger[], CharSequence acharsequence[])
    {
        onClick(null, -1);
        materialdialog.dismiss();
        materialdialog = new HashSet();
        int j = ainteger.length;
        for (int i = 0; i < j; i++)
        {
            int k = ainteger[i].intValue();
            materialdialog.add(getEntryValues()[k].toString());
        }

        if (MaterialMultiSelectListPreference.access$000(MaterialMultiSelectListPreference.this, materialdialog))
        {
            setValues(materialdialog);
        }
        return true;
    }

    ()
    {
        this$0 = MaterialMultiSelectListPreference.this;
        super();
    }
}
