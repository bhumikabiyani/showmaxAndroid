// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.ui.VideoView;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.SubtitlesHelper;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.model.catalogue.Language;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

class this._cls1
    implements com.showmax.app.util.titlesHelperListener
{

    final w.getCurrentPosition this$1;

    public long getCurrentPosition()
    {
        return (long)ActivityPlayer.access$200(_fld0).getCurrentPosition();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/showmax/app/ui/ActivityPlayer$1

/* anonymous class */
    class ActivityPlayer._cls1
        implements com.showmax.app.ui.dialog.LanguagesDialogHelper.LanguagesDialogListener
    {

        final ActivityPlayer this$0;

        public void onCancel(int i)
        {
            if (i == 27)
            {
                MauLog.d("[APlayer]::[onAudioTrackClick]::[onCancelClick]");
                if (!ActivityPlayer.access$300(ActivityPlayer.this))
                {
                    ActivityPlayer.access$200(ActivityPlayer.this).resume();
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
                ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
                if (!ActivityPlayer.access$300(ActivityPlayer.this))
                {
                    ActivityPlayer.access$200(ActivityPlayer.this).resume();
                }
                Language language2 = new Language();
                language2.name = getString(0x7f0d00bd);
                language2.iso6393 = getString(0x7f0d00bd);
                SubtitlesHelper subtitleshelper = ActivityPlayer.access$400(ActivityPlayer.this);
                Language language1 = language;
                if (language.equals(language2))
                {
                    language1 = null;
                }
                subtitleshelper.switchSubtitles(language1, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
                ActivityPlayer.access$400(ActivityPlayer.this).setSubtitlesHelperListener(new ActivityPlayer._cls1._cls1());
                MauFlurry.onPlaybackSubtitleChange(ActivityPlayer.this);
                if (ActivityPlayer.access$500(ActivityPlayer.this) != null)
                {
                    ActivityPlayer.access$102(ActivityPlayer.this, ActivityPlayer.access$200(ActivityPlayer.this).getCurrentPosition());
                    MauAnalytics.getInstance().onPlaybackSubtitles(null, ActivityPlayer.access$500(ActivityPlayer.this), ActivityPlayer.access$100(ActivityPlayer.this));
                }
            }
        }

            
            {
                this$0 = ActivityPlayer.this;
                super();
            }
    }

}
