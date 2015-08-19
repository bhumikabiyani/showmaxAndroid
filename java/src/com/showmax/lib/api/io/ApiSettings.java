// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import com.mautilus.lib.common.util.MauLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants

public class ApiSettings
    implements ApiConstants
{
    public static class Builder
    {

        private static final ApiConstants.ApiEnvironment DEFAULT_API_ENVIRONMENT;
        private static final ApiConstants.ApiProtocol DEFAULT_API_PROTOCOL;
        private static final ApiConstants.ApiPlatform DEFAULT_PLATFORM;
        private static final String DEFAULT_VERSION = "v6.0";
        private String mDeviceId;
        private ApiConstants.ApiEnvironment mEnvironment;
        private boolean mFullLogs;
        private ApiConstants.ApiPlatform mPlatform;
        private ApiConstants.ApiProtocol mProtocol;
        private String mVersion;

        public ApiSettings build()
        {
            if (mEnvironment == null)
            {
                mEnvironment = DEFAULT_API_ENVIRONMENT;
            }
            if (mProtocol == null)
            {
                mProtocol = DEFAULT_API_PROTOCOL;
            }
            if (mPlatform == null)
            {
                mPlatform = DEFAULT_PLATFORM;
            }
            if (mVersion == null)
            {
                mVersion = "v6.0";
            }
            return new ApiSettings(this);
        }

        public Builder deviceId(String s)
        {
            mDeviceId = s;
            return this;
        }

        public Builder environment(ApiConstants.ApiEnvironment apienvironment)
        {
            mEnvironment = apienvironment;
            return this;
        }

        public Builder fullLogs(boolean flag)
        {
            mFullLogs = flag;
            return this;
        }

        public Builder platform(ApiConstants.ApiPlatform apiplatform)
        {
            mPlatform = apiplatform;
            return this;
        }

        public Builder protocol(ApiConstants.ApiProtocol apiprotocol)
        {
            mProtocol = apiprotocol;
            return this;
        }

        public Builder version(String s)
        {
            mVersion = s;
            return this;
        }

        static 
        {
            DEFAULT_API_ENVIRONMENT = ApiConstants.ApiEnvironment.IO;
            DEFAULT_API_PROTOCOL = ApiConstants.ApiProtocol.HTTP;
            DEFAULT_PLATFORM = ApiConstants.ApiPlatform.ANDROID;
        }







        public Builder()
        {
        }
    }


    private static final boolean LOG = true;
    private String mApiVersion;
    private String mDeviceId;
    private ApiConstants.ApiEnvironment mEnvironment;
    private boolean mFullLogs;
    private ApiConstants.ApiPlatform mPlatform;
    private ApiConstants.ApiProtocol mProtocol;

    private ApiSettings()
    {
    }

    private ApiSettings(Builder builder)
    {
        mEnvironment = builder.mEnvironment;
        mProtocol = builder.mProtocol;
        mPlatform = builder.mPlatform;
        mApiVersion = builder.mVersion;
        mDeviceId = builder.mDeviceId;
        mFullLogs = builder.mFullLogs;
        MauLog.d("[ApiSettings]::[%s]::[%s]::[%s]::[%s]::[Full logs: %b]", new Object[] {
            mProtocol, mEnvironment, mApiVersion, mDeviceId, Boolean.valueOf(mFullLogs)
        });
    }


    public String getApiEndpoint()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mProtocol).append("://").append("api.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform);
        MauLog.d("[ApiSettings]::[getApiEndpoint]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getAuthEndpoint()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mProtocol).append("://").append("secure.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform);
        MauLog.d("[ApiSettings]::[getAuthEndpoint]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getDeviceId()
    {
        return mDeviceId;
    }

    public String getDrmLicenceServerUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mProtocol).append("://").append("api.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform).append("/drm/widevine");
        MauLog.d("[ApiSettings]::[getDrmLicenceServerUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getLogEndpoint()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mProtocol).append("://").append("log.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform);
        MauLog.d("[ApiSettings]::[getLogEndpoint]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getMyAccountWebPageUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("https").append("://").append("secure.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform).append("/").append("profile");
        MauLog.d("[ApiSettings]::[getMyAccountWebPageUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getPurchaseAssetUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("https").append("://").append("secure.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform).append("/").append("payment").append("/").append("assets").append("/");
        MauLog.d("[ApiSettings]::[getPurchaseAssetUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getRedirectUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(ApiConstants.ApiProtocol.HTTP).append("://").append("www.showmax.").append(mEnvironment);
        MauLog.d("[ApiSettings]::[getRedirectUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getSignInPageUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = stringbuilder.append("https").append("://").append("secure.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform).append("/signin?response_type=token&client_id=");
        String s;
        if (mPlatform == ApiConstants.ApiPlatform.ANDROID)
        {
            s = "ixeephiphaixop0nu7iefai9hie2reipheiveexu";
        } else
        {
            s = "null";
        }
        stringbuilder1.append(s).append("&").append("redirect_uri=").append(getRedirectUrl());
        MauLog.d("[ApiSettings]::[getSignInPageUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getSignUpPageUrl()
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = stringbuilder.append("https").append("://").append("secure.showmax").append(".").append(mEnvironment).append("/").append(mApiVersion).append("/").append(mPlatform).append("/signup?response_type=token&client_id=");
        String s;
        if (mPlatform == ApiConstants.ApiPlatform.ANDROID)
        {
            s = "ixeephiphaixop0nu7iefai9hie2reipheiveexu";
        } else
        {
            s = "null";
        }
        stringbuilder1.append(s).append("&").append("redirect_uri=").append(getRedirectUrl());
        MauLog.d("[ApiSettings]::[getSignUpPageUrl]::[%s]", new Object[] {
            stringbuilder.toString()
        });
        return stringbuilder.toString();
    }

    public String getUserAgent()
    {
        String s = System.getProperty("http.agent");
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s;
        }
        return s1;
    }

    public boolean isFullLogsEnabled()
    {
        return mFullLogs;
    }
}
