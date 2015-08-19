// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.ui.VideoView;
import com.mautilus.lib.videoview.util.DrmManager;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.PlayVideo;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public class FragmentSplashTestTrailer extends FragmentBase
{
    public static interface FragmentSplashTestTrailerListener
    {

        public abstract void onPlaybackError();

        public abstract void onPlaybackFinished();

        public abstract void onSkipClick();
    }


    public static final String TAG = com/showmax/app/ui/fragment/FragmentSplashTestTrailer.getSimpleName();
    private static final int WELCOME_VIDEO_SKIP_LIMIT = 5000;
    private com.mautilus.lib.videoview.util.DrmManager.DrmManagerListener mDrmManagerListener;
    private ApiCallback mFetchVideoUrlCallback;
    private FragmentSplashTestTrailerListener mListener;
    private android.view.View.OnClickListener mOnSkipClickListener;
    private TextView mSkip;
    private VideoView mVideoView;
    private com.mautilus.lib.videoview.ui.VideoView.VideoViewListener mVideoViewListener;

    public FragmentSplashTestTrailer()
    {
        mOnSkipClickListener = new android.view.View.OnClickListener() {

            final FragmentSplashTestTrailer this$0;

            public void onClick(View view)
            {
                finishWelcomeVideo();
                mListener.onSkipClick();
            }

            
            {
                this$0 = FragmentSplashTestTrailer.this;
                super();
            }
        };
        mVideoViewListener = new com.mautilus.lib.videoview.ui.VideoView.VideoViewListener() {

            final FragmentSplashTestTrailer this$0;

            public void onBackClicked()
            {
            }

            public void onDrmError(String s)
            {
            }

            public void onDrmInitSuccessful(boolean flag, int i)
            {
            }

            public void onPauseClick()
            {
            }

            public void onPlaybackError(boolean flag, int i, int j)
            {
                mListener.onPlaybackError();
            }

            public void onPlaybackFinished()
            {
                finishWelcomeVideo();
                mListener.onPlaybackFinished();
            }

            public void onPlaybackInfo(int i, int j)
            {
            }

            public void onPrepared()
            {
                mVideoView.resume();
                showSkipDelayed();
            }

            public void onResumeClick()
            {
            }

            public void onSeekEnd(long l)
            {
            }

            public void onSeekStart(long l)
            {
            }

            public void onSubtitlesSelectionClicked()
            {
            }

            
            {
                this$0 = FragmentSplashTestTrailer.this;
                super();
            }
        };
        mDrmManagerListener = new com.mautilus.lib.videoview.util.DrmManager.DrmManagerListener() {

            final FragmentSplashTestTrailer this$0;

            public void onDrmError(String s)
            {
            }

            public void onInitFinished(boolean flag, int i)
            {
                if (flag)
                {
                    mVideoView.loadAndPlay(0);
                    return;
                } else
                {
                    mListener.onPlaybackError();
                    return;
                }
            }

            
            {
                this$0 = FragmentSplashTestTrailer.this;
                super();
            }
        };
        mFetchVideoUrlCallback = new ApiCallback() {

            final FragmentSplashTestTrailer this$0;

            public void failure(int i)
            {
                EventBus.getInstance().post(new ApiErrorEvent(getError()));
                mListener.onPlaybackError();
            }

            public void success(PlayVideo playvideo, int i)
            {
                playvideo = appendUserAgent(httpToWidevine(playvideo.url));
                startWelcomeVideo(playvideo);
            }

            public volatile void success(Object obj, int i)
            {
                success((PlayVideo)obj, i);
            }

            
            {
                this$0 = FragmentSplashTestTrailer.this;
                super();
            }
        };
    }

    private String appendUserAgent(String s)
    {
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
                            MauLog.e("[ActivitySplash]::[appendUserAgent]::[UnsupportedEncodingException]::[%s]", new Object[] {
                                s1
                            });
                            return s;
                        }
                        obj = ((StringBuilder) (obj)).toString();
                    }
                }
            }
        }
        return ((String) (obj));
    }

    private void finishWelcomeVideo()
    {
        mVideoView.suspend();
    }

    private String httpToWidevine(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s.replace("http", "widevine");
        }
        return s1;
    }

    private void initWelcomeVideo()
    {
        mVideoView.showProgress();
        CatalogueApi.getInstance().loadWelcomeVideoUrl(mFetchVideoUrlCallback);
    }

    public static FragmentSplashTestTrailer newInstance()
    {
        MauLog.v("[_FragmentSplashTestTrailer]::[newInstance]");
        FragmentSplashTestTrailer fragmentsplashtesttrailer = new FragmentSplashTestTrailer();
        fragmentsplashtesttrailer.setArguments(new Bundle());
        return fragmentsplashtesttrailer;
    }

    private void showSkipDelayed()
    {
        (new Handler()).postDelayed(new Runnable() {

            final FragmentSplashTestTrailer this$0;

            public void run()
            {
                mSkip.setVisibility(0);
            }

            
            {
                this$0 = FragmentSplashTestTrailer.this;
                super();
            }
        }, 5000L);
    }

    private void startWelcomeVideo(String s)
    {
        s = new com.showmax.app.ui.ActivityPlayer.WidevineAsset(s, "anonymous", getActivity());
        DrmManager drmmanager = new DrmManager(getActivity());
        drmmanager.setDrmManagerListener(mDrmManagerListener);
        drmmanager.initDrm(s);
        mVideoView.setDrmManagerAsset(s);
        mVideoView.setDrmEnabled(true);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        initWelcomeVideo();
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mListener = (FragmentSplashTestTrailerListener)activity;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new IllegalStateException("Activity must implement fragment's callbacks.");
        }
        super.onAttach(activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030048, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mListener = null;
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        mVideoView = (VideoView)view.findViewById(0x7f0b0132);
        mVideoView.setVideoViewListener(mVideoViewListener);
        mSkip = (TextView)view.findViewById(0x7f0b0133);
        mSkip.setOnClickListener(mOnSkipClickListener);
    }









}
