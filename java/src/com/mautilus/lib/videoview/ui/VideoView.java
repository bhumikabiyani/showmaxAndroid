// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.model.data.DrmManagerAsset;
import com.mautilus.lib.videoview.model.data.VideoViewAsset;
import com.mautilus.lib.videoview.util.DrmManager;
import com.mautilus.lib.videoview.util.SystemUiHider;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController, VideoSurface

public class VideoView extends FrameLayout
{
    protected static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private final int currentPosition;
        private final boolean resumeFromBackground;

        public int getCurrentPosition()
        {
            return currentPosition;
        }

        public boolean isResumedFromBackground()
        {
            return resumeFromBackground;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(currentPosition);
            if (resumeFromBackground)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
        }


        private SavedState(Parcel parcel)
        {
            boolean flag = true;
            super(parcel);
            currentPosition = parcel.readInt();
            if (parcel.readInt() != 1)
            {
                flag = false;
            }
            resumeFromBackground = flag;
        }


        private SavedState(Parcelable parcelable, int i, boolean flag)
        {
            super(parcelable);
            currentPosition = i;
            resumeFromBackground = flag;
        }

    }

    public static interface VideoViewListener
    {

        public abstract void onBackClicked();

        public abstract void onDrmError(String s);

        public abstract void onDrmInitSuccessful(boolean flag, int i);

        public abstract void onPauseClick();

        public abstract void onPlaybackError(boolean flag, int i, int j);

        public abstract void onPlaybackFinished();

        public abstract void onPlaybackInfo(int i, int j);

        public abstract void onPrepared();

        public abstract void onResumeClick();

        public abstract void onSeekEnd(long l);

        public abstract void onSeekStart(long l);

        public abstract void onSubtitlesSelectionClicked();
    }


    private static final int DEFAULT_MAX_ERROR_RECOVERIES = 3;
    private static final boolean LOG = true;
    private static final String TEST_URL = "http://pmd.servustv.com/nongeoblock/IMG13_Coudenhove_0825_high.mp4";
    private int mCurrentPosition;
    private boolean mDrmEnabled;
    private DrmManagerAsset mDrmManagerAsset;
    private int mDuration;
    private int mErrorRecoveriesCount;
    private int mMaxErrorRecoveries;
    private TextView mMessageTxtView;
    private PlayerController.OnBackClickListener mOnBackClickListener = new PlayerController.OnBackClickListener() {

        final VideoView this$0;

        public void onBackClick()
        {
            MauLog.v("[VideoView]::[mOnBackClickListener]::[onBackClick]");
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onBackClicked();
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private VideoSurface.OnBufferingChangeListener mOnBufferingChangeListener = new VideoSurface.OnBufferingChangeListener() {

        final VideoView this$0;

        public void onBufferingChange(boolean flag)
        {
            if (flag && mVideoSurface.isPlaying())
            {
                MauLog.v("[VideoView]::[mOnBufferingChangeListener]::[onBufferingChange]::[stop buffering]");
                hideProgress();
                return;
            } else
            {
                MauLog.v("[VideoView]::[mOnBufferingChangeListener]::[onBufferingChange]::[start buffering]");
                showProgress();
                return;
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnCompletionListener mOnCompletionListener = new android.media.MediaPlayer.OnCompletionListener() {

        final VideoView this$0;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            MauLog.v("[VideoView]::[mOnCompletionListener]::[onCompletion]");
            mVideoSurface.suspend();
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onPlaybackFinished();
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnErrorListener mOnErrorListener = new android.media.MediaPlayer.OnErrorListener() {

        final VideoView this$0;

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            String s;
            s = "UNKNOWN WHAT";
            mediaplayer = "UNKNOWN EXTRA";
            i;
            JVM INSTR lookupswitch 2: default 36
        //                       1: 131
        //                       100: 131;
               goto _L1 _L2 _L2
_L1:
            j;
            JVM INSTR lookupswitch 5: default 88
        //                       -1010: 162
        //                       -1007: 144
        //                       -1004: 138
        //                       -110: 156
        //                       200: 150;
               goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
            MauLog.e("[VideoView]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j), s, mediaplayer
            });
            handleError(i, j);
            return true;
_L2:
            s = "MEDIA_ERROR_UNKNOWN";
              goto _L1
_L6:
            mediaplayer = "MEDIA_ERROR_IO";
              goto _L3
_L5:
            mediaplayer = "MEDIA_ERROR_MALFORMED";
              goto _L3
_L8:
            mediaplayer = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
              goto _L3
_L7:
            mediaplayer = "MEDIA_ERROR_TIMED_OUT";
              goto _L3
_L4:
            mediaplayer = "MEDIA_ERROR_UNSUPPORTED";
              goto _L3
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnInfoListener mOnInfoListener = new android.media.MediaPlayer.OnInfoListener() {

        final VideoView this$0;

        public boolean onInfo(MediaPlayer mediaplayer, int i, int j)
        {
            i;
            JVM INSTR lookupswitch 8: default 76
        //                       1: 255
        //                       3: 281
        //                       700: 307
        //                       701: 151
        //                       702: 177
        //                       800: 125
        //                       801: 229
        //                       802: 203;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[DEFAULT]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
_L11:
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onPlaybackInfo(i, j);
            }
            return true;
_L7:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BAD_INTERLEAVING]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L5:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BUFFERING_START]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L6:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BUFFERING_END]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L9:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_METADATA_UPDATE]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L8:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_NOT_SEEKABLE]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L2:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_UNKNOWN]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L3:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_VIDEO_RENDERING_START]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            continue; /* Loop/switch isn't completed */
_L4:
            MauLog.i("[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_VIDEO_TRACK_LAGGING]", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j)
            });
            if (true) goto _L11; else goto _L10
_L10:
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private PlayerController.OnPlayButtonListener mOnPlayButtonListener = new PlayerController.OnPlayButtonListener() {

        final VideoView this$0;

        public void onPauseClick()
        {
            MauLog.v("[VideoView]::[mOnPlayButtonListener]::[onPauseClick]");
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onPauseClick();
            }
        }

        public void onResumeClick()
        {
            MauLog.v("[VideoView]::[mOnPlayButtonListener]::[onResumeClick]");
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onResumeClick();
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnPreparedListener mOnPreparedListener = new android.media.MediaPlayer.OnPreparedListener() {

        final VideoView this$0;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            mDuration = mVideoSurface.getDuration();
            MauLog.v("[VideoView]::[mOnPreparedListener]::[onPrepared]::[current position: %d]::[duration %d]::[resumed from background: %b]", new Object[] {
                Integer.valueOf(mCurrentPosition), Integer.valueOf(mDuration), Boolean.valueOf(mResumeFromBackground)
            });
            if (mCurrentPosition > 0 && mCurrentPosition < mDuration)
            {
                mVideoSurface.seekTo(mCurrentPosition);
            }
            if (!mResumeFromBackground)
            {
                if (mPlayerControls.isControlsVisible())
                {
                    mPlayerControls.hideControls();
                }
                mVideoSurface.start();
            } else
            {
                mPlayerControls.show();
            }
            hideProgress();
            mPlayerControls.setEnabled(true);
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onPrepared();
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private PlayerController.OnSeekListener mOnSeekListener = new PlayerController.OnSeekListener() {

        final VideoView this$0;

        public void onStartSeek(long l)
        {
            MauLog.v("[VideoView]::[mOnSeekListener]::[onStartSeek]::[current position: %d]", new Object[] {
                Long.valueOf(l)
            });
            MauLog.d("[VideoView]::[onStartSeek]::[position %d]", new Object[] {
                Long.valueOf(l)
            });
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onSeekStart(l);
            }
        }

        public void onStopSeek(long l)
        {
            MauLog.v("[VideoView]::[mOnSeekListener]::[onStopSeek]::[current position: %d]", new Object[] {
                Long.valueOf(l)
            });
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onSeekEnd(l);
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private PlayerController mPlayerControls;
    private ProgressBar mProgressBar;
    private boolean mResumeFromBackground;
    private boolean mShowMovieDetail;
    private boolean mShowSubtitlesSelection;
    private boolean mShowVolumeControls;
    private PlayerController.onSubtitlesBtnClickListener mSubtitlesSelectionListener = new PlayerController.onSubtitlesBtnClickListener() {

        final VideoView this$0;

        public void onSubtitlesBtnClick()
        {
            MauLog.v("[VideoView]::[mSubtitlesSelectionListener]::[onSubtitlesBtnClick]");
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onSubtitlesSelectionClicked();
            }
        }

            
            {
                this$0 = VideoView.this;
                super();
            }
    };
    private VideoSurface mVideoSurface;
    private VideoViewAsset mVideoViewAsset;
    private VideoViewListener mVideoViewListener;

    public VideoView(Context context)
    {
        super(context);
        mDuration = -1;
        mMaxErrorRecoveries = 3;
        MauLog.v("[VideoView]::[Constructor]");
        init();
    }

    public VideoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mDuration = -1;
        mMaxErrorRecoveries = 3;
        MauLog.v("[VideoView]::[Constructor]");
        init();
    }

    public VideoView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mDuration = -1;
        mMaxErrorRecoveries = 3;
        MauLog.v("[VideoView]::[Constructor]");
        init();
    }

    private void handleError(int i, int j)
    {
        if (mErrorRecoveriesCount < mMaxErrorRecoveries)
        {
            mCurrentPosition = mPlayerControls.getCurrentPosition();
            mErrorRecoveriesCount = mErrorRecoveriesCount + 1;
            mVideoSurface.suspend();
            VideoSurface videosurface = mVideoSurface;
            String s;
            if (mDrmEnabled)
            {
                s = mDrmManagerAsset.getUrlKey();
            } else
            {
                s = mVideoViewAsset.getUrl();
            }
            videosurface.setVideoPath(s);
        } else
        {
            mVideoSurface.suspend();
            if (mVideoViewListener != null)
            {
                mVideoViewListener.onPlaybackError(true, i, j);
                return;
            }
        }
    }

    private void init()
    {
        MauLog.v("[VideoView]::[init]");
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(com.mautilus.lib.videoview.R.layout.view_videoview, this, true);
        setBackgroundColor(0xff000000);
        mPlayerControls = (PlayerController)findViewById(com.mautilus.lib.videoview.R.id.view_videoview_player_controller);
        mVideoSurface = (VideoSurface)findViewById(com.mautilus.lib.videoview.R.id.view_videoview_video_surface);
        mProgressBar = (ProgressBar)findViewById(com.mautilus.lib.videoview.R.id.view_videoview_progress_bar);
        mMessageTxtView = (TextView)findViewById(com.mautilus.lib.videoview.R.id.view_videoview_message);
        mPlayerControls.setVisibility(8);
        mPlayerControls.setOnBackClickListener(mOnBackClickListener);
        mPlayerControls.setOnSubtitlesBtnClickListener(mSubtitlesSelectionListener);
        mPlayerControls.setOnSeekListener(mOnSeekListener);
        mPlayerControls.setOnPlayButtonListener(mOnPlayButtonListener);
        mVideoSurface.setOnCompletionListener(mOnCompletionListener);
        mVideoSurface.setOnPreparedListener(mOnPreparedListener);
        mVideoSurface.setOnErrorListener(mOnErrorListener);
        mVideoSurface.setOnInfoListener(mOnInfoListener);
        mVideoSurface.setOnBufferingChangeListener(mOnBufferingChangeListener);
    }

    public void cleanUp()
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.cleanUp();
        }
    }

    protected void dispatchRestoreInstanceState(SparseArray sparsearray)
    {
        super.dispatchThawSelfOnly(sparsearray);
    }

    protected void dispatchSaveInstanceState(SparseArray sparsearray)
    {
        super.dispatchFreezeSelfOnly(sparsearray);
    }

    public void enableControls()
    {
        android.view.View view = findViewById(com.mautilus.lib.videoview.R.id.view_videoview_click_area_dummy);
        mVideoSurface.setMediaController(mPlayerControls);
        mPlayerControls.setEnabled(false);
        SystemUiHider systemuihider = SystemUiHider.getInstance((Activity)getContext(), view, 6);
        systemuihider.setup();
        mPlayerControls.setSystemUiHider(systemuihider, view);
        mPlayerControls.setVisibility(0);
    }

    public int getCurrentPosition()
    {
        mCurrentPosition = mVideoSurface.getCurrentPosition();
        return mCurrentPosition;
    }

    public int getDuration()
    {
        return mDuration;
    }

    public TextView getSubtitlesTextView()
    {
        return (TextView)findViewById(com.mautilus.lib.videoview.R.id.view_videoview_subtitles);
    }

    public void hideControls()
    {
        MauLog.v("[VideoView]::[hideControls]");
        mPlayerControls.hideControls();
    }

    public void hideMessage()
    {
        MauLog.v("[VideoView]::[hideMessage]");
        mMessageTxtView.setText("");
        mMessageTxtView.setVisibility(8);
    }

    public void hideProgress()
    {
        MauLog.v("[VideoView]::[hideProgress]");
        if (mProgressBar != null && mVideoSurface != null)
        {
            mProgressBar.setVisibility(4);
            mVideoSurface.requestFocus();
        }
    }

    public void initCustomControls(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2, int j2, int k2, int l2, int i3, int j3, 
            int k3, int l3)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.initCustomControls(i, j, k, l, i1, j1, k1, l1, i2, j2, k2, l2, i3, j3, k3, l3);
        }
    }

    public boolean isPlaying()
    {
        return mVideoSurface.isPlaying();
    }

    public void loadAndPlay(int i)
    {
        MauLog.v("[VideoView]::[loadAndPlay]::[current position: %d]", new Object[] {
            Integer.valueOf(i)
        });
        showProgress();
        mCurrentPosition = i;
        if (mDrmEnabled)
        {
            DrmManager drmmanager = new DrmManager(getContext());
            drmmanager.setDrmManagerListener(new com.mautilus.lib.videoview.util.DrmManager.DrmManagerListener() {

                final VideoView this$0;

                public void onDrmError(String s)
                {
                    MauLog.v("[VideoView]::[DrmManagerListener]::[onDrmError]::[%s]", new Object[] {
                        s
                    });
                    if (mVideoViewListener != null)
                    {
                        mVideoViewListener.onDrmError(s);
                    }
                }

                public void onInitFinished(boolean flag, int j)
                {
                    MauLog.v("[VideoView]::[DrmManagerListener]::[onInitFinished]::[success: %b]::[status: %d]", new Object[] {
                        Boolean.valueOf(flag), Integer.valueOf(j)
                    });
                    if (flag)
                    {
                        mVideoSurface.setVideoPath(mDrmManagerAsset.getUrlKey());
                    }
                    if (mVideoViewListener != null)
                    {
                        mVideoViewListener.onDrmInitSuccessful(flag, j);
                    }
                }

            
            {
                this$0 = VideoView.this;
                super();
            }
            });
            drmmanager.initDrm(mDrmManagerAsset);
            return;
        } else
        {
            mVideoSurface.setVideoPath(mVideoViewAsset.getUrl());
            return;
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        mCurrentPosition = parcelable.getCurrentPosition();
        mResumeFromBackground = parcelable.isResumedFromBackground();
        MauLog.v("[VideoView]::[onRestoreInstanceState]::[current position: %d]", new Object[] {
            Integer.valueOf(mCurrentPosition)
        });
    }

    public Parcelable onSaveInstanceState()
    {
        Parcelable parcelable = super.onSaveInstanceState();
        mCurrentPosition = mVideoSurface.getCurrentPosition();
        MauLog.v("[VideoView]::[onSaveInstanceState]::[current position: %d]", new Object[] {
            Integer.valueOf(mCurrentPosition)
        });
        mResumeFromBackground = true;
        return new SavedState(parcelable, mCurrentPosition, mResumeFromBackground);
    }

    public void pause()
    {
        MauLog.v("[VideoView]::[pause]");
        mPlayerControls.pause();
    }

    public void resume()
    {
        MauLog.v("[VideoView]::[resume]");
        mPlayerControls.resume();
    }

    public void resumeFromBackground()
    {
        mResumeFromBackground = true;
    }

    public void setAsset(VideoViewAsset videoviewasset, boolean flag)
    {
        MauLog.v("[VideoView]::[setAsset]");
        mVideoViewAsset = videoviewasset;
        mPlayerControls.setAsset(mVideoViewAsset, flag);
    }

    public void setBottomContainer(int i)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.setBottomContainer(i);
        }
    }

    public void setDrmEnabled(boolean flag)
    {
        MauLog.v("[VideoView]::[setDrmEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mDrmEnabled = flag;
    }

    public void setDrmManagerAsset(DrmManagerAsset drmmanagerasset)
    {
        MauLog.v("[VideoView]::[setDrmManagerAsset]");
        mDrmManagerAsset = drmmanagerasset;
    }

    public void setIndeterminateDrawable(Drawable drawable)
    {
        if (mProgressBar != null)
        {
            mProgressBar.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndeterminateDrawableColor(int i)
    {
        if (mProgressBar != null)
        {
            mProgressBar.getIndeterminateDrawable().setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
        }
    }

    public void setMiddleContainer(int i)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.setMiddleContainer(i);
        }
    }

    public void setMovieDetailEnabled(boolean flag)
    {
        MauLog.v("[VideoView]::[setMovieDetailEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mShowMovieDetail = flag;
        mPlayerControls.setMovieDetailEnabled(flag);
    }

    public void setSeekBarsColor(int i)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.setSeekBarsColor(i);
        }
    }

    public void setSubtitlesSelectionEnabled(boolean flag)
    {
        MauLog.v("[VideoView]::[setSubtitlesSelectionEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mShowSubtitlesSelection = flag;
        mPlayerControls.setSubtitlesSelectionEnabled(mShowSubtitlesSelection);
    }

    public void setTopContainer(int i)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.setTopContainer(i);
        }
    }

    public void setTopContainerVisibility(boolean flag)
    {
        if (mPlayerControls != null)
        {
            mPlayerControls.setTopContainerVisibility(flag);
        }
    }

    public void setVideoViewListener(VideoViewListener videoviewlistener)
    {
        MauLog.v("[VideoView]::[setVideoViewListener]");
        mVideoViewListener = videoviewlistener;
    }

    public void setVolumeControlsEnabled(boolean flag)
    {
        MauLog.v("[VideoView]::[setVolumeControlsEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mShowVolumeControls = flag;
        mPlayerControls.setVolumeControlsEnabled(mShowVolumeControls);
    }

    public void showMessage(int i)
    {
        showMessage(getResources().getString(i));
    }

    public void showMessage(String s)
    {
        MauLog.v("[VideoView]::[showMessage]::[%s]", new Object[] {
            s
        });
        mProgressBar.setVisibility(8);
        mMessageTxtView.setText(s);
        mMessageTxtView.setVisibility(0);
    }

    public void showProgress()
    {
        MauLog.v("[VideoView]::[showProgress]");
        if (mProgressBar != null && mVideoSurface != null)
        {
            mProgressBar.setVisibility(0);
            mProgressBar.invalidate();
            mProgressBar.requestLayout();
        }
    }

    public void suspend()
    {
        MauLog.v("[VideoView]::[suspend]");
        mVideoSurface.suspend();
    }






/*
    static int access$302(VideoView videoview, int i)
    {
        videoview.mDuration = i;
        return i;
    }

*/




}
