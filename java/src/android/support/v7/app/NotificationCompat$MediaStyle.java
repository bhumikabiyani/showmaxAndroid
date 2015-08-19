// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.PendingIntent;

// Referenced classes of package android.support.v7.app:
//            NotificationCompat

public static class setBuilder extends android.support.v4.app.setBuilder
{

    int mActionsToShowInCompact[];
    PendingIntent mCancelButtonIntent;
    boolean mShowCancelButton;
    android.support.v4.media.session.lButton mToken;

    public void setCancelButtonIntent(PendingIntent pendingintent)
    {
        mCancelButtonIntent = pendingintent;
    }

    public oken setMediaSession(android.support.v4.media.session.tonIntent tonintent)
    {
        mToken = tonintent;
        return this;
    }

    public transient mToken setShowActionsInCompactView(int ai[])
    {
        mActionsToShowInCompact = ai;
        return this;
    }

    public void setShowCancelButton(boolean flag)
    {
        mShowCancelButton = flag;
    }

    public oken()
    {
        mActionsToShowInCompact = null;
    }

    public mActionsToShowInCompact(android.support.v4.app.mActionsToShowInCompact mactionstoshowincompact)
    {
        mActionsToShowInCompact = null;
        setBuilder(mactionstoshowincompact);
    }
}
