// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eevoskos.robotoviews.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.eevoskos.robotoviews.Roboto;

public class RobotoCheckBox extends CheckBox
{

    public RobotoCheckBox(Context context)
    {
        super(context);
        robotize(context, null, 0);
    }

    public RobotoCheckBox(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        robotize(context, attributeset, 0);
    }

    public RobotoCheckBox(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        robotize(context, attributeset, i);
    }

    private void robotize(Context context, AttributeSet attributeset, int i)
    {
        if (isInEditMode())
        {
            return;
        }
        attributeset = getContext().obtainStyledAttributes(attributeset, com.eevoskos.robotoviews.R.styleable.RobotoCheckBox, i, 0);
        i = attributeset.getInteger(com.eevoskos.robotoviews.R.styleable.RobotoCheckBox_typeface, 0);
        attributeset.recycle();
        setTypeface(Roboto.getInstance(context).getTypeface(i));
        return;
        context;
        attributeset.recycle();
        throw context;
    }
}
