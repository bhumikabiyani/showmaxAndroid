// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.widget.TextView;
import com.showmax.app.io.HttpRequest;
import com.showmax.app.io.HttpResponse;
import com.showmax.lib.api.model.catalogue.Language;
import com.showmax.lib.api.model.catalogue.Subtitles;
import com.showmax.lib.api.utils.LanguageUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class SubtitlesHelper
{
    public class Paragraph
    {

        public long begin;
        public long end;
        public String text;
        final SubtitlesHelper this$0;

        public Paragraph()
        {
            this$0 = SubtitlesHelper.this;
            super();
        }
    }

    public static interface SubtitlesHelperListener
    {

        public abstract long getCurrentPosition();
    }

    public class SubtitlesItem
    {

        public Language language;
        private int mCurrentParagraphPosition;
        public ArrayList paragraphs;
        final SubtitlesHelper this$0;

        public void add(Paragraph paragraph)
        {
            paragraphs.add(paragraph);
        }

        public Paragraph next()
        {
            mCurrentParagraphPosition = mCurrentParagraphPosition + 1;
            if (mCurrentParagraphPosition < paragraphs.size())
            {
                return (Paragraph)paragraphs.get(mCurrentParagraphPosition);
            } else
            {
                mCurrentParagraphPosition = -1;
                return null;
            }
        }

        public void synchronize(long l)
        {
            mCurrentParagraphPosition = -1;
            Paragraph paragraph = next();
            Paragraph paragraph1;
            do
            {
                paragraph1 = paragraph;
                if (paragraph == null)
                {
                    break;
                }
                paragraph1 = paragraph;
                if (paragraph.begin > l)
                {
                    break;
                }
                paragraph1 = next();
                paragraph = paragraph1;
            } while (paragraph1 != null);
            mCurrentParagraph = paragraph1;
            if (paragraph1 == null);
        }

        public SubtitlesItem()
        {
            this$0 = SubtitlesHelper.this;
            super();
            paragraphs = new ArrayList();
            mCurrentParagraphPosition = -1;
        }
    }


    public static final String KEY_NODE_BR = "br";
    public static final String KEY_NODE_PARAGRAPH = "p";
    public static final String KEY_PARAM_BEGIN = "begin";
    public static final String KEY_PARAM_END = "end";
    public static final String KEY_TAG_BR = "<br/>";
    public static final boolean LOG = false;
    public static final long TIME_SYNC_TOLERANCE = 10L;
    private ArrayList mAvailableSubtitles;
    private Runnable mCheckRunnable;
    private Paragraph mCurrentParagraph;
    private long mCurrentPosition;
    private SubtitlesItem mCurrentSubtitles;
    StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private Handler mHandler;
    private SubtitlesHelperListener mListener;
    private TextView mSubtitlesTextView;

    public SubtitlesHelper(TextView textview)
    {
        mCheckRunnable = new Runnable() {

            final SubtitlesHelper this$0;

            public void run()
            {
                if (mCurrentParagraph == null)
                {
                    return;
                }
                mCurrentPosition = mListener.getCurrentPosition();
                long l = mCurrentParagraph.begin - mCurrentPosition;
                if (l <= 10L)
                {
                    if (l < 0L)
                    {
                        showParagraph(mCurrentParagraph.text, getDuration(mCurrentParagraph.begin, mCurrentParagraph.end) + l);
                    } else
                    {
                        showParagraph(mCurrentParagraph.text, getDuration(mCurrentParagraph.begin, mCurrentParagraph.end));
                    }
                    mCurrentParagraph = mCurrentSubtitles.next();
                }
                mHandler.postDelayed(this, 10L);
            }

            
            {
                this$0 = SubtitlesHelper.this;
                super();
            }
        };
        mSubtitlesTextView = textview;
        mAvailableSubtitles = new ArrayList();
    }

    private long getDuration(long l, long l1)
    {
        return Math.abs(l1 - l);
    }

    private SubtitlesItem parseSubtitles(Subtitles subtitles, String s)
    {
        SubtitlesItem subtitlesitem;
        subtitlesitem = new SubtitlesItem();
        subtitlesitem.language = LanguageUtils.getInstance().parseLanguage(subtitles.language);
        XmlPullParser xmlpullparser;
        int i;
        subtitles = XmlPullParserFactory.newInstance();
        subtitles.setNamespaceAware(true);
        xmlpullparser = subtitles.newPullParser();
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlpullparser.setInput(new StringReader(s));
        i = xmlpullparser.getEventType();
          goto _L1
_L3:
        i = xmlpullparser.next();
          goto _L1
_L8:
        if (!"p".equalsIgnoreCase(xmlpullparser.getName())) goto _L3; else goto _L2
_L2:
        StringBuilder stringbuilder;
        s = new Paragraph();
        s.begin = Math.round(Double.parseDouble(xmlpullparser.getAttributeValue(null, "begin")) * 1000D);
        s.end = Math.round(Double.parseDouble(xmlpullparser.getAttributeValue(null, "end")) * 1000D);
        stringbuilder = new StringBuilder();
        i = xmlpullparser.next();
        subtitles = xmlpullparser.getName();
_L4:
        if (i == 4)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        if (!"br".equals(subtitles))
        {
            break MISSING_BLOCK_LABEL_258;
        }
        if (i != 4)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        stringbuilder.append(xmlpullparser.getText());
_L5:
        i = xmlpullparser.next();
        subtitles = xmlpullparser.getName();
          goto _L4
        stringbuilder.append("<br/>");
        xmlpullparser.next();
          goto _L5
        s.text = stringbuilder.toString();
        subtitlesitem.add(s);
          goto _L3
        subtitles;
_L7:
        return subtitlesitem;
        subtitles;
        return subtitlesitem;
_L1:
        if (i == 1) goto _L7; else goto _L6
_L6:
        i;
        JVM INSTR tableswitch 0 2: default 316
    //                   0 75
    //                   1 75
    //                   2 87;
           goto _L3 _L3 _L3 _L8
    }

    private void showParagraph(String s, long l)
    {
        mSubtitlesTextView.setText(Html.fromHtml(s));
        (new CountDownTimer(l, 1000L) {

            final SubtitlesHelper this$0;

            public void onFinish()
            {
                mSubtitlesTextView.setText("");
            }

            public void onTick(long l1)
            {
            }

            
            {
                this$0 = SubtitlesHelper.this;
                super(l, l1);
            }
        }).start();
    }

    private String stringForTime(long l)
    {
        if (mFormatBuilder == null)
        {
            mFormatBuilder = new StringBuilder();
            mFormatter = new Formatter(mFormatBuilder, Locale.getDefault());
        }
        long l2 = l / 1000L;
        l = l2 % 60L;
        long l1 = (l2 / 60L) % 60L;
        l2 /= 3600L;
        mFormatBuilder.setLength(0);
        if (l2 > 0L)
        {
            return mFormatter.format("%d:%02d:%02d", new Object[] {
                Long.valueOf(l2), Long.valueOf(l1), Long.valueOf(l)
            }).toString();
        } else
        {
            return mFormatter.format("%02d:%02d", new Object[] {
                Long.valueOf(l1), Long.valueOf(l)
            }).toString();
        }
    }

    public boolean fetchSubtitles(ArrayList arraylist)
    {
        Subtitles subtitles;
        HttpResponse httpresponse;
        for (arraylist = arraylist.iterator(); arraylist.hasNext(); mAvailableSubtitles.add(parseSubtitles(subtitles, httpresponse.getRespond())))
        {
            subtitles = (Subtitles)arraylist.next();
            httpresponse = (new HttpRequest(subtitles.link, null, null)).getResponse();
            if (httpresponse.getResultCode() != 200)
            {
                return false;
            }
        }

        return true;
    }

    public Language getCurrentSubtitles()
    {
        if (mCurrentSubtitles == null)
        {
            return null;
        } else
        {
            return mCurrentSubtitles.language;
        }
    }

    public void setSubtitlesHelperListener(SubtitlesHelperListener subtitleshelperlistener)
    {
        mListener = subtitleshelperlistener;
    }

    public void start()
    {
        if (mCurrentSubtitles != null)
        {
            mHandler = new Handler();
            mHandler.post(mCheckRunnable);
        }
    }

    public void stop()
    {
        if (mHandler != null)
        {
            mHandler.removeCallbacks(mCheckRunnable);
        }
    }

    public void switchSubtitles(Language language, long l)
    {
        if (language == null)
        {
            stop();
            mCurrentSubtitles = null;
        } else
        {
            int i = 0;
            while (i < mAvailableSubtitles.size()) 
            {
                SubtitlesItem subtitlesitem = (SubtitlesItem)mAvailableSubtitles.get(i);
                if (subtitlesitem.language.equals(language))
                {
                    mCurrentSubtitles = subtitlesitem;
                    syncAfterSeek(l);
                    start();
                    return;
                }
                i++;
            }
        }
    }

    public void syncAfterSeek(long l)
    {
        if (mCurrentSubtitles != null)
        {
            mCurrentPosition = l;
            mCurrentSubtitles.synchronize(mCurrentPosition);
        }
    }



/*
    static Paragraph access$002(SubtitlesHelper subtitleshelper, Paragraph paragraph)
    {
        subtitleshelper.mCurrentParagraph = paragraph;
        return paragraph;
    }

*/



/*
    static long access$102(SubtitlesHelper subtitleshelper, long l)
    {
        subtitleshelper.mCurrentPosition = l;
        return l;
    }

*/






}
