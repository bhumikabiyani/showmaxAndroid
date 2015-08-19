// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import com.mautilus.lib.videoview.model.data.DrmManagerAsset;
import com.showmax.app.Build;
import com.showmax.app.ShowMaxApp;
import com.showmax.lib.api.io.CatalogueApi;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

public static class mUserData
    implements DrmManagerAsset
{

    private String mDeviceKey;
    private String mPortalKey;
    private String mServerKey;
    private String mUrlKey;
    private String mUserData;

    public String getDeviceIdKey()
    {
        return mDeviceKey;
    }

    public String getPortalKey()
    {
        return mPortalKey;
    }

    public String getServerKey()
    {
        return mServerKey;
    }

    public String getUrlKey()
    {
        return mUrlKey;
    }

    public String getUserDataKey()
    {
        return mUserData;
    }

    public Asset(String s, String s1, Context context)
    {
        mPortalKey = Build.getInstance().DRM_PORTAL;
        mUserData = "{\"userId\":\"%s\",\"sessionId\":\"default\"}";
        mServerKey = CatalogueApi.getInstance().getDrmLicenceServerUrl();
        mUrlKey = s;
        mDeviceKey = ShowMaxApp.getInstance().getDeviceId();
        mUserData = String.format(mUserData, new Object[] {
            s1
        });
    }
}
