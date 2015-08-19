// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.ui.VideoView;
import com.showmax.app.util.MauBug;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.SubtitlesHelper;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Video;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

class this._cls0
    implements com.mautilus.lib.videoview.ui.ewListener
{

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
        if (ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
            MauAnalytics.getInstance().onPlaybackPause(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
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
    //                   1: 162
    //                   100: 162;
           goto _L1 _L2 _L2
_L1:
        j;
        JVM INSTR lookupswitch 5: default 92
    //                   -1010: 205
    //                   -1007: 180
    //                   -1004: 169
    //                   -110: 194
    //                   200: 187;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        MauLog.e("[APlayer]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j), s1, s
        });
        MauBug.getInstance().sendPlaybackError(flag, i, j, s1, s);
        if (flag)
        {
            ActivityPlayer.access$200(ActivityPlayer.this).showMessage(k);
            ActivityPlayer.access$1600(ActivityPlayer.this);
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
        ActivityPlayer.access$1600(ActivityPlayer.this);
    }

    public void onPlaybackInfo(int i, int j)
    {
        MauLog.v("[APlayer]::[mVideoViewListener]::[onPlaybackInfo]");
        if (i == 700)
        {
            MauFlurry.onPlaybackLongBuffering(ActivityPlayer.this);
        }
        if (i == 701 && ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
            MauAnalytics.getInstance().onPlaybackBufferUnderrun(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
        }
        if (i == 702 && ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
            MauAnalytics.getInstance().onPlaybackResumeUnderrun(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
        }
    }

    public void onPrepared()
    {
        if (ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            MauAnalytics.getInstance().onPlaybackStart(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
        }
    }

    public void onResumeClick()
    {
        MauLog.v("[APlayer]::[onResumeClick]");
        MauFlurry.onPlaybackResume(ActivityPlayer.this);
        if (ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
            MauAnalytics.getInstance().onPlaybackResume(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
        }
    }

    public void onSeekEnd(long l)
    {
        MauLog.v("[APlayer]::[onSeekEnd]");
        ActivityPlayer.access$400(ActivityPlayer.this).syncAfterSeek(l);
        ActivityPlayer.access$400(ActivityPlayer.this).start();
        MauFlurry.onPlaybackSeek(ActivityPlayer.this);
        if (ActivityPlayer.access$500(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
            MauAnalytics.getInstance().onPlaybackSeek(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
        }
    }

    public void onSeekStart(long l)
    {
        MauLog.v("[APlayer]::[onSeekStart]");
        ActivityPlayer.access$400(ActivityPlayer.this).stop();
    }

    public void onSubtitlesSelectionClicked()
    {
        boolean flag = true;
        MauLog.v("[APlayer]::[mVideoViewListener]::[onSubtitlesSelectionClicked]");
        Object obj;
        if (ActivityPlayer.access$200(ActivityPlayer.this).isPlaying())
        {
            ActivityPlayer.access$302(ActivityPlayer.this, false);
            ActivityPlayer.access$200(ActivityPlayer.this).pause();
        } else
        {
            ActivityPlayer.access$302(ActivityPlayer.this, true);
        }
        obj = UserPrefs.getCurrentLanguage(ActivityPlayer.this);
        if (ActivityPlayer.access$600(ActivityPlayer.this) == null)
        {
            obj = LanguageUtils.getInstance().convert(((com.showmax.lib.api.io.anguage) (obj)));
        } else
        {
            obj = ActivityPlayer.access$600(ActivityPlayer.this);
        }
        if (ActivityPlayer.access$700(ActivityPlayer.this) != com.showmax.lib.api.model.catalogue.R)
        {
            flag = false;
        }
        if (flag)
        {
            obj = ActivityPlayer.access$800(ActivityPlayer.this).getTrailerVideo(((com.showmax.lib.api.model.catalogue.Language) (obj)));
        } else
        {
            obj = ActivityPlayer.access$800(ActivityPlayer.this).getMainVideo(((com.showmax.lib.api.model.catalogue.Language) (obj)));
        }
        obj = ((Video) (obj)).getAvailableSubtitles();
        showAudioTrackDialog(((java.util.ArrayList) (obj)), ActivityPlayer.access$400(ActivityPlayer.this).getCurrentSubtitles());
    }

    Video()
    {
        this$0 = ActivityPlayer.this;
        super();
    }
}
