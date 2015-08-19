// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.mautilus.lib.common.util.MauLog;
import java.io.IOException;
import java.util.Map;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

public class VideoSurface extends SurfaceView
    implements PlayerController.MediaPlayerControl
{
    public static interface OnBufferingChangeListener
    {

        public abstract void onBufferingChange(boolean flag);
    }


    private static final boolean LOG = true;
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private String TAG;
    private boolean mAdjustScreenRatioEnabled;
    private int mAudioSession;
    private boolean mBufferingState;
    private android.media.MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener = new android.media.MediaPlayer.OnBufferingUpdateListener() {

        final VideoSurface this$0;

        public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
        {
            mCurrentBufferPercentage = i;
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private Runnable mCheckerRunable = new Runnable() {

        final VideoSurface this$0;

        public void run()
        {
            if (mMediaPlayer == null) goto _L2; else goto _L1
_L1:
            int i = mMediaPlayer.getCurrentPosition();
            if (mBufferingState || Math.abs(i - mLastPosition) <= 750) goto _L4; else goto _L3
_L3:
            onBufferingChange(true);
_L6:
            mLastPosition = i;
_L7:
            mHandler.postDelayed(this, 1000L);
_L2:
            return;
_L4:
            if (!mMediaPlayer.isPlaying() || Math.abs(i - mLastPosition) >= 500) goto _L6; else goto _L5
_L5:
            onBufferingChange(false);
              goto _L6
            Exception exception;
            exception;
            MauLog.e("[VideoSurface]::[checker]::[IllegalStateException]::[%s]", new Object[] {
                exception.getMessage()
            });
              goto _L7
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnCompletionListener mCompletionListener = new android.media.MediaPlayer.OnCompletionListener() {

        final VideoSurface this$0;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            MauLog.v("[VideoSurface]::[mCompletionListener]::[onCompletion]");
            mCurrentState = 5;
            mTargetState = 5;
            if (mMediaController != null)
            {
                mMediaController.hide();
            }
            if (mOnCompletionListener != null)
            {
                mOnCompletionListener.onCompletion(mMediaPlayer);
            }
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private android.media.MediaPlayer.OnErrorListener mErrorListener = new android.media.MediaPlayer.OnErrorListener() {

        final VideoSurface this$0;

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            Log.d(TAG, (new StringBuilder()).append("Error: ").append(i).append(",").append(j).toString());
            mCurrentState = -1;
            mTargetState = -1;
            if (mMediaController != null)
            {
                mMediaController.hide();
            }
            if (mOnErrorListener != null)
            {
                if (!mOnErrorListener.onError(mMediaPlayer, i, j));
            }
            return true;
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private Handler mHandler;
    private Map mHeaders;
    private int mLastPosition;
    private PlayerController mMediaController;
    private MediaPlayer mMediaPlayer;
    private OnBufferingChangeListener mOnBufferingChangeListener;
    private android.media.MediaPlayer.OnCompletionListener mOnCompletionListener;
    private android.media.MediaPlayer.OnErrorListener mOnErrorListener;
    private android.media.MediaPlayer.OnInfoListener mOnInfoListener;
    private android.media.MediaPlayer.OnPreparedListener mOnPreparedListener;
    android.media.MediaPlayer.OnPreparedListener mPreparedListener = new android.media.MediaPlayer.OnPreparedListener() {

        final VideoSurface this$0;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            int i;
            MauLog.v("[VideoSurface]::[mPreparedListener]::[onPrepared]");
            mCurrentState = 2;
            if (mOnPreparedListener != null)
            {
                mOnPreparedListener.onPrepared(mMediaPlayer);
            }
            mVideoWidth = mediaplayer.getVideoWidth();
            mVideoHeight = mediaplayer.getVideoHeight();
            MauLog.v("[VideoSurface]::[mPreparedListener]::[onPrepared]::[mVideoWidth %d]::[mVideoHeight %d]", new Object[] {
                Integer.valueOf(mVideoWidth), Integer.valueOf(mVideoHeight)
            });
            i = mSeekWhenPrepared;
            if (i != 0)
            {
                seekTo(i);
            }
            if (mVideoWidth == 0 || mVideoHeight == 0) goto _L2; else goto _L1
_L1:
            getHolder().setFixedSize(mVideoWidth, mVideoHeight);
            if (mSurfaceWidth != mVideoWidth || mSurfaceHeight != mVideoHeight) goto _L4; else goto _L3
_L3:
            if (mTargetState != 3) goto _L6; else goto _L5
_L5:
            start();
            if (mMediaController != null)
            {
                mMediaController.show();
            }
_L4:
            return;
_L6:
            if (!isPlaying() && (i != 0 || getCurrentPosition() > 0) && mMediaController != null)
            {
                mMediaController.show();
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (mTargetState == 3)
            {
                start();
                return;
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    android.view.SurfaceHolder.Callback mSHCallback = new android.view.SurfaceHolder.Callback() {

        final VideoSurface this$0;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
        {
            mSurfaceWidth = j;
            mSurfaceHeight = k;
            MauLog.v("[VideoSurface]::[mSHCallback]::[surfaceChanged]::[mSurfaceWidth %d]::[mSurfaceHeight %d]", new Object[] {
                Integer.valueOf(mSurfaceWidth), Integer.valueOf(mSurfaceHeight)
            });
            if (mTargetState == 3)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (mVideoWidth == j && mVideoHeight == k)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            if (mMediaPlayer != null && i != 0 && j != 0)
            {
                if (mSeekWhenPrepared != 0)
                {
                    seekTo(mSeekWhenPrepared);
                }
                start();
            }
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            mSurfaceHolder = surfaceholder;
            openVideo();
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            mSurfaceHolder = null;
            if (mMediaController != null)
            {
                mMediaController.hide();
            }
            release(true);
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private int mSeekWhenPrepared;
    android.media.MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

        final VideoSurface this$0;

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
        {
            mVideoWidth = mediaplayer.getVideoWidth();
            mVideoHeight = mediaplayer.getVideoHeight();
            MauLog.v("[VideoSurface]::[mSizeChangedListener]::[onVideoSizeChanged]::[mVideoWidth %d]::[mVideoHeight %d]", new Object[] {
                Integer.valueOf(mVideoWidth), Integer.valueOf(mVideoHeight)
            });
            if (mVideoWidth != 0 && mVideoHeight != 0)
            {
                getHolder().setFixedSize(mVideoWidth, mVideoHeight);
                requestLayout();
            }
        }

            
            {
                this$0 = VideoSurface.this;
                super();
            }
    };
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private int mSurfaceWidth;
    private int mTargetState;
    private Uri mUri;
    private int mVideoHeight;
    private int mVideoWidth;

    public VideoSurface(Context context)
    {
        super(context);
        mHandler = new Handler();
        mBufferingState = false;
        mLastPosition = 0;
        TAG = "VideoSurface";
        mCurrentState = 0;
        mTargetState = 0;
        mSurfaceHolder = null;
        mMediaPlayer = null;
        MauLog.v("[VideoSurface]::[VideoSurface]");
        initVideoView();
    }

    public VideoSurface(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        MauLog.v("[VideoSurface]::[VideoSurface]");
        initVideoView();
    }

    public VideoSurface(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mHandler = new Handler();
        mBufferingState = false;
        mLastPosition = 0;
        TAG = "VideoSurface";
        mCurrentState = 0;
        mTargetState = 0;
        mSurfaceHolder = null;
        mMediaPlayer = null;
        MauLog.v("[VideoSurface]::[VideoSurface]");
        initVideoView();
    }

    private void attachMediaController()
    {
        MauLog.v("[VideoSurface]::[attachMediaController]");
        if (mMediaPlayer != null && mMediaController != null)
        {
            mMediaController.setMediaPlayer(this);
            mMediaController.setEnabled(isInPlaybackState());
        }
    }

    private void checkerStart()
    {
        mLastPosition = 0;
        mHandler.removeCallbacks(mCheckerRunable);
        mHandler.postDelayed(mCheckerRunable, 1000L);
    }

    private void checkerStop()
    {
        mHandler.removeCallbacks(mCheckerRunable);
        mBufferingState = false;
    }

    private void initVideoView()
    {
        MauLog.v("[VideoSurface]::[initVideoView]");
        mVideoWidth = 0;
        mVideoHeight = 0;
        getHolder().addCallback(mSHCallback);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        mCurrentState = 0;
        mTargetState = 0;
    }

    private boolean isInPlaybackState()
    {
        return mMediaPlayer != null && mCurrentState != -1 && mCurrentState != 0 && mCurrentState != 1;
    }

    private void onBufferingChange(boolean flag)
    {
        mBufferingState = flag;
        if (mOnBufferingChangeListener != null)
        {
            mOnBufferingChangeListener.onBufferingChange(flag);
        }
        if (mMediaController != null)
        {
            PlayerController playercontroller = mMediaController;
            if (isInPlaybackState() && flag)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            playercontroller.setEnabled(flag);
        }
    }

    private void openVideo()
    {
        MauLog.v("[VideoSurface]::[openVideo]");
        if (mUri == null || mSurfaceHolder == null)
        {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        getContext().sendBroadcast(intent);
        release(false);
        mMediaPlayer = new MediaPlayer();
        if (mAudioSession == 0)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        mMediaPlayer.setAudioSessionId(mAudioSession);
_L1:
        IOException ioexception;
        mMediaPlayer.setOnPreparedListener(mPreparedListener);
        mMediaPlayer.setOnVideoSizeChangedListener(mSizeChangedListener);
        mMediaPlayer.setOnCompletionListener(mCompletionListener);
        mMediaPlayer.setOnErrorListener(mErrorListener);
        mMediaPlayer.setOnInfoListener(mOnInfoListener);
        mMediaPlayer.setOnBufferingUpdateListener(mBufferingUpdateListener);
        mCurrentBufferPercentage = 0;
        mMediaPlayer.setDataSource(getContext(), mUri, mHeaders);
        mMediaPlayer.setDisplay(mSurfaceHolder);
        mMediaPlayer.setAudioStreamType(3);
        mMediaPlayer.setScreenOnWhilePlaying(true);
        mMediaPlayer.prepareAsync();
        mCurrentState = 1;
        attachMediaController();
        return;
        try
        {
            mAudioSession = mMediaPlayer.getAudioSessionId();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            Log.w(TAG, (new StringBuilder()).append("Unable to open content: ").append(mUri).toString(), ioexception);
            mCurrentState = -1;
            mTargetState = -1;
            mErrorListener.onError(mMediaPlayer, 1, 0);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.w(TAG, (new StringBuilder()).append("Unable to open content: ").append(mUri).toString(), illegalargumentexception);
            mCurrentState = -1;
            mTargetState = -1;
            mErrorListener.onError(mMediaPlayer, 1, 0);
            return;
        }
          goto _L1
    }

    private void release(boolean flag)
    {
        MauLog.v("[VideoSurface]::[release]");
        if (mMediaPlayer != null)
        {
            checkerStop();
            mMediaPlayer.reset();
            mMediaPlayer.release();
            mMediaPlayer = null;
            mCurrentState = 0;
            if (flag)
            {
                mTargetState = 0;
            }
        }
    }

    public int getBufferPercentage()
    {
        if (mMediaPlayer != null)
        {
            return mCurrentBufferPercentage;
        } else
        {
            return 0;
        }
    }

    public int getCurrentPosition()
    {
        if (isInPlaybackState())
        {
            return mMediaPlayer.getCurrentPosition();
        } else
        {
            return mLastPosition;
        }
    }

    public int getDuration()
    {
        if (isInPlaybackState())
        {
            return mMediaPlayer.getDuration();
        } else
        {
            return -1;
        }
    }

    public boolean isPlaying()
    {
        return isInPlaybackState() && mMediaPlayer.isPlaying();
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(com/mautilus/lib/videoview/ui/VideoSurface.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(com/mautilus/lib/videoview/ui/VideoSurface.getName());
    }

    protected void onMeasure(int i, int j)
    {
        int k;
        int l;
        MauLog.v("[VideoSurface]::[onMeasure]");
        k = getDefaultSize(mVideoWidth, i);
        l = getDefaultSize(mVideoHeight, j);
        if (mVideoWidth <= 0 || mVideoHeight <= 0) goto _L2; else goto _L1
_L1:
        int i2;
        int j2;
        i2 = android.view.View.MeasureSpec.getMode(i);
        k = android.view.View.MeasureSpec.getSize(i);
        j2 = android.view.View.MeasureSpec.getMode(j);
        l = android.view.View.MeasureSpec.getSize(j);
        if (i2 != 0x40000000 || j2 != 0x40000000) goto _L4; else goto _L3
_L3:
        if (mVideoWidth * l >= mVideoHeight * k) goto _L6; else goto _L5
_L5:
        j = (mVideoWidth * l) / mVideoHeight;
        i = l;
_L8:
        setMeasuredDimension(j, i);
        return;
_L6:
        i = l;
        j = k;
        if (mVideoWidth * l > mVideoHeight * k)
        {
            i = (mVideoHeight * k) / mVideoWidth;
            j = k;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (i2 == 0x40000000)
        {
            int i1 = (mVideoHeight * k) / mVideoWidth;
            i = i1;
            j = k;
            if (j2 == 0x80000000)
            {
                i = i1;
                j = k;
                if (i1 > l)
                {
                    i = l;
                    j = k;
                }
            }
        } else
        if (j2 == 0x40000000)
        {
            int j1 = (mVideoWidth * l) / mVideoHeight;
            i = l;
            j = j1;
            if (i2 == 0x80000000)
            {
                i = l;
                j = j1;
                if (j1 > k)
                {
                    j = k;
                    i = l;
                }
            }
        } else
        {
            i = mVideoWidth;
            j = mVideoHeight;
            int l1 = j;
            int k1 = i;
            if (j2 == 0x80000000)
            {
                l1 = j;
                k1 = i;
                if (j > l)
                {
                    k1 = (mVideoWidth * l) / mVideoHeight;
                    l1 = l;
                }
            }
            i = l1;
            j = k1;
            if (i2 == 0x80000000)
            {
                i = l1;
                j = k1;
                if (k1 > k)
                {
                    j = k;
                    i = (mVideoHeight * j) / mVideoWidth;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        MauLog.v("[VideoSurface]::[onMeasure]::[no size yet, just adopt the given spec sizes]::[mVideoWidth %d]::[mVideoHeight %d]::[width %d]::[height %d]", new Object[] {
            Integer.valueOf(mVideoHeight), Integer.valueOf(mVideoWidth), Integer.valueOf(k), Integer.valueOf(l)
        });
        i = l;
        j = k;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void pause()
    {
        MauLog.v("[VideoSurface]::[pause]");
        if (isInPlaybackState() && mMediaPlayer.isPlaying())
        {
            checkerStop();
            mMediaPlayer.pause();
            mCurrentState = 4;
        }
        mTargetState = 4;
    }

    public int resolveAdjustedSize(int i, int j)
    {
        return getDefaultSize(i, j);
    }

    public void resume()
    {
        MauLog.v("[VideoSurface]::[resume]");
        openVideo();
    }

    public void seekTo(int i)
    {
        MauLog.v("[VideoSurface]::[seekTo]::[%s]", new Object[] {
            Integer.valueOf(i)
        });
        if (isInPlaybackState())
        {
            mMediaPlayer.seekTo(i);
            mSeekWhenPrepared = 0;
            return;
        } else
        {
            mSeekWhenPrepared = i;
            return;
        }
    }

    public void setMediaController(PlayerController playercontroller)
    {
        MauLog.v("[VideoSurface]::[setMediaController]");
        if (mMediaController != null)
        {
            mMediaController.hide();
        }
        mMediaController = playercontroller;
        attachMediaController();
    }

    public void setOnBufferingChangeListener(OnBufferingChangeListener onbufferingchangelistener)
    {
        mOnBufferingChangeListener = onbufferingchangelistener;
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        mOnCompletionListener = oncompletionlistener;
    }

    public void setOnErrorListener(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        mOnErrorListener = onerrorlistener;
    }

    public void setOnInfoListener(android.media.MediaPlayer.OnInfoListener oninfolistener)
    {
        mOnInfoListener = oninfolistener;
    }

    public void setOnPreparedListener(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        mOnPreparedListener = onpreparedlistener;
    }

    public void setVideoPath(String s)
    {
        MauLog.v("[VideoSurface]::[setVideoPath]::[%s]", new Object[] {
            s
        });
        setVideoURI(Uri.parse(s));
    }

    public void setVideoURI(Uri uri)
    {
        MauLog.v("[VideoSurface]::[setVideoURI]::[%s]", new Object[] {
            uri
        });
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map map)
    {
        MauLog.v("[VideoSurface]::[setVideoURI, headers]::[%s]", new Object[] {
            uri
        });
        mUri = uri;
        mHeaders = map;
        mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void start()
    {
        MauLog.v("[VideoSurface]::[start]");
        if (isInPlaybackState())
        {
            checkerStart();
            mMediaPlayer.start();
            mCurrentState = 3;
        }
        mTargetState = 3;
    }

    public void stopPlayback()
    {
        MauLog.v("[VideoSurface]::[stopPlayback]");
        checkerStop();
        if (mMediaPlayer != null)
        {
            mMediaPlayer.stop();
            mMediaPlayer.release();
            mMediaPlayer = null;
            mCurrentState = 0;
            mTargetState = 0;
        }
    }

    public void suspend()
    {
        MauLog.v("[VideoSurface]::[suspend]");
        release(false);
    }





/*
    static int access$1002(VideoSurface videosurface, int i)
    {
        videosurface.mSurfaceWidth = i;
        return i;
    }

*/



/*
    static int access$1102(VideoSurface videosurface, int i)
    {
        videosurface.mSurfaceHeight = i;
        return i;
    }

*/



/*
    static int access$1202(VideoSurface videosurface, int i)
    {
        videosurface.mTargetState = i;
        return i;
    }

*/






/*
    static int access$1702(VideoSurface videosurface, int i)
    {
        videosurface.mCurrentBufferPercentage = i;
        return i;
    }

*/


/*
    static SurfaceHolder access$1802(VideoSurface videosurface, SurfaceHolder surfaceholder)
    {
        videosurface.mSurfaceHolder = surfaceholder;
        return surfaceholder;
    }

*/





/*
    static int access$202(VideoSurface videosurface, int i)
    {
        videosurface.mLastPosition = i;
        return i;
    }

*/





/*
    static int access$502(VideoSurface videosurface, int i)
    {
        videosurface.mVideoWidth = i;
        return i;
    }

*/



/*
    static int access$602(VideoSurface videosurface, int i)
    {
        videosurface.mVideoHeight = i;
        return i;
    }

*/


/*
    static int access$702(VideoSurface videosurface, int i)
    {
        videosurface.mCurrentState = i;
        return i;
    }

*/


}
