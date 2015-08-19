// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.util.AttributeSet;
import com.eevoskos.robotoviews.widget.RobotoTextView;

public class LetterSpacingRobotoTextView extends RobotoTextView
{
    public class LetterSpacing
    {

        public static final float NORMAL = 0F;
        final LetterSpacingRobotoTextView this$0;

        public LetterSpacing()
        {
            this$0 = LetterSpacingRobotoTextView.this;
            super();
        }
    }


    private float mLetterSpacing;

    public LetterSpacingRobotoTextView(Context context)
    {
        super(context);
        mLetterSpacing = 0.0F;
    }

    public LetterSpacingRobotoTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mLetterSpacing = 0.0F;
        init(attributeset);
    }

    public LetterSpacingRobotoTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mLetterSpacing = 0.0F;
        init(attributeset);
    }

    private void applyLetterSpacing()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Object obj = getText().toString();
        for (int i = 0; i < ((String) (obj)).length(); i++)
        {
            stringbuilder.append(((String) (obj)).charAt(i));
            if (i + 1 < ((String) (obj)).length())
            {
                stringbuilder.append("\240");
            }
        }

        obj = new SpannableString(stringbuilder.toString());
        if (stringbuilder.toString().length() > 1)
        {
            for (int j = 1; j < stringbuilder.toString().length(); j += 2)
            {
                ((SpannableString) (obj)).setSpan(new ScaleXSpan((mLetterSpacing + 1.0F) / 10F), j, j + 1, 33);
            }

        }
        super.setText(((CharSequence) (obj)), android.widget.TextView.BufferType.SPANNABLE);
    }

    private void init(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.showmax.app.R.styleable.LetterSpacingRobotoTextView);
        mLetterSpacing = attributeset.getFloat(0, 0.0F);
        attributeset.recycle();
    }

    public float getLetterSpacing()
    {
        return mLetterSpacing;
    }

    public void setLetterSpacing(float f)
    {
        mLetterSpacing = f;
        applyLetterSpacing();
    }

    public void setText(CharSequence charsequence, android.widget.TextView.BufferType buffertype)
    {
        super.setText(charsequence, buffertype);
        applyLetterSpacing();
    }
}
