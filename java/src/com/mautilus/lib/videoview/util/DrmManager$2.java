// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.drm.DrmEvent;
import android.drm.DrmManagerClient;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            DrmManager

class this._cls0
    implements android.drm.ent.OnEventListener
{

    final DrmManager this$0;

    public void onEvent(DrmManagerClient drmmanagerclient, DrmEvent drmevent)
    {
        int i = drmevent.getType();
        switch (i)
        {
        default:
            return;

        case 1002: 
            MauLog.i("[DrmManager]::[onEvent]::[%d TYPE_DRM_INFO_PROCESSED]", new Object[] {
                Integer.valueOf(i)
            });
            return;

        case 1001: 
            MauLog.i("[DrmManager]::[onEvent]::[%d TYPE_ALL_RIGHTS_REMOVED]", new Object[] {
                Integer.valueOf(i)
            });
            return;
        }
    }

    ()
    {
        this$0 = DrmManager.this;
        super();
    }
}
