// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.showmax.lib.api.model.catalogue.Language;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class this._cls0
    implements com.showmax.app.ui.dialog..LanguagesDialogListener
{

    final ActivityBaseDetail this$0;

    public void onCancel(int i)
    {
    }

    public void onLanguageSelected(int i, Language language)
    {
        switch (i)
        {
        default:
            return;

        case 25: // '\031'
            ActivityBaseDetail.access$102(ActivityBaseDetail.this, language);
            syncUserListsForPlayback();
            return;

        case 26: // '\032'
            startPlayback(com.showmax.lib.api.model.catalogue.yback, mAsset, language, 0);
            break;
        }
    }

    uage()
    {
        this$0 = ActivityBaseDetail.this;
        super();
    }
}
