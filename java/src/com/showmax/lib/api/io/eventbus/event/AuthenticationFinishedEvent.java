// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.eventbus.event;

import android.content.Intent;

public class AuthenticationFinishedEvent
{

    private Intent mData;
    private int mResultCode;

    public AuthenticationFinishedEvent(int i, Intent intent)
    {
        mData = intent;
        mResultCode = i;
    }

    public Intent getData()
    {
        return mData;
    }

    public int getResultCode()
    {
        return mResultCode;
    }
}
