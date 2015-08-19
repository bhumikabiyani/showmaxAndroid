// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

// Referenced classes of package android.support.design.widget:
//            FloatingActionButton

class this._cls0
    implements ViewPropertyAnimatorListener
{

    final this._cls0 this$0;

    public void onAnimationCancel(View view)
    {
        cess._mth302(this._cls0.this, false);
    }

    public void onAnimationEnd(View view)
    {
        cess._mth302(this._cls0.this, false);
        view.setVisibility(8);
    }

    public void onAnimationStart(View view)
    {
        cess._mth302(this._cls0.this, true);
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
