// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CheckableLinearLayout extends LinearLayout
    implements Checkable
{

    private static final int CheckedStateSet[] = {
        0x10100a0
    };
    private List mCheckableViews;
    private boolean mChecked;

    public CheckableLinearLayout(Context context)
    {
        super(context);
        mChecked = false;
        mCheckableViews = new ArrayList(5);
    }

    public CheckableLinearLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mChecked = false;
        mCheckableViews = new ArrayList(5);
    }

    private void findCheckableChildren(View view)
    {
        if (view instanceof Checkable)
        {
            mCheckableViews.add((Checkable)view);
        }
        if (view instanceof ViewGroup)
        {
            view = (ViewGroup)view;
            int j = view.getChildCount();
            for (int i = 0; i < j; i++)
            {
                findCheckableChildren(view.getChildAt(i));
            }

        }
    }

    public boolean isChecked()
    {
        return mChecked;
    }

    protected int[] onCreateDrawableState(int i)
    {
        int ai[] = super.onCreateDrawableState(i + 1);
        if (isChecked())
        {
            mergeDrawableStates(ai, CheckedStateSet);
        }
        return ai;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        int j = getChildCount();
        for (int i = 0; i < j; i++)
        {
            findCheckableChildren(getChildAt(i));
        }

    }

    public void setChecked(boolean flag)
    {
        mChecked = flag;
        for (Iterator iterator = mCheckableViews.iterator(); iterator.hasNext(); ((Checkable)iterator.next()).setChecked(mChecked)) { }
        refreshDrawableState();
    }

    public void toggle()
    {
        boolean flag;
        if (!mChecked)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setChecked(flag);
    }

}
