// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.model.data.VideoViewAsset;
import com.mautilus.lib.videoview.util.SystemUiHider;
import java.util.Formatter;
import java.util.Locale;

public class PlayerController extends FrameLayout
{
    public static interface MediaPlayerControl
    {

        public abstract int getBufferPercentage();

        public abstract int getCurrentPosition();

        public abstract int getDuration();

        public abstract boolean isPlaying();

        public abstract void pause();

        public abstract void seekTo(int i);

        public abstract void start();
    }

    public static interface OnBackClickListener
    {

        public abstract void onBackClick();
    }

    public static interface OnBufferingChangeListener
    {

        public abstract void onBufferingChange(boolean flag);
    }

    public static interface OnPlayButtonListener
    {

        public abstract void onPauseClick();

        public abstract void onResumeClick();
    }

    public static interface OnSeekListener
    {

        public abstract void onStartSeek(long l);

        public abstract void onStopSeek(long l);
    }

    public class SettingsContentObserver extends ContentObserver
    {

        final PlayerController this$0;

        public boolean deliverSelfNotifications()
        {
            return super.deliverSelfNotifications();
        }

        public void onChange(boolean flag)
        {
            MauLog.v("[PlayerController]::[SettingsContentObserver]::[onChange]");
            if (mVolumeSeekBar != null)
            {
                mVolumeSeekBar.setProgress(getCurrentVolumeFromAudioManager());
            }
        }

        public SettingsContentObserver(Context context, Handler handler)
        {
            this$0 = PlayerController.this;
            super(handler);
        }
    }

    public static interface onSubtitlesBtnClickListener
    {

        public abstract void onSubtitlesBtnClick();
    }


    private static final int FADE_OUT = 1;
    public static final int HIDER_FLAGS = 6;
    private static final boolean LOG = true;
    private static final int SHOW_PROGRESS = 2;
    private boolean mAutoHide;
    private int mAutoHideDelayMs;
    private View mBackIconIv;
    private ViewGroup mBottomContainer;
    private int mCurrentPosition;
    private TextView mCurrentTime;
    private android.view.View.OnTouchListener mDelayHideTouchListener = new android.view.View.OnTouchListener() {

        final PlayerController this$0;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            boolean flag;
label0:
            {
                flag = true;
                MauLog.v("[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[%s]::[%s]", new Object[] {
                    view.getClass().getSimpleName(), view.getResources().getResourceName(view.getId())
                });
                if (mAutoHide)
                {
                    MauLog.v("[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[delayedHide]");
                    if (mPlayer != null)
                    {
                        break label0;
                    }
                }
                return false;
            }
            if (view.getId() != mPauseBtnId || mPlayer == null || !mPlayer.isPlaying())
            {
                flag = false;
            }
            if (flag)
            {
                removeAnyPendingDelayedHide();
                return false;
            } else
            {
                delayedHide(mAutoHideDelayMs);
                return false;
            }
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private boolean mDragging;
    StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private Handler mHandler = new Handler() {

        final PlayerController this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1 2: default 28
        //                       1 28
        //                       2 29;
               goto _L1 _L1 _L2
_L1:
            return;
_L2:
            int i = setProgress();
            if (!mDragging && mPlayer != null && mPlayer.isPlaying())
            {
                sendMessageDelayed(obtainMessage(2), 1000 - i % 1000);
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private Handler mHideHandler;
    private Runnable mHideRunnable = new Runnable() {

        final PlayerController this$0;

        public void run()
        {
            if (mSystemUiHider != null && !mMovieDetailShown)
            {
                mSystemUiHider.hide();
            }
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private ViewGroup mMiddleContainer;
    private TextView mMiddleMovieDetailDescription;
    private TextView mMiddleMovieDetailLength;
    private TextView mMiddleMovieDetailTitle;
    private TextView mMiddleMovieDetailYear;
    private boolean mMovieDetailEnabled;
    private boolean mMovieDetailShown;
    private android.widget.CompoundButton.OnCheckedChangeListener mMuteListener = new android.widget.CompoundButton.OnCheckedChangeListener() {

        private boolean mMuted;
        private int mTempVolumeProgress;
        final PlayerController this$0;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (mVolumeSeekBar != null)
            {
                if (!mMuted)
                {
                    mTempVolumeProgress = getCurrentVolumeFromAudioManager();
                    mMuted = true;
                    setVolumeMuted(true);
                    if (mVolumeSeekBar != null)
                    {
                        mVolumeSeekBar.setProgress(0);
                    }
                    mVolumeSeekBar.setEnabled(false);
                } else
                {
                    mMuted = false;
                    setVolumeMuted(false);
                    mVolumeSeekBar.setEnabled(true);
                    if (mVolumeSeekBar != null)
                    {
                        mVolumeSeekBar.setProgress(getCurrentVolumeFromAudioManager());
                        return;
                    }
                }
            }
        }

            
            {
                this$0 = PlayerController.this;
                super();
                mMuted = false;
                mTempVolumeProgress = 0;
            }
    };
    private ToggleButton mMuteToggleBtn;
    private OnBackClickListener mOnBackClickListener;
    private OnPlayButtonListener mOnPlayListener;
    private OnSeekListener mOnSeekListener;
    private com.mautilus.lib.videoview.util.SystemUiHider.OnVisibilityChangeListener mOnVisibilityChangeListener = new com.mautilus.lib.videoview.util.SystemUiHider.OnVisibilityChangeListener() {

        private int mBottomContainerHeight;
        private int mShortAnimTime;
        private int mTopContainerHeight;
        final PlayerController this$0;

        public void onVisibilityChange(boolean flag)
        {
            float f1 = 0.0F;
            boolean flag1 = false;
            MauLog.v("[PlayerController]::[onVisibilityChange]::[visible %b]", new Object[] {
                Boolean.valueOf(flag)
            });
            if (android.os.Build.VERSION.SDK_INT >= 13)
            {
                if (mTopContainerHeight == 0 || mBottomContainerHeight == 0)
                {
                    mTopContainerHeight = mTopContainer.getHeight();
                    mBottomContainerHeight = mBottomContainer.getHeight();
                }
                if (mShortAnimTime == 0)
                {
                    mShortAnimTime = getResources().getInteger(0x10e0000);
                }
                ViewPropertyAnimator viewpropertyanimator = mBottomContainer.animate();
                float f;
                if (flag)
                {
                    f = 0.0F;
                } else
                {
                    f = mBottomContainerHeight;
                }
                viewpropertyanimator.translationY(f).setDuration(mShortAnimTime);
                viewpropertyanimator = mTopContainer.animate();
                if (flag)
                {
                    f = f1;
                } else
                {
                    f = -mBottomContainerHeight;
                }
                viewpropertyanimator.translationY(f).setDuration(mShortAnimTime);
            } else
            {
                ViewGroup viewgroup = mBottomContainer;
                int i;
                if (flag)
                {
                    i = 0;
                } else
                {
                    i = 8;
                }
                viewgroup.setVisibility(i);
                viewgroup = mTopContainer;
                if (flag)
                {
                    i = ((flag1) ? 1 : 0);
                } else
                {
                    i = 8;
                }
                viewgroup.setVisibility(i);
            }
            if (flag)
            {
                show();
            } else
            {
                hide();
            }
            if (flag && mAutoHide)
            {
                MauLog.v("[PlayerController]::[onVisibilityChange]::[delayedHide]");
                delayedHide(mAutoHideDelayMs);
            }
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private int mPauseBtnId;
    private int mPauseDrawableId;
    private android.view.View.OnClickListener mPauseListener = new android.view.View.OnClickListener() {

        final PlayerController this$0;

        public void onClick(View view)
        {
            MauLog.v("[PlayerController]::[mPauseListener]::[onClick]");
            if (isPlaying())
            {
                mOnPlayListener.onPauseClick();
            } else
            {
                mOnPlayListener.onResumeClick();
            }
            doPauseResume();
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private ImageButton mPauseResumeBtn;
    private int mPlayDrawableId;
    private SeekBar mPlaybackSeekBar;
    private MediaPlayerControl mPlayer;
    private android.widget.SeekBar.OnSeekBarChangeListener mSeekListener = new android.widget.SeekBar.OnSeekBarChangeListener() {

        final PlayerController this$0;

        public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
            if (flag && mPlayer != null)
            {
                long l = mPlayer.getDuration();
                l = ((long)i * l) / 1000L;
                mPlayer.seekTo((int)l);
                if (mCurrentTime != null)
                {
                    mCurrentTime.setText(stringForTime((int)l));
                    return;
                }
            }
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
            if (mPlayer == null)
            {
                return;
            }
            if (mOnSeekListener != null)
            {
                mOnSeekListener.onStartSeek(mPlayer.getCurrentPosition());
            }
            show();
            mDragging = true;
            mHandler.removeMessages(2);
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
            if (mPlayer == null)
            {
                return;
            }
            if (mOnSeekListener != null)
            {
                mOnSeekListener.onStopSeek(mPlayer.getCurrentPosition());
            }
            mDragging = false;
            setProgress();
            updatePauseResumeBtnDrawables();
            show();
            mHandler.sendEmptyMessage(2);
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };
    private Button mSubtitlesBtn;
    private boolean mSubtitlesSelectionEnabled;
    private onSubtitlesBtnClickListener mSubtitlesSelectionListener;
    private SystemUiHider mSystemUiHider;
    private TextView mTitleTv;
    private ViewGroup mTopContainer;
    private int mTopIconResId;
    private TextView mTotalTime;
    private VideoViewAsset mVideoViewAsset;
    private boolean mVolumeControlsEnabled;
    private SettingsContentObserver mVolumeObserver;
    private SeekBar mVolumeSeekBar;
    private android.widget.SeekBar.OnSeekBarChangeListener mVolumeSeekListener = new android.widget.SeekBar.OnSeekBarChangeListener() {

        final PlayerController this$0;

        public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
            MauLog.v("[PlayerController]::[mVolumeSeekListener]::onProgressChanged]::[%d]::[fromUser: %b]", new Object[] {
                Integer.valueOf(i), Boolean.valueOf(flag)
            });
            if (mVolumeSeekBar != null && flag)
            {
                setCurrentVolumeForAudioManager(i);
            }
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
        }

            
            {
                this$0 = PlayerController.this;
                super();
            }
    };

    public PlayerController(Context context)
    {
        super(context);
        mCurrentPosition = 0;
        mAutoHide = true;
        mAutoHideDelayMs = 5000;
        mHideHandler = new Handler();
        MauLog.v("[PlayerController]::[Constructor]");
        initControllerView();
    }

    public PlayerController(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mCurrentPosition = 0;
        mAutoHide = true;
        mAutoHideDelayMs = 5000;
        mHideHandler = new Handler();
        MauLog.v("[PlayerController]::[Constructor]");
        initControllerView();
    }

    private void delayedHide(int i)
    {
        MauLog.v("[PlayerControll]::[delayedHide]::[is movie detail shown: %b]", new Object[] {
            Boolean.valueOf(mMovieDetailShown)
        });
        if (!mMovieDetailShown)
        {
            mHideHandler.removeCallbacks(mHideRunnable);
            mHideHandler.postDelayed(mHideRunnable, i);
        }
    }

    private void doPauseResume()
    {
        if (mPlayer == null)
        {
            return;
        }
        MauLog.v("[PlayerController]::[doPauseResume]::[isPlaying %b]", new Object[] {
            Boolean.valueOf(mPlayer.isPlaying())
        });
        if (mPlayer.isPlaying())
        {
            mPlayer.pause();
            if (mPlaybackSeekBar != null)
            {
                mPlaybackSeekBar.setEnabled(false);
            }
            showMovieDetail();
        } else
        {
            mPlayer.start();
            if (mPlaybackSeekBar != null)
            {
                mPlaybackSeekBar.setEnabled(true);
            }
            hideMovieDetail();
            show();
            delayedHide(mAutoHideDelayMs);
        }
        updatePauseResumeBtnDrawables();
    }

    private int getCurrentVolumeFromAudioManager()
    {
        int i = ((AudioManager)getContext().getSystemService("audio")).getStreamVolume(3);
        MauLog.v("[PlayerController]::[getCurrentVolumeFromAudioManager]::[%d]", new Object[] {
            Integer.valueOf(i)
        });
        return i;
    }

    private int getMaxVolumeFromAudioManager()
    {
        return ((AudioManager)getContext().getSystemService("audio")).getStreamMaxVolume(3);
    }

    private void hideMovieDetail()
    {
        MauLog.v("[PlayerController]::[hideMovieInfo]");
        mMiddleContainer.setVisibility(4);
        mMovieDetailShown = false;
    }

    private void initBackIconIv(int i)
    {
        mBackIconIv = findViewById(i);
        if (mBackIconIv != null)
        {
            mBackIconIv.setOnTouchListener(mDelayHideTouchListener);
            mBackIconIv.setOnClickListener(new android.view.View.OnClickListener() {

                final PlayerController this$0;

                public void onClick(View view)
                {
                    if (mOnBackClickListener != null)
                    {
                        mOnBackClickListener.onBackClick();
                    }
                }

            
            {
                this$0 = PlayerController.this;
                super();
            }
            });
        }
    }

    private void initControllerView()
    {
        MauLog.v("[PlayerController]::[initControllerView]");
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(com.mautilus.lib.videoview.R.layout.view_player_controller, this, true);
        mVolumeObserver = new SettingsContentObserver(getContext(), new Handler());
        getContext().getContentResolver().registerContentObserver(android.provider.Settings.System.CONTENT_URI, true, mVolumeObserver);
        mTopContainer = (ViewGroup)findViewById(com.mautilus.lib.videoview.R.id.top_container);
        setTopContainer(com.mautilus.lib.videoview.R.layout.view_player_controller_top_container);
        mMiddleContainer = (ViewGroup)findViewById(com.mautilus.lib.videoview.R.id.middle_container);
        setMiddleContainer(com.mautilus.lib.videoview.R.layout.view_player_controller_middle_container);
        mBottomContainer = (ViewGroup)findViewById(com.mautilus.lib.videoview.R.id.bottom_container);
        setBottomContainer(com.mautilus.lib.videoview.R.layout.view_player_controller_bottom_container);
        initCustomControls(com.mautilus.lib.videoview.R.id.top_container_title, com.mautilus.lib.videoview.R.id.top_container_subtitles, com.mautilus.lib.videoview.R.id.top_container_icon, com.mautilus.lib.videoview.R.id.top_container_icon, com.mautilus.lib.videoview.R.id.top_container_volume_mute, com.mautilus.lib.videoview.R.id.top_container_volume_seekBar, com.mautilus.lib.videoview.R.id.middle_container_title, com.mautilus.lib.videoview.R.id.middle_container_year, com.mautilus.lib.videoview.R.id.middle_container_lenght, com.mautilus.lib.videoview.R.id.middle_container_description, com.mautilus.lib.videoview.R.id.bottom_container_pause, com.mautilus.lib.videoview.R.id.bottom_container_progress, com.mautilus.lib.videoview.R.id.bottom_container_time_current, com.mautilus.lib.videoview.R.id.bottom_container_time_total, com.mautilus.lib.videoview.R.drawable.ic_media_pause, com.mautilus.lib.videoview.R.drawable.ic_media_play);
    }

    private void initMiddleDescription(int i)
    {
        mMiddleMovieDetailDescription = (TextView)findViewById(i);
    }

    private void initMiddleLenght(int i)
    {
        mMiddleMovieDetailLength = (TextView)findViewById(i);
    }

    private void initMiddleTitle(int i)
    {
        mMiddleMovieDetailTitle = (TextView)findViewById(i);
    }

    private void initMiddleYear(int i)
    {
        mMiddleMovieDetailYear = (TextView)findViewById(i);
    }

    private void initMuteToggleBtn(int i)
    {
        mMuteToggleBtn = (ToggleButton)findViewById(i);
        if (mMuteToggleBtn != null)
        {
            mMuteToggleBtn.setOnTouchListener(mDelayHideTouchListener);
            mMuteToggleBtn.setOnCheckedChangeListener(mMuteListener);
        }
    }

    private void initPlaybackSeekBar(int i, int j, int k)
    {
        mPlaybackSeekBar = (SeekBar)findViewById(i);
        if (mPlaybackSeekBar != null)
        {
            mPlaybackSeekBar.setOnSeekBarChangeListener(mSeekListener);
            mPlaybackSeekBar.setMax(1000);
            mPlaybackSeekBar.setOnTouchListener(mDelayHideTouchListener);
        }
        mCurrentTime = (TextView)findViewById(j);
        mTotalTime = (TextView)findViewById(k);
        mFormatBuilder = new StringBuilder();
        mFormatter = new Formatter(mFormatBuilder, Locale.getDefault());
        if (mTotalTime != null)
        {
            mTotalTime.setText(stringForTime(0));
        }
        if (mCurrentTime != null)
        {
            mCurrentTime.setText(stringForTime(0));
        }
    }

    private void initSubtitlesBtn(int i)
    {
        mSubtitlesBtn = (Button)findViewById(i);
        if (mSubtitlesBtn != null)
        {
            mSubtitlesBtn.setOnTouchListener(mDelayHideTouchListener);
            mSubtitlesBtn.setOnClickListener(new android.view.View.OnClickListener() {

                final PlayerController this$0;

                public void onClick(View view)
                {
                    if (mSubtitlesSelectionListener != null)
                    {
                        mSubtitlesSelectionListener.onSubtitlesBtnClick();
                    }
                }

            
            {
                this$0 = PlayerController.this;
                super();
            }
            });
        }
    }

    private void initTitleTv(int i)
    {
        mTitleTv = (TextView)findViewById(i);
    }

    private void initVolumeSeekBar(int i)
    {
        mVolumeSeekBar = (SeekBar)findViewById(i);
        if (mVolumeSeekBar != null)
        {
            mVolumeSeekBar.setOnTouchListener(mDelayHideTouchListener);
            mVolumeSeekBar.setOnSeekBarChangeListener(mVolumeSeekListener);
            mVolumeSeekBar.setMax(getMaxVolumeFromAudioManager());
            mVolumeSeekBar.setProgress(getCurrentVolumeFromAudioManager());
        }
    }

    private void removeAnyPendingDelayedHide()
    {
        MauLog.v("[PlayerControll]::[removeAnyPendingDelayedHide]");
        mHideHandler.removeCallbacks(mHideRunnable);
    }

    private void setCurrentVolumeForAudioManager(int i)
    {
        ((AudioManager)getContext().getSystemService("audio")).setStreamVolume(3, i, 0);
    }

    private int setProgress()
    {
        if (mPlayer == null || mDragging)
        {
            return 0;
        }
        int i = mPlayer.getCurrentPosition();
        int j = mPlayer.getDuration();
        if (mPlaybackSeekBar != null)
        {
            if (j > 0)
            {
                long l = (1000L * (long)i) / (long)j;
                mPlaybackSeekBar.setProgress((int)l);
            }
            int k = mPlayer.getBufferPercentage();
            mPlaybackSeekBar.setSecondaryProgress(k * 10);
        }
        if (mTotalTime != null)
        {
            mTotalTime.setText(stringForTime(j));
        }
        if (mCurrentTime != null)
        {
            mCurrentTime.setText(stringForTime(i));
        }
        mCurrentPosition = i;
        return i;
    }

    private void setVolumeMuted(boolean flag)
    {
        ((AudioManager)getContext().getSystemService("audio")).setStreamMute(3, flag);
    }

    private void showMovieDetail()
    {
        MauLog.v("[PlayerController]::[showMovieInfo]");
        if (mMovieDetailEnabled)
        {
            mMiddleContainer.setVisibility(0);
            mMovieDetailShown = true;
        }
    }

    private String stringForTime(int i)
    {
        i /= 1000;
        int j = i / 60;
        int k = i / 3600;
        mFormatBuilder.setLength(0);
        return mFormatter.format("%d:%02d:%02d", new Object[] {
            Integer.valueOf(k), Integer.valueOf(j % 60), Integer.valueOf(i % 60)
        }).toString();
    }

    private void updatePauseResumeBtnDrawables()
    {
        if (mPlayer != null)
        {
            if (mPlayer.isPlaying())
            {
                if (mPauseResumeBtn != null)
                {
                    mPauseResumeBtn.setImageResource(mPauseDrawableId);
                }
            } else
            if (mPauseResumeBtn != null)
            {
                mPauseResumeBtn.setImageResource(mPlayDrawableId);
                return;
            }
        }
    }

    public void cleanUp()
    {
        ((AudioManager)getContext().getSystemService("audio")).setStreamMute(3, false);
        if (mVolumeSeekBar != null)
        {
            mVolumeSeekBar.setEnabled(true);
        }
        getContext().getContentResolver().unregisterContentObserver(mVolumeObserver);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag;
        int i;
        i = keyevent.getKeyCode();
        if (keyevent.getRepeatCount() == 0 && keyevent.getAction() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i != 79 && i != 85 && i != 62) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            doPauseResume();
            show();
            if (mPauseResumeBtn != null)
            {
                mPauseResumeBtn.requestFocus();
            }
        }
_L4:
        return true;
_L2:
        if (i != 126)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag && !mPlayer.isPlaying())
        {
            mPlayer.start();
            updatePauseResumeBtnDrawables();
            show();
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (i != 86 && i != 127)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag && mPlayer.isPlaying())
        {
            mPlayer.pause();
            updatePauseResumeBtnDrawables();
            show();
            return true;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (i == 25 || i == 24 || i == 164 || i == 27)
        {
            return super.dispatchKeyEvent(keyevent);
        }
        if (i == 4 || i == 82)
        {
            if (flag)
            {
                hide();
                return true;
            }
        } else
        {
            show();
            return super.dispatchKeyEvent(keyevent);
        }
        if (true) goto _L4; else goto _L6
_L6:
    }

    public int getCurrentPosition()
    {
        return mCurrentPosition;
    }

    public void hide()
    {
        MauLog.v("[PlayerController]::[hide]");
        mHandler.removeMessages(2);
        if (mSystemUiHider != null)
        {
            mSystemUiHider.hide();
        }
    }

    public void hideControls()
    {
        MauLog.v("[PlayerController]::[hideControls]");
        if (mSystemUiHider != null)
        {
            mSystemUiHider.hide();
        }
    }

    public void initBottomContainer(int i)
    {
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        mBottomContainer.removeAllViews();
        layoutinflater.inflate(i, mBottomContainer);
    }

    public void initCustomControls(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2, int j2, int k2, int l2, int i3, int j3, 
            int k3, int l3)
    {
        initTitleTv(i);
        initSubtitlesBtn(j);
        initBackIconIv(k);
        initMuteToggleBtn(i1);
        initVolumeSeekBar(j1);
        initMiddleTitle(k1);
        initMiddleDescription(j2);
        initMiddleLenght(i2);
        initMiddleYear(l1);
        initPauseResumeBtn(k2, k3, l3);
        initPlaybackSeekBar(l2, i3, j3);
    }

    public void initPauseResumeBtn(int i, int j, int k)
    {
        mPauseDrawableId = j;
        mPlayDrawableId = k;
        mPauseBtnId = i;
        mPauseResumeBtn = (ImageButton)findViewById(i);
        if (mPauseResumeBtn != null)
        {
            mPauseResumeBtn.setOnTouchListener(mDelayHideTouchListener);
            mPauseResumeBtn.setOnClickListener(mPauseListener);
        }
    }

    public void initTopContainer(int i)
    {
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        mTopContainer.removeAllViews();
        layoutinflater.inflate(i, mTopContainer);
    }

    public boolean isControlsVisible()
    {
        return mSystemUiHider != null && mSystemUiHider.isVisible();
    }

    public boolean isPlaying()
    {
        return mPlayer != null && mPlayer.isPlaying();
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(com/mautilus/lib/videoview/ui/PlayerController.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(com/mautilus/lib/videoview/ui/PlayerController.getName());
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        show();
        return false;
    }

    public void pause()
    {
        MauLog.v("[PlayerController]::[pause]");
        if (mPlayer != null && mPlayer.isPlaying())
        {
            show();
            doPauseResume();
        }
    }

    public void resume()
    {
        MauLog.v("[PlayerController]::[resume]");
        if (mPlayer != null && !mPlayer.isPlaying())
        {
            hide();
            doPauseResume();
        }
    }

    public void setAsset(VideoViewAsset videoviewasset, boolean flag)
    {
        MauLog.v("[PlayerController]::[setAsset]");
        mVideoViewAsset = videoviewasset;
        if (mTitleTv != null)
        {
            TextView textview = mTitleTv;
            if (flag)
            {
                videoviewasset = mVideoViewAsset.getTitle();
            } else
            {
                videoviewasset = "";
            }
            textview.setText(videoviewasset);
        }
        mMiddleMovieDetailTitle.setText(mVideoViewAsset.getTitle());
        mMiddleMovieDetailLength.setText(mVideoViewAsset.getLenght());
        mMiddleMovieDetailYear.setText(mVideoViewAsset.getYear());
        mMiddleMovieDetailDescription.setText(mVideoViewAsset.getDescription());
    }

    public void setBottomContainer(int i)
    {
        mBottomContainer.removeAllViews();
        if (i > 0)
        {
            ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(i, mBottomContainer);
            mBottomContainer.setOnTouchListener(mDelayHideTouchListener);
        }
    }

    public void setEnabled(boolean flag)
    {
        boolean flag1 = true;
        MauLog.v("[PlayerController]::[setEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        if (mPauseResumeBtn != null)
        {
            mPauseResumeBtn.setEnabled(flag);
        }
        if (mPlaybackSeekBar != null)
        {
            SeekBar seekbar = mPlaybackSeekBar;
            if (!flag || mPlayer == null || !mPlayer.isPlaying())
            {
                flag1 = false;
            }
            seekbar.setEnabled(flag1);
        }
        super.setEnabled(flag);
    }

    public void setMediaPlayer(MediaPlayerControl mediaplayercontrol)
    {
        MauLog.v("[PlayerController]::[setMediaPlayer]");
        mPlayer = mediaplayercontrol;
    }

    public void setMiddleContainer(int i)
    {
        mMiddleContainer.removeAllViews();
        if (i > 0)
        {
            ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(i, mMiddleContainer);
        }
    }

    public void setMovieDetailEnabled(boolean flag)
    {
        MauLog.v("[PlayerController]::[setMovieDetailEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mMovieDetailEnabled = flag;
    }

    public void setOnBackClickListener(OnBackClickListener onbackclicklistener)
    {
        MauLog.v("[PlayerController]::[setOnBackClickListener]");
        mOnBackClickListener = onbackclicklistener;
    }

    public void setOnPlayButtonListener(OnPlayButtonListener onplaybuttonlistener)
    {
        MauLog.v("[PlayerController]::[setOnPlayButtonListener]");
        mOnPlayListener = onplaybuttonlistener;
    }

    public void setOnSeekListener(OnSeekListener onseeklistener)
    {
        MauLog.v("[PlayerController]::[setOnSeekListener]");
        mOnSeekListener = onseeklistener;
    }

    public void setOnSubtitlesBtnClickListener(onSubtitlesBtnClickListener onsubtitlesbtnclicklistener)
    {
        MauLog.v("[PlayerController]::[setOnSubtitlesBtnClickListener]");
        mSubtitlesSelectionListener = onsubtitlesbtnclicklistener;
    }

    public void setSeekBarsColor(int i)
    {
        if (mPlaybackSeekBar != null)
        {
            mPlaybackSeekBar.getProgressDrawable().setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
            mPlaybackSeekBar.getThumb().setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
        }
        if (mVolumeSeekBar != null)
        {
            mVolumeSeekBar.getProgressDrawable().setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
            mVolumeSeekBar.getThumb().setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
        }
    }

    public void setSubtitlesSelectionEnabled(boolean flag)
    {
        int i = 0;
        MauLog.v("[PlayerController]::[setSubtitlesSelectionEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mSubtitlesSelectionEnabled = flag;
        if (mSubtitlesBtn != null)
        {
            Button button = mSubtitlesBtn;
            if (!mSubtitlesSelectionEnabled)
            {
                i = 8;
            }
            button.setVisibility(i);
        }
    }

    public void setSystemUiHider(SystemUiHider systemuihider, View view)
    {
        mSystemUiHider = systemuihider;
        mSystemUiHider.setOnVisibilityChangeListener(mOnVisibilityChangeListener);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final PlayerController this$0;

            public void onClick(View view1)
            {
                MauLog.v("[PlayerController]::[onClick]::[mMovieDetailShown: %b]", new Object[] {
                    Boolean.valueOf(mMovieDetailShown)
                });
                if (!mMovieDetailShown)
                {
                    toggleControls();
                }
            }

            
            {
                this$0 = PlayerController.this;
                super();
            }
        });
    }

    public void setTopContainer(int i)
    {
        mTopContainer.removeAllViews();
        if (i > 0)
        {
            ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(i, mTopContainer);
            mTopContainer.setOnTouchListener(mDelayHideTouchListener);
        }
    }

    public void setTopContainerVisibility(boolean flag)
    {
        if (mTopContainer != null)
        {
            ViewGroup viewgroup = mTopContainer;
            int i;
            if (flag)
            {
                i = 0;
            } else
            {
                i = 4;
            }
            viewgroup.setVisibility(i);
        }
    }

    public void setVolumeControlsEnabled(boolean flag)
    {
        boolean flag1 = false;
        MauLog.v("[PlayerController]::[setVolumeControlsEnabled]::[%b]", new Object[] {
            Boolean.valueOf(flag)
        });
        mVolumeControlsEnabled = flag;
        int i;
        if (mVolumeSeekBar != null)
        {
            Object obj = mVolumeSeekBar;
            if (mVolumeControlsEnabled)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            ((SeekBar) (obj)).setVisibility(i);
        }
        if (mMuteToggleBtn != null)
        {
            obj = mMuteToggleBtn;
            if (mVolumeControlsEnabled)
            {
                i = ((flag1) ? 1 : 0);
            } else
            {
                i = 8;
            }
            ((ToggleButton) (obj)).setVisibility(i);
        }
    }

    public void show()
    {
        MauLog.v("[PlayerController]::[show]");
        if (mSystemUiHider != null)
        {
            mSystemUiHider.show();
        }
        setProgress();
        if (mPauseResumeBtn != null)
        {
            mPauseResumeBtn.requestFocus();
        }
        updatePauseResumeBtnDrawables();
        mHandler.sendEmptyMessage(2);
    }

    public void toggleControls()
    {
        MauLog.v("[PlayerController]::[toggleControls]");
        if (mSystemUiHider != null)
        {
            mSystemUiHider.toggle();
        }
    }























/*
    static boolean access$502(PlayerController playercontroller, boolean flag)
    {
        playercontroller.mDragging = flag;
        return flag;
    }

*/




}
