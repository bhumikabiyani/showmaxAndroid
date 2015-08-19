// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eevoskos.robotoviews.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Switch;
import com.eevoskos.robotoviews.Roboto;

public class RobotoSwitch extends Switch
{

    public RobotoSwitch(Context context)
    {
        super(context);
        robotize(context, null, 0);
    }

    public RobotoSwitch(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        robotize(context, attributeset, 0);
    }

    public RobotoSwitch(Context context, AttributeSet attributeset, int i)
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
        attributeset = getContext().obtainStyledAttributes(attributeset, com.eevoskos.robotoviews.R.styleable.RobotoSwitch, i, 0);
        i = attributeset.getInteger(com.eevoskos.robotoviews.R.styleable.RobotoSwitch_typeface, 0);
        attributeset.recycle();
        setTypeface(Roboto.getInstance(context).getTypeface(i));
        return;
        context;
        attributeset.recycle();
        throw context;
    }
}
