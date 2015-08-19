// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.model.data.DrmManagerAsset;
import com.mautilus.lib.videoview.model.data.VideoViewAsset;
import com.mautilus.lib.videoview.ui.VideoView;
import com.mautilus.lib.videoview.util.DrmManager;
import com.showmax.app.Build;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.UserlistTaskV2;
import com.showmax.app.ui.dialog.LanguagesDialogHelper;
import com.showmax.app.ui.widget.ContentWarningView;
import com.showmax.app.util.MauBug;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.MauUtils;
import com.showmax.app.util.StringUtils;
import com.showmax.app.util.SubtitlesHelper;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Language;
import com.showmax.lib.api.model.catalogue.PlayVideo;
import com.showmax.lib.api.model.catalogue.Video;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.UserPrefs;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityPlayer extends ActivityBase
{
    private class InitPlayerTask extends AsyncTask
    {

        public static final int STATUS_SUCCESS = 0;
        public static final int STATUS_VIDEO_IS_NOT_WIDEVINE = -10;
        private String mRepairedUrl;
        final ActivityPlayer this$0;

        private String appendUserAgent(String s)
        {
            MauLog.v("[APlayer]::[appendUserAgent]::[old url %s]", new Object[] {
                s
            });
            Object obj = s;
            if (s != null)
            {
                obj = s;
                if (!s.isEmpty())
                {
                    String s1 = System.getProperty("http.agent");
                    obj = s;
                    if (s1 != null)
                    {
                        obj = s;
                        if (!s1.isEmpty())
                        {
                            obj = new StringBuilder();
                            ((StringBuilder) (obj)).append(s).append("?");
                            try
                            {
                                ((StringBuilder) (obj)).append(URLEncoder.encode("user_agent", "UTF-8"));
                                ((StringBuilder) (obj)).append("=");
                                ((StringBuilder) (obj)).append(URLEncoder.encode(s1, "UTF-8"));
                            }
                            catch (UnsupportedEncodingException unsupportedencodingexception)
                            {
                                MauLog.e("[APlayer]::[appendUserAgent]::[UnsupportedEncodingException]::[%s]", new Object[] {
                                    s1
                                });
                                return s;
                            }
                            obj = ((StringBuilder) (obj)).toString();
                        }
                    }
                }
            }
            MauLog.v("[APlayer]::[appendUserAgent]::[new url %s]", new Object[] {
                obj
            });
            return ((String) (obj));
        }

        private String httpToWidevine(String s)
        {
            MauLog.v("[APlayer]::[httpToWidevine]::[old url %s]", new Object[] {
                s
            });
            String s1 = s;
            if (s != null)
            {
                s1 = s.replace("http", "widevine");
            }
            MauLog.i("[APlayer]::[httpToWidevine]::[new url %s]", new Object[] {
                s1
            });
            return s1;
        }

        private String repairUrlFromNewApi(String s, String s1)
        {
            MauLog.v("[APlayer]::[repairUrlFromNewApi]::[old url %s]", new Object[] {
                s
            });
            if (s != null && !s.endsWith("wvm"))
            {
                s1 = CatalogueApi.getInstance().loadPlaybackUrl(s1, false);
                if (s1 != null)
                {
                    return ((PlayVideo) (s1)).url;
                }
            }
            MauLog.v("[APlayer]::[repairUrlFromNewApi]::[new url %s]", new Object[] {
                s
            });
            return s;
        }

        protected transient Integer doInBackground(Void avoid[])
        {
            MauLog.d("[APlayer]::[InitPlayerTask]::[Video is DRM protected, preparing Widevine engine]");
            avoid = UserPrefs.getCurrentLanguage(ActivityPlayer.this);
            boolean flag;
            if (mAudioLanguage == null)
            {
                avoid = LanguageUtils.getInstance().convert(avoid);
            } else
            {
                avoid = mAudioLanguage;
            }
            if (mVideoType == com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                avoid = mAsset.getTrailerVideo(avoid);
            } else
            {
                avoid = mAsset.getMainVideo(avoid);
            }
            mRepairedUrl = ((Video) (avoid)).link;
            mVideoId = ((Video) (avoid)).id;
            mRepairedUrl = repairUrlFromNewApi(mRepairedUrl, mVideoId);
            mSubtitlesHelper = new SubtitlesHelper(mSubtitles);
            mSubtitlesHelper.fetchSubtitles(((Video) (avoid)).subtitles);
            if (mRepairedUrl != null && !mRepairedUrl.endsWith("wvm"))
            {
                MauLog.v("[APlayer]::[InitPlayerTask]::[video is not widevine]::[%s]", new Object[] {
                    mRepairedUrl
                });
                mRepairedUrl = appendUserAgent(mRepairedUrl);
                return Integer.valueOf(-10);
            } else
            {
                mRepairedUrl = appendUserAgent(mRepairedUrl);
                mRepairedUrl = httpToWidevine(mRepairedUrl);
                return Integer.valueOf(0);
            }
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected void onPostExecute(Integer integer)
        {
            MauLog.d("[APlayer]::[InitPlayerTask]::[onPostExecute]");
            Object obj = UserPrefs.getCurrentLanguage(ActivityPlayer.this);
            String s;
            boolean flag;
            if (mAudioLanguage == null)
            {
                obj = LanguageUtils.getInstance().convert(((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj)));
            } else
            {
                obj = mAudioLanguage;
            }
            if (mVideoType == com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                obj = mAsset.getTrailerVideo(((Language) (obj)));
            } else
            {
                obj = mAsset.getMainVideo(((Language) (obj)));
            }
            obj = StringUtils.getDuration(((Video) (obj)).duration);
            s = StringUtils.getYear(mAsset.year);
            mPlayerAsset = new PlayerAsset(mRepairedUrl, mAsset.title, ((String) (obj)), s, mAsset.description);
            mVideoView.setAsset(mPlayerAsset, false);
            if (integer.intValue() == -10)
            {
                mVideoView.setDrmEnabled(false);
                showContentWarningAndPlay();
                return;
            } else
            {
                mWidevineAsset = new WidevineAsset(mRepairedUrl, mUserId, getBaseContext());
                mDrmManager = new DrmManager(getBaseContext());
                mDrmManager.setDrmManagerListener(mDrmManagerListener);
                mDrmManager.initDrm(mWidevineAsset);
                return;
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Integer)obj);
        }

        private InitPlayerTask()
        {
            this$0 = ActivityPlayer.this;
            super();
        }

    }

    public class PlayerAsset
        implements VideoViewAsset
    {

        private String mDescription;
        private String mLenght;
        private String mTitle;
        private String mUrl;
        private String mYear;
        final ActivityPlayer this$0;

        public String getDescription()
        {
            return mDescription;
        }

        public String getLenght()
        {
            return mLenght;
        }

        public String getTitle()
        {
            return mTitle;
        }

        public String getUrl()
        {
            return mUrl;
        }

        public String getYear()
        {
            return mYear;
        }

        public PlayerAsset(String s, String s1, String s2, String s3, String s4)
        {
            this$0 = ActivityPlayer.this;
            super();
            mUrl = s;
            mTitle = s1;
            mLenght = s2;
            mYear = s3;
            mDescription = s4;
        }
    }

    public static class WidevineAsset
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

        public WidevineAsset(String s, String s1, Context context)
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


    public static final String BUNDLE_KEY_ASSET = "bundle.key.asset";
    public static final String BUNDLE_KEY_AUDIO_LANGUAGE = "bundle.key.audio.language";
    public static final String BUNDLE_KEY_VIDEO_END_POSITION = "bundle.key.video.end.position";
    public static final String BUNDLE_KEY_VIDEO_TYPE = "bundle.video.type";
    public static final int DELAY_FINISH = 5000;
    private static final boolean LOG = true;
    public static final String TAG = com/showmax/app/ui/ActivityPlayer.getSimpleName();
    private Asset mAsset;
    private Language mAudioLanguage;
    private boolean mClickedWhenPaused;
    private com.showmax.app.ui.widget.ContentWarningView.ContentWarningListener mContentWarningListener;
    private ContentWarningView mContentWarningView;
    private int mCurrentPosition;
    private Runnable mDelayedEnd;
    private DrmManager mDrmManager;
    private com.mautilus.lib.videoview.util.DrmManager.DrmManagerListener mDrmManagerListener;
    private Handler mHandler;
    private PlayerAsset mPlayerAsset;
    private TextView mSubtitles;
    private SubtitlesHelper mSubtitlesHelper;
    private com.showmax.app.ui.dialog.LanguagesDialogHelper.LanguagesDialogListener mSubtitlesLanguagesDialogListener;
    private com.showmax.app.io.UserlistTaskV2.UserlistTaskListener mUpdateEndTimeTaskListener;
    private String mUserId;
    private String mVideoId;
    private com.showmax.lib.api.model.catalogue.Video.Type mVideoType;
    private VideoView mVideoView;
    private com.mautilus.lib.videoview.ui.VideoView.VideoViewListener mVideoViewListener;
    private WidevineAsset mWidevineAsset;

    public ActivityPlayer()
    {
        mSubtitlesLanguagesDialogListener = new com.showmax.app.ui.dialog.LanguagesDialogHelper.LanguagesDialogListener() {

            final ActivityPlayer this$0;

            public void onCancel(int i)
            {
                if (i == 27)
                {
                    MauLog.d("[APlayer]::[onAudioTrackClick]::[onCancelClick]");
                    if (!mClickedWhenPaused)
                    {
                        mVideoView.resume();
                    }
                }
            }

            public void onLanguageSelected(int i, Language language)
            {
                if (i == 27)
                {
                    MauLog.d("[APlayer]::[onAudioTrackClick]::[onOkClick]::[subtitles: %s]", new Object[] {
                        language
                    });
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    if (!mClickedWhenPaused)
                    {
                        mVideoView.resume();
                    }
                    Language language2 = new Language();
                    language2.name = getString(0x7f0d00bd);
                    language2.iso6393 = getString(0x7f0d00bd);
                    SubtitlesHelper subtitleshelper = mSubtitlesHelper;
                    Language language1 = language;
                    if (language.equals(language2))
                    {
                        language1 = null;
                    }
                    subtitleshelper.switchSubtitles(language1, mVideoView.getCurrentPosition());
                    mSubtitlesHelper.setSubtitlesHelperListener(new com.showmax.app.util.SubtitlesHelper.SubtitlesHelperListener() {

                        final _cls1 this$1;

                        public long getCurrentPosition()
                        {
                            return (long)mVideoView.getCurrentPosition();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                    MauFlurry.onPlaybackSubtitleChange(ActivityPlayer.this);
                    if (mVideoId != null)
                    {
                        mCurrentPosition = mVideoView.getCurrentPosition();
                        MauAnalytics.getInstance().onPlaybackSubtitles(null, mVideoId, mCurrentPosition);
                    }
                }
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
        mContentWarningListener = new com.showmax.app.ui.widget.ContentWarningView.ContentWarningListener() {

            final ActivityPlayer this$0;

            public void onCloseClick()
            {
                MauLog.d("[APlayer]::[mContentWarningListener]::[onCloseClick]");
                finish();
            }

            public void onEndShowing()
            {
                MauLog.d("[APlayer]::[mContentWarningListener]::[onEndShowing]");
                mVideoView.loadAndPlay(mCurrentPosition);
            }

            public void onStartFetchingBg()
            {
                MauLog.d("[APlayer]::[mContentWarningListener]::[onStartFetchingBg]");
                mVideoView.showProgress();
            }

            public void onStartShowing(boolean flag)
            {
                MauLog.d("[APlayer]::[mContentWarningListener]::[onStartShowing]::[success: %b]", new Object[] {
                    Boolean.valueOf(flag)
                });
                mVideoView.hideProgress();
            }

            public void onWatchClick()
            {
                MauLog.d("[APlayer]::[mContentWarningListener]::[onWatchClick]");
                mVideoView.loadAndPlay(mCurrentPosition);
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
        mDrmManagerListener = new com.mautilus.lib.videoview.util.DrmManager.DrmManagerListener() {

            final ActivityPlayer this$0;

            public void onDrmError(String s)
            {
                MauLog.v("[APlayer]::[DrmManagerListener]::[onDrmError]::[%s]", new Object[] {
                    s
                });
                if (mVideoViewListener != null)
                {
                    mVideoViewListener.onDrmError(s);
                }
            }

            public void onInitFinished(boolean flag, int i)
            {
                MauLog.v("[APlayer]::[mDrmManagerListener]::[onInitFinished]::[success %b]", new Object[] {
                    Boolean.valueOf(flag)
                });
                if (flag)
                {
                    mVideoView.setDrmManagerAsset(mWidevineAsset);
                    mVideoView.setDrmEnabled(true);
                    showContentWarningAndPlay();
                    return;
                } else
                {
                    MauBug.getInstance().sendDrmError(String.valueOf(i));
                    mVideoView.showMessage(0x7f0d00b0);
                    delayedFinish();
                    return;
                }
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
        mVideoViewListener = new com.mautilus.lib.videoview.ui.VideoView.VideoViewListener() {

            final ActivityPlayer this$0;

            public void onBackClicked()
            {
                MauLog.v("[APlayer]::[mVideoViewListener]::[onBackClicked]");
                finish();
            }

            public void onDrmError(String s)
            {
                MauLog.v("[APlayer]::[onDrmError]::[%s]", new Object[] {
                    s
                });
                MauBug.getInstance().sendDrmError(s);
            }

            public void onDrmInitSuccessful(boolean flag, int i)
            {
                MauLog.v("[APlayer]::[onDrmInitSuccessful]::[success %b]", new Object[] {
                    Boolean.valueOf(flag)
                });
            }

            public void onPauseClick()
            {
                MauLog.v("[APlayer]::[onPauseClick]");
                MauFlurry.onPlaybackPause(ActivityPlayer.this);
                if (mVideoId != null)
                {
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    MauAnalytics.getInstance().onPlaybackPause(null, mVideoId, mCurrentPosition);
                }
            }

            public void onPlaybackError(boolean flag, int i, int j)
            {
                String s;
                String s1;
                int k;
                s1 = "UNKNOWN WHAT";
                s = "UNKNOWN EXTRA";
                k = 0x7f0d00af;
                i;
                JVM INSTR lookupswitch 2: default 40
            //                           1: 162
            //                           100: 162;
                   goto _L1 _L2 _L2
_L1:
                j;
                JVM INSTR lookupswitch 5: default 92
            //                           -1010: 205
            //                           -1007: 180
            //                           -1004: 169
            //                           -110: 194
            //                           200: 187;
                   goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
                MauLog.e("[APlayer]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]", new Object[] {
                    Integer.valueOf(i), Integer.valueOf(j), s1, s
                });
                MauBug.getInstance().sendPlaybackError(flag, i, j, s1, s);
                if (flag)
                {
                    mVideoView.showMessage(k);
                    delayedFinish();
                }
                return;
_L2:
                s1 = "MEDIA_ERROR_UNKNOWN";
                  goto _L1
_L6:
                s = "MEDIA_ERROR_IO";
                k = 0x7f0d00ab;
                  goto _L3
_L5:
                s = "MEDIA_ERROR_MALFORMED";
                  goto _L3
_L8:
                s = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
                  goto _L3
_L7:
                s = "MEDIA_ERROR_TIMED_OUT";
                k = 0x7f0d00ab;
                  goto _L3
_L4:
                s = "MEDIA_ERROR_UNSUPPORTED";
                  goto _L3
            }

            public void onPlaybackFinished()
            {
                MauLog.v("[APlayer]::[mVideoViewListener]::[onPlaybackFinished]");
                delayedFinish();
            }

            public void onPlaybackInfo(int i, int j)
            {
                MauLog.v("[APlayer]::[mVideoViewListener]::[onPlaybackInfo]");
                if (i == 700)
                {
                    MauFlurry.onPlaybackLongBuffering(ActivityPlayer.this);
                }
                if (i == 701 && mVideoId != null)
                {
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    MauAnalytics.getInstance().onPlaybackBufferUnderrun(null, mVideoId, mCurrentPosition);
                }
                if (i == 702 && mVideoId != null)
                {
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    MauAnalytics.getInstance().onPlaybackResumeUnderrun(null, mVideoId, mCurrentPosition);
                }
            }

            public void onPrepared()
            {
                if (mVideoId != null)
                {
                    MauAnalytics.getInstance().onPlaybackStart(null, mVideoId, mCurrentPosition);
                }
            }

            public void onResumeClick()
            {
                MauLog.v("[APlayer]::[onResumeClick]");
                MauFlurry.onPlaybackResume(ActivityPlayer.this);
                if (mVideoId != null)
                {
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    MauAnalytics.getInstance().onPlaybackResume(null, mVideoId, mCurrentPosition);
                }
            }

            public void onSeekEnd(long l)
            {
                MauLog.v("[APlayer]::[onSeekEnd]");
                mSubtitlesHelper.syncAfterSeek(l);
                mSubtitlesHelper.start();
                MauFlurry.onPlaybackSeek(ActivityPlayer.this);
                if (mVideoId != null)
                {
                    mCurrentPosition = mVideoView.getCurrentPosition();
                    MauAnalytics.getInstance().onPlaybackSeek(null, mVideoId, mCurrentPosition);
                }
            }

            public void onSeekStart(long l)
            {
                MauLog.v("[APlayer]::[onSeekStart]");
                mSubtitlesHelper.stop();
            }

            public void onSubtitlesSelectionClicked()
            {
                boolean flag = true;
                MauLog.v("[APlayer]::[mVideoViewListener]::[onSubtitlesSelectionClicked]");
                Object obj;
                if (mVideoView.isPlaying())
                {
                    mClickedWhenPaused = false;
                    mVideoView.pause();
                } else
                {
                    mClickedWhenPaused = true;
                }
                obj = UserPrefs.getCurrentLanguage(ActivityPlayer.this);
                if (mAudioLanguage == null)
                {
                    obj = LanguageUtils.getInstance().convert(((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj)));
                } else
                {
                    obj = mAudioLanguage;
                }
                if (mVideoType != com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
                {
                    flag = false;
                }
                if (flag)
                {
                    obj = mAsset.getTrailerVideo(((Language) (obj)));
                } else
                {
                    obj = mAsset.getMainVideo(((Language) (obj)));
                }
                obj = ((Video) (obj)).getAvailableSubtitles();
                showAudioTrackDialog(((ArrayList) (obj)), mSubtitlesHelper.getCurrentSubtitles());
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
        mUpdateEndTimeTaskListener = new com.showmax.app.io.UserlistTaskV2.UserlistTaskListener() {

            final ActivityPlayer this$0;

            public void onUserlistTaskFinished(com.showmax.app.io.UserlistTaskV2.Type type, int i)
            {
                MauLog.v("[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[onUserlistTaskFinished]");
            }

            public void syncUserlist(Userlist userlist)
            {
                MauLog.v("[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[syncUserlist]");
                UserPrefs.setUserlist(getApplicationContext(), userlist);
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
        mDelayedEnd = new Runnable() {

            final ActivityPlayer this$0;

            public void run()
            {
                finish();
            }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
        };
    }

    private void delayedFinish()
    {
        MauLog.v("[APlayer]::[delayedFinish]");
        if (mHandler == null)
        {
            mHandler = new Handler();
        }
        mHandler.removeCallbacks(mDelayedEnd);
        mHandler.postDelayed(mDelayedEnd, 5000L);
    }

    private void initData(Bundle bundle)
    {
        boolean flag = true;
        Bundle bundle1;
        if (bundle != null)
        {
            flag = false;
        }
        MauLog.v("[APlayer]::[initData]::[savedInstanceState is null: %b]", new Object[] {
            Boolean.valueOf(flag)
        });
        bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = getIntent().getExtras();
        }
        if (bundle1 != null)
        {
            mAsset = (Asset)bundle1.getParcelable("bundle.key.asset");
            mAudioLanguage = (Language)bundle1.getParcelable("bundle.key.audio.language");
            mVideoType = com.showmax.lib.api.model.catalogue.Video.Type.fromOrdinal(bundle1.getInt("bundle.video.type"));
            mCurrentPosition = bundle1.getInt("bundle.key.video.end.position", mCurrentPosition);
            mUserId = UserPrefs.getUserId(this);
            if (mUserId == null || mUserId.isEmpty())
            {
                mUserId = "anonymous";
            }
            mUserId = mUserId.replace(":", "-");
            mUserId = mUserId.replace("/", "-");
        }
    }

    private void initViews()
    {
        MauLog.v("[APlayer]::[initViews]");
        mHandler = new Handler();
        mVideoView = (VideoView)findViewById(0x7f0b00a3);
        mVideoView.setVideoViewListener(mVideoViewListener);
        mVideoView.enableControls();
        mVideoView.setTopContainer(0x7f03007f);
        mVideoView.setMiddleContainer(0x7f03007e);
        mVideoView.setBottomContainer(0x7f03007d);
        mVideoView.initCustomControls(0, 0x7f0b0181, 0x7f0b017f, 0x7f0b0180, 0x7f0b0182, 0x7f0b0183, 0x7f0b0179, 0x7f0b017b, 0x7f0b017c, 0x7f0b017d, 0x7f0b0172, 0x7f0b0174, 0x7f0b0173, 0x7f0b0175, 0x7f020053, 0x7f020054);
        mVideoView.setDrmEnabled(true);
        mVideoView.setMovieDetailEnabled(true);
        Object obj = UserPrefs.getCurrentLanguage(this);
        boolean flag;
        if (mAudioLanguage == null)
        {
            obj = LanguageUtils.getInstance().convert(((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj)));
        } else
        {
            obj = mAudioLanguage;
        }
        if (mVideoType == com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
        {
            obj = mAsset.getTrailerVideo(((Language) (obj))).getAvailableSubtitles();
        } else
        {
            obj = mAsset.getMainVideo(((Language) (obj))).getAvailableSubtitles();
        }
        if (obj != null && !((ArrayList) (obj)).isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mVideoView.setSubtitlesSelectionEnabled(flag);
        mVideoView.setVolumeControlsEnabled(true);
        mContentWarningView = (ContentWarningView)findViewById(0x7f0b00a4);
        mSubtitles = mVideoView.getSubtitlesTextView();
    }

    private void saveEndTimeOnServer()
    {
        if (mVideoType != com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
        {
            MauLog.d("[ActivityPlayer]::[saveEndTimeOnServer]::[end at %d]", new Object[] {
                Integer.valueOf(mCurrentPosition)
            });
            if (mCurrentPosition >= 10000)
            {
                int i = mVideoView.getDuration();
                Video video = mAsset.getMainVideo(mAudioLanguage);
                if (i - mCurrentPosition < 10000)
                {
                    UserlistTaskV2.execute(UserlistTaskV2.newAddToRecentlyWatchedTask(mAsset, video.id, 0, mUpdateEndTimeTaskListener), UserPrefs.getUserAccessData(getApplicationContext())[0], UserPrefs.getUserId(getApplicationContext()));
                    return;
                } else
                {
                    UserlistTaskV2.execute(UserlistTaskV2.newAddToRecentlyWatchedTask(mAsset, video.id, mCurrentPosition / 1000, mUpdateEndTimeTaskListener), UserPrefs.getUserAccessData(getApplicationContext())[0], UserPrefs.getUserId(getApplicationContext()));
                    return;
                }
            }
        }
    }

    private void showContentWarningAndPlay()
    {
        MauLog.v("[APlayer]::[showContentWarningAndPlay]");
        com.showmax.lib.api.model.catalogue.ContentWarning contentwarning = mAsset.contentWarning;
        if (contentwarning != null)
        {
            mContentWarningView.initData(contentwarning);
            mContentWarningView.setOnContentWarningBtnClickListener(mContentWarningListener);
            mContentWarningView.showContentWarning();
            return;
        } else
        {
            mVideoView.loadAndPlay(mCurrentPosition);
            return;
        }
    }

    public static void startActivityPlayer(Activity activity, com.showmax.lib.api.model.catalogue.Video.Type type, Asset asset, Language language, int i)
    {
        Intent intent = new Intent(activity, com/showmax/app/ui/ActivityPlayer);
        intent.putExtra("bundle.key.asset", asset);
        intent.putExtra("bundle.key.audio.language", language);
        intent.putExtra("bundle.video.type", type.ordinal());
        intent.putExtra("bundle.key.video.end.position", i * 1000);
        activity.startActivity(intent);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001e);
        initData(bundle);
        initViews();
        if (mVideoType == com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
        {
            MauFlurry.onNavPlaybackTrailer(this);
        } else
        {
            MauFlurry.onNavPlaybackContent(this);
        }
        if (MauUtils.isNetworkAccessible(this))
        {
            mVideoView.showProgress();
            (new InitPlayerTask()).execute(new Void[0]);
            return;
        } else
        {
            MauLog.w("[APlayer]::[onCreate]::[There is no internet connection...]", new Object[0]);
            mVideoView.showMessage(0x7f0d00ab);
            delayedFinish();
            return;
        }
    }

    protected void onDestroy()
    {
        MauFlurry.onNavPlaybackExit(this);
        if (mVideoView != null)
        {
            mVideoView.cleanUp();
        }
        if (mSubtitlesHelper != null)
        {
            mSubtitlesHelper.stop();
        }
        if (mVideoId != null)
        {
            MauAnalytics.getInstance().onPlaybackStop(null, mVideoId, mCurrentPosition);
        }
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        mCurrentPosition = mVideoView.getCurrentPosition();
        mVideoView.resumeFromBackground();
        mVideoView.pause();
        saveEndTimeOnServer();
    }

    protected void onResume()
    {
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        MauLog.v("[APlayer]::[onSaveInstanceState]");
        bundle.putParcelable("bundle.key.asset", mAsset);
        bundle.putParcelable("bundle.key.audio.language", mAudioLanguage);
        bundle.putInt("bundle.video.type", mVideoType.ordinal());
        bundle.putInt("bundle.key.video.end.position", mCurrentPosition);
        super.onSaveInstanceState(bundle);
    }

    public void showAudioTrackDialog(ArrayList arraylist, Language language)
    {
        if (arraylist == null)
        {
            return;
        }
        Language language1 = new Language();
        language1.name = getString(0x7f0d00bd);
        language1.iso6393 = getString(0x7f0d00bd);
        ArrayList arraylist1 = new ArrayList(arraylist);
        arraylist1.add(0, language1);
        if (language == null)
        {
            arraylist = language1;
        } else
        {
            arraylist = language;
        }
        LanguagesDialogHelper.getInstance().showLanguageDialog(this, 27, 0x7f0d0093, arraylist1, arraylist, mSubtitlesLanguagesDialogListener);
    }





/*
    static PlayerAsset access$1002(ActivityPlayer activityplayer, PlayerAsset playerasset)
    {
        activityplayer.mPlayerAsset = playerasset;
        return playerasset;
    }

*/


/*
    static int access$102(ActivityPlayer activityplayer, int i)
    {
        activityplayer.mCurrentPosition = i;
        return i;
    }

*/




/*
    static WidevineAsset access$1202(ActivityPlayer activityplayer, WidevineAsset widevineasset)
    {
        activityplayer.mWidevineAsset = widevineasset;
        return widevineasset;
    }

*/




/*
    static DrmManager access$1402(ActivityPlayer activityplayer, DrmManager drmmanager)
    {
        activityplayer.mDrmManager = drmmanager;
        return drmmanager;
    }

*/







/*
    static boolean access$302(ActivityPlayer activityplayer, boolean flag)
    {
        activityplayer.mClickedWhenPaused = flag;
        return flag;
    }

*/



/*
    static SubtitlesHelper access$402(ActivityPlayer activityplayer, SubtitlesHelper subtitleshelper)
    {
        activityplayer.mSubtitlesHelper = subtitleshelper;
        return subtitleshelper;
    }

*/



/*
    static String access$502(ActivityPlayer activityplayer, String s)
    {
        activityplayer.mVideoId = s;
        return s;
    }

*/




}
