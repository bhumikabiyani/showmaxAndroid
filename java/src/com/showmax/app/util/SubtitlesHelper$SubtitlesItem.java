// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.util:
//            SubtitlesHelper

public class mCurrentParagraphPosition
{

    public Language language;
    private int mCurrentParagraphPosition;
    public ArrayList paragraphs;
    final SubtitlesHelper this$0;

    public void add(mCurrentParagraphPosition mcurrentparagraphposition)
    {
        paragraphs.add(mcurrentparagraphposition);
    }

    public paragraphs next()
    {
        mCurrentParagraphPosition = mCurrentParagraphPosition + 1;
        if (mCurrentParagraphPosition < paragraphs.size())
        {
            return (paragraphs)paragraphs.get(mCurrentParagraphPosition);
        } else
        {
            mCurrentParagraphPosition = -1;
            return null;
        }
    }

    public void synchronize(long l)
    {
        mCurrentParagraphPosition = -1;
        mCurrentParagraphPosition mcurrentparagraphposition = next();
        mCurrentParagraphPosition mcurrentparagraphposition1;
        do
        {
            mcurrentparagraphposition1 = mcurrentparagraphposition;
            if (mcurrentparagraphposition == null)
            {
                break;
            }
            mcurrentparagraphposition1 = mcurrentparagraphposition;
            if (mcurrentparagraphposition.n > l)
            {
                break;
            }
            mcurrentparagraphposition1 = next();
            mcurrentparagraphposition = mcurrentparagraphposition1;
        } while (mcurrentparagraphposition1 != null);
        SubtitlesHelper.access$002(SubtitlesHelper.this, mcurrentparagraphposition1);
        if (mcurrentparagraphposition1 == null);
    }

    public ()
    {
        this$0 = SubtitlesHelper.this;
        super();
        paragraphs = new ArrayList();
        mCurrentParagraphPosition = -1;
    }
}
