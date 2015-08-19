// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.drm.DrmInfoRequest;
import android.drm.DrmManagerClient;
import android.os.AsyncTask;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.model.data.DrmManagerAsset;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            DrmManager

private class <init> extends AsyncTask
{

    private static final int STATUS_DRM_ASSET_IS_INVALID = -12;
    private static final int STATUS_NO_DRM_WIDEVINE_PLUGIN = -10;
    private static final int STATUS_VIDEO_IS_NOT_WIDEVINE = -11;
    final DrmManager this$0;

    protected transient Integer doInBackground(Void avoid[])
    {
        MauLog.d("[DrmManager]::[InitDrmTask]::[Video is DRM protected, preparing Widevine engine.]");
        avoid = new DrmInfoRequest(3, "video/wvm");
        if (DrmManager.access$200(DrmManager.this) == null || DrmManager.access$200(DrmManager.this).getDeviceIdKey() == null || DrmManager.access$200(DrmManager.this).getPortalKey() == null || DrmManager.access$200(DrmManager.this).getServerKey() == null || DrmManager.access$200(DrmManager.this).getUrlKey() == null || DrmManager.access$200(DrmManager.this).getUserDataKey() == null)
        {
            return Integer.valueOf(-12);
        } else
        {
            avoid.put("WVDRMServerKey", DrmManager.access$200(DrmManager.this).getServerKey());
            MauLog.v("[DrmManager]::[InitDrmTask]::[WVDRMServerKey: %s]", new Object[] {
                DrmManager.access$200(DrmManager.this).getServerKey()
            });
            avoid.put("WVAssetURIKey", DrmManager.access$200(DrmManager.this).getUrlKey());
            MauLog.v("[DrmManager]::[InitDrmTask]::[WVAssetURIKey: %s]", new Object[] {
                DrmManager.access$200(DrmManager.this).getUrlKey()
            });
            avoid.put("WVDeviceIDKey", DrmManager.access$200(DrmManager.this).getDeviceIdKey());
            MauLog.v("[DrmManager]::[InitDrmTask]::[WVDeviceIDKey: %s]", new Object[] {
                DrmManager.access$200(DrmManager.this).getDeviceIdKey()
            });
            avoid.put("WVPortalKey", DrmManager.access$200(DrmManager.this).getPortalKey());
            MauLog.v("[DrmManager]::[DRM]::[WVPortalKey: %s]", new Object[] {
                DrmManager.access$200(DrmManager.this).getPortalKey()
            });
            avoid.put("WVCAUserDataKey", DrmManager.access$200(DrmManager.this).getUserDataKey());
            MauLog.v("[DrmManager]::[InitDrmTask]::[WVCAUserDataKey: %s]", new Object[] {
                DrmManager.access$200(DrmManager.this).getUserDataKey()
            });
            int i = DrmManager.access$300(DrmManager.this).acquireRights(avoid);
            MauLog.v("[DrmManager]::[InitDrmTask]::[ACQUIRE %d]", new Object[] {
                Integer.valueOf(i)
            });
            return Integer.valueOf(i);
        }
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(Integer integer)
    {
        boolean flag = true;
        integer.intValue();
        JVM INSTR lookupswitch 5: default 56
    //                   -2000: 93
    //                   -12: 141
    //                   -11: 125
    //                   -10: 109
    //                   0: 157;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_157;
_L7:
        if (DrmManager.access$100(DrmManager.this) != null)
        {
            stener stener = DrmManager.access$100(DrmManager.this);
            if (integer.intValue() != 0)
            {
                flag = false;
            }
            stener.onInitFinished(flag, integer.intValue());
        }
        return;
_L2:
        MauLog.e("[DrmManager]::[InitDrmTask]::[onPostExecute]::[ERROR_UNKNOWN]", new Object[] {
            integer
        });
          goto _L7
_L5:
        MauLog.e("[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_NO_DRM_WIDEVINE_PLUGIN]", new Object[] {
            integer
        });
          goto _L7
_L4:
        MauLog.w("[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_VIDEO_IS_NOT_WIDEVINE]", new Object[] {
            integer
        });
          goto _L7
_L3:
        MauLog.e("[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_DRM_ASSET_IS_INVALID]", new Object[] {
            integer
        });
          goto _L7
        MauLog.d("[DrmManager]::[InitDrmTask]::[onPostExecute]::[ERROR_NONE]", new Object[] {
            integer
        });
          goto _L7
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Integer)obj);
    }

    private stener()
    {
        this$0 = DrmManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
