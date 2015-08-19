// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;


// Referenced classes of package com.afollestad.materialdialogs:
//            AlertDialogWrapper, MaterialDialog

class  extends 
{

    final this._cls0 this$0;

    public void onNegative(MaterialDialog materialdialog)
    {
        if (cess._mth300(this._cls0.this) != null)
        {
            cess._mth300(this._cls0.this).onClick(materialdialog, -2);
        }
    }

    public void onNeutral(MaterialDialog materialdialog)
    {
        if (cess._mth100(this._cls0.this) != null)
        {
            cess._mth100(this._cls0.this).onClick(materialdialog, -3);
        }
    }

    public void onPositive(MaterialDialog materialdialog)
    {
        if (cess._mth200(this._cls0.this) != null)
        {
            cess._mth200(this._cls0.this).onClick(materialdialog, -1);
        }
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
