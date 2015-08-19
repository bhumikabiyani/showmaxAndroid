// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.animation.Animation;

// Referenced classes of package com.showmax.app.ui.widget:
//            ContentWarningView

class this._cls0
    implements android.view.animation.stener
{

    final ContentWarningView this$0;

    public void onAnimationEnd(Animation animation)
    {
        ContentWarningView.access$400(ContentWarningView.this);
        setVisibility(8);
        if (ContentWarningView.access$000(ContentWarningView.this) != null && !ContentWarningView.access$100(ContentWarningView.this))
        {
            ContentWarningView.access$000(ContentWarningView.this).onEndShowing();
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ntentWarningListener()
    {
        this$0 = ContentWarningView.this;
        super();
    }
}
