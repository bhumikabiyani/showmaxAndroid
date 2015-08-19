// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.drm.DrmInfoEvent;
import android.drm.DrmManagerClient;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            DrmManager

class this._cls0
    implements android.drm.ent.OnInfoListener
{

    final DrmManager this$0;

    public void onInfo(DrmManagerClient drmmanagerclient, DrmInfoEvent drminfoevent)
    {
        int i = drminfoevent.getType();
        switch (i)
        {
        default:
            return;

        case 5: // '\005'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_ACCOUNT_ALREADY_REGISTERED]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 1: // '\001'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 2: // '\002'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_REMOVE_RIGHTS]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 3: // '\003'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_RIGHTS_INSTALLED]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 6: // '\006'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_RIGHTS_REMOVED]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 4: // '\004'
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_WAIT_FOR_RIGHTS]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 1001: 
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_ALL_RIGHTS_REMOVED]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 1002: 
            MauLog.i("[DrmManager]::[onInfo]::[%d TYPE_DRM_INFO_PROCESSED]", new Object[] {
                Integer.valueOf(i)
            });
            break;
        }
    }

    ()
    {
        this$0 = DrmManager.this;
        super();
    }
}
