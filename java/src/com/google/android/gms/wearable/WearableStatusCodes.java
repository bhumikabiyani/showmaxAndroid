// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import com.google.android.gms.common.api.CommonStatusCodes;

public final class WearableStatusCodes extends CommonStatusCodes
{

    public static final int ASSET_UNAVAILABLE = 4005;
    public static final int DATA_ITEM_TOO_LARGE = 4003;
    public static final int DUPLICATE_LISTENER = 4001;
    public static final int INVALID_TARGET_NODE = 4004;
    public static final int TARGET_NODE_NOT_CONNECTED = 4000;
    public static final int UNKNOWN_LISTENER = 4002;

    private WearableStatusCodes()
    {
    }

    public static String getStatusCodeString(int i)
    {
        switch (i)
        {
        default:
            return CommonStatusCodes.getStatusCodeString(i);

        case 4000: 
            return "TARGET_NODE_NOT_CONNECTED";

        case 4001: 
            return "DUPLICATE_LISTENER";

        case 4002: 
            return "UNKNOWN_LISTENER";

        case 4003: 
            return "DATA_ITEM_TOO_LARGE";

        case 4004: 
            return "INVALID_TARGET_NODE";

        case 4005: 
            return "ASSET_UNAVAILABLE";
        }
    }
}
