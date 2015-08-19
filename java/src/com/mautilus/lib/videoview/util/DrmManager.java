// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.content.Context;
import android.drm.DrmErrorEvent;
import android.drm.DrmEvent;
import android.drm.DrmInfoEvent;
import android.drm.DrmInfoRequest;
import android.drm.DrmManagerClient;
import android.os.AsyncTask;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.model.data.DrmManagerAsset;

public class DrmManager
{
    public static interface DrmManagerListener
    {

        public abstract void onDrmError(String s);

        public abstract void onInitFinished(boolean flag, int i);
    }

    private class InitDrmTask extends AsyncTask
    {

        private static final int STATUS_DRM_ASSET_IS_INVALID = -12;
        private static final int STATUS_NO_DRM_WIDEVINE_PLUGIN = -10;
        private static final int STATUS_VIDEO_IS_NOT_WIDEVINE = -11;
        final DrmManager this$0;

        protected transient Integer doInBackground(Void avoid[])
        {
            MauLog.d("[DrmManager]::[InitDrmTask]::[Video is DRM protected, preparing Widevine engine.]");
            avoid = new DrmInfoRequest(3, "video/wvm");
            if (mAsset == null || mAsset.getDeviceIdKey() == null || mAsset.getPortalKey() == null || mAsset.getServerKey() == null || mAsset.getUrlKey() == null || mAsset.getUserDataKey() == null)
            {
                return Integer.valueOf(-12);
            } else
            {
                avoid.put("WVDRMServerKey", mAsset.getServerKey());
                MauLog.v("[DrmManager]::[InitDrmTask]::[WVDRMServerKey: %s]", new Object[] {
                    mAsset.getServerKey()
                });
                avoid.put("WVAssetURIKey", mAsset.getUrlKey());
                MauLog.v("[DrmManager]::[InitDrmTask]::[WVAssetURIKey: %s]", new Object[] {
                    mAsset.getUrlKey()
                });
                avoid.put("WVDeviceIDKey", mAsset.getDeviceIdKey());
                MauLog.v("[DrmManager]::[InitDrmTask]::[WVDeviceIDKey: %s]", new Object[] {
                    mAsset.getDeviceIdKey()
                });
                avoid.put("WVPortalKey", mAsset.getPortalKey());
                MauLog.v("[DrmManager]::[DRM]::[WVPortalKey: %s]", new Object[] {
                    mAsset.getPortalKey()
                });
                avoid.put("WVCAUserDataKey", mAsset.getUserDataKey());
                MauLog.v("[DrmManager]::[InitDrmTask]::[WVCAUserDataKey: %s]", new Object[] {
                    mAsset.getUserDataKey()
                });
                int i = mDrmManagerClient.acquireRights(avoid);
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
        //                       -2000: 93
        //                       -12: 141
        //                       -11: 125
        //                       -10: 109
        //                       0: 157;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
            break; /* Loop/switch isn't completed */
_L6:
            break MISSING_BLOCK_LABEL_157;
_L7:
            if (mListener != null)
            {
                DrmManagerListener drmmanagerlistener = mListener;
                if (integer.intValue() != 0)
                {
                    flag = false;
                }
                drmmanagerlistener.onInitFinished(flag, integer.intValue());
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

        private InitDrmTask()
        {
            this$0 = DrmManager.this;
            super();
        }

    }


    private DrmManagerAsset mAsset;
    private DrmManagerClient mDrmManagerClient;
    private DrmManagerListener mListener;
    private android.drm.DrmManagerClient.OnErrorListener mOnErrorListener;
    private android.drm.DrmManagerClient.OnEventListener mOnEventListener;
    private android.drm.DrmManagerClient.OnInfoListener mOnInfoListener;

    public DrmManager(Context context)
    {
        mOnErrorListener = new android.drm.DrmManagerClient.OnErrorListener() {

            final DrmManager this$0;

            public void onError(DrmManagerClient drmmanagerclient, DrmErrorEvent drmerrorevent)
            {
                int i = drmerrorevent.getType();
                i;
                JVM INSTR lookupswitch 10: default 96
            //                           1001: 320
            //                           1002: 343
            //                           2001: 136
            //                           2002: 297
            //                           2003: 205
            //                           2004: 228
            //                           2005: 159
            //                           2006: 251
            //                           2007: 274
            //                           2008: 182;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
                drmmanagerclient = "UNKNOWN";
_L13:
                MauLog.e("[DrmManager]::[onError]::[%s]", new Object[] {
                    drmmanagerclient
                });
                if (mListener != null)
                {
                    mListener.onDrmError(drmmanagerclient);
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

            
            {
                this$0 = DrmManager.this;
                super();
            }
        };
        mOnEventListener = new android.drm.DrmManagerClient.OnEventListener() {

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

            
            {
                this$0 = DrmManager.this;
                super();
            }
        };
        mOnInfoListener = new android.drm.DrmManagerClient.OnInfoListener() {

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

            
            {
                this$0 = DrmManager.this;
                super();
            }
        };
        mDrmManagerClient = new DrmManagerClient(context);
        prepareDrm();
    }

    private void prepareDrm()
    {
        mDrmManagerClient.setOnErrorListener(mOnErrorListener);
        mDrmManagerClient.setOnEventListener(mOnEventListener);
        mDrmManagerClient.setOnInfoListener(mOnInfoListener);
        String as[] = mDrmManagerClient.getAvailableDrmEngines();
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            MauLog.d("[DrmManager]::[prepareDrm]::[available engines: %s]", new Object[] {
                as[i]
            });
        }

    }

    public void initDrm(DrmManagerAsset drmmanagerasset)
    {
        mAsset = drmmanagerasset;
        (new InitDrmTask()).execute(new Void[0]);
    }

    public void setDrmManagerListener(DrmManagerListener drmmanagerlistener)
    {
        mListener = drmmanagerlistener;
    }



}
