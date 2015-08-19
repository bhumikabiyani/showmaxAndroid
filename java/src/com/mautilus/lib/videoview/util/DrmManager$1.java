// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.drm.DrmErrorEvent;
import android.drm.DrmManagerClient;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            DrmManager

class this._cls0
    implements android.drm.ent.OnErrorListener
{

    final DrmManager this$0;

    public void onError(DrmManagerClient drmmanagerclient, DrmErrorEvent drmerrorevent)
    {
        int i = drmerrorevent.getType();
        i;
        JVM INSTR lookupswitch 10: default 96
    //                   1001: 320
    //                   1002: 343
    //                   2001: 136
    //                   2002: 297
    //                   2003: 205
    //                   2004: 228
    //                   2005: 159
    //                   2006: 251
    //                   2007: 274
    //                   2008: 182;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        drmmanagerclient = "UNKNOWN";
_L13:
        MauLog.e("[DrmManager]::[onError]::[%s]", new Object[] {
            drmmanagerclient
        });
        if (DrmManager.access$100(DrmManager.this) != null)
        {
            DrmManager.access$100(DrmManager.this).onDrmError(drmmanagerclient);
        }
        return;
_L4:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_RIGHTS_NOT_INSTALLED").toString();
        continue; /* Loop/switch isn't completed */
_L8:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_NO_INTERNET_CONNECTION").toString();
        continue; /* Loop/switch isn't completed */
_L11:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_ACQUIRE_DRM_INFO_FAILED").toString();
        continue; /* Loop/switch isn't completed */
_L6:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_NOT_SUPPORTED").toString();
        continue; /* Loop/switch isn't completed */
_L7:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_OUT_OF_MEMORY").toString();
        continue; /* Loop/switch isn't completed */
_L9:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_PROCESS_DRM_INFO_FAILED").toString();
        continue; /* Loop/switch isn't completed */
_L10:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_REMOVE_ALL_RIGHTS_FAILED").toString();
        continue; /* Loop/switch isn't completed */
_L5:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_RIGHTS_RENEWAL_NOT_ALLOWED").toString();
        continue; /* Loop/switch isn't completed */
_L2:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_ALL_RIGHTS_REMOVED").toString();
        continue; /* Loop/switch isn't completed */
_L3:
        drmmanagerclient = (new StringBuilder()).append(i).append(" TYPE_DRM_INFO_PROCESSED").toString();
        if (true) goto _L13; else goto _L12
_L12:
    }

    mManagerListener()
    {
        this$0 = DrmManager.this;
        super();
    }
}
