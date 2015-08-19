// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.widget.VideoView;

public class n extends VideoView
{

    public n(Context context)
    {
        super(context);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public void seekTo(int i)
    {
        if (i < getCurrentPosition())
        {
            super.seekTo(i);
        }
    }
}
