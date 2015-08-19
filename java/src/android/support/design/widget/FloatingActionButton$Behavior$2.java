// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.animation.Animation;

// Referenced classes of package android.support.design.widget:
//            FloatingActionButton

class Adapter extends Adapter
{

    final this._cls0 this$0;
    final FloatingActionButton val$button;

    public void onAnimationEnd(Animation animation)
    {
        cess._mth302(this._cls0.this, false);
        val$button.setVisibility(8);
    }

    public void onAnimationStart(Animation animation)
    {
        cess._mth302(this._cls0.this, true);
    }

    Adapter()
    {
        this$0 = final_adapter;
        val$button = FloatingActionButton.this;
        super();
    }
}
