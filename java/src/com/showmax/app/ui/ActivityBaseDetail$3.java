// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;


// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class this._cls0
    implements com.showmax.app.ui.dialog.mpleDialogListener
{

    final ActivityBaseDetail this$0;

    public void onCancel(int i)
    {
        if (55 != i);
    }

    public void onNegativeButtonClick(int i)
    {
        if (55 == i)
        {
            startPlayback(com.showmax.lib.api.model.catalogue.Listener, mAsset, ActivityBaseDetail.access$100(ActivityBaseDetail.this), 0);
        }
    }

    public void onNeutralButtonClick(int i)
    {
        if (55 != i);
    }

    public void onPositiveButtonClick(int i)
    {
        if (55 == i)
        {
            startPlayback(com.showmax.lib.api.model.catalogue.Listener, mAsset, ActivityBaseDetail.access$100(ActivityBaseDetail.this), ActivityBaseDetail.access$400(ActivityBaseDetail.this));
        }
    }

    o.Type()
    {
        this$0 = ActivityBaseDetail.this;
        super();
    }
}
