// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.text.AllCapsTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.util.DialogUtils;

public class MDButton extends TextView
{

    private Drawable mDefaultBackground;
    private boolean mStacked;
    private Drawable mStackedBackground;
    private int mStackedEndPadding;
    private GravityEnum mStackedGravity;

    public MDButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mStacked = false;
        init(context, attributeset, 0, 0);
    }

    public MDButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mStacked = false;
        init(context, attributeset, i, 0);
    }

    public MDButton(Context context, AttributeSet attributeset, int i, int j)
    {
        super(context, attributeset, i, j);
        mStacked = false;
        init(context, attributeset, i, j);
    }

    private void init(Context context, AttributeSet attributeset, int i, int j)
    {
        mStackedEndPadding = context.getResources().getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_dialog_frame_margin);
        mStackedGravity = GravityEnum.END;
    }

    public void setAllCapsCompat(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            setAllCaps(flag);
            return;
        }
        if (flag)
        {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
            return;
        } else
        {
            setTransformationMethod(null);
            return;
        }
    }

    public void setDefaultSelector(Drawable drawable)
    {
        mDefaultBackground = drawable;
        if (!mStacked)
        {
            setStacked(false, true);
        }
    }

    void setStacked(boolean flag, boolean flag1)
    {
        if (mStacked != flag || flag1)
        {
            Drawable drawable;
            int i;
            if (flag)
            {
                i = mStackedGravity.getGravityInt() | 0x10;
            } else
            {
                i = 17;
            }
            setGravity(i);
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                if (flag)
                {
                    i = mStackedGravity.getTextAlignment();
                } else
                {
                    i = 4;
                }
                setTextAlignment(i);
            }
            if (flag)
            {
                drawable = mStackedBackground;
            } else
            {
                drawable = mDefaultBackground;
            }
            DialogUtils.setBackgroundCompat(this, drawable);
            if (flag)
            {
                setPadding(mStackedEndPadding, getPaddingTop(), mStackedEndPadding, getPaddingBottom());
            }
            mStacked = flag;
        }
    }

    public void setStackedGravity(GravityEnum gravityenum)
    {
        mStackedGravity = gravityenum;
    }

    public void setStackedSelector(Drawable drawable)
    {
        mStackedBackground = drawable;
        if (mStacked)
        {
            setStacked(true, true);
        }
    }
}
