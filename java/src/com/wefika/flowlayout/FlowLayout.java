// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.wefika.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class FlowLayout extends ViewGroup
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public int gravity;

        public LayoutParams(int i, int j)
        {
            super(i, j);
            gravity = -1;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            gravity = -1;
            context = context.obtainStyledAttributes(attributeset, R.styleable.FlowLayout_Layout);
            gravity = context.getInt(R.styleable.FlowLayout_Layout_android_layout_gravity, -1);
            context.recycle();
            return;
            attributeset;
            context.recycle();
            throw attributeset;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            gravity = -1;
        }
    }


    private int mGravity;
    private final List mLineHeights;
    private final List mLineMargins;
    private final List mLines;

    public FlowLayout(Context context)
    {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        int j;
        if (isIcs())
        {
            j = 0x800003;
        } else
        {
            j = 3;
        }
        mGravity = j | 0x30;
        mLines = new ArrayList();
        mLineHeights = new ArrayList();
        mLineMargins = new ArrayList();
        context = context.obtainStyledAttributes(attributeset, R.styleable.FlowLayout, i, 0);
        i = context.getInt(R.styleable.FlowLayout_android_gravity, -1);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        setGravity(i);
        context.recycle();
        return;
        attributeset;
        context.recycle();
        throw attributeset;
    }

    private static boolean isIcs()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    protected volatile android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-1, -1);
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new LayoutParams(layoutparams);
    }

    public int getGravity()
    {
        return mGravity;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        float f;
        Object obj;
        int k2;
        int i3;
        mLines.clear();
        mLineHeights.clear();
        mLineMargins.clear();
        i3 = getWidth();
        k2 = getHeight();
        l = getPaddingTop();
        i = 0;
        k = 0;
        obj = new ArrayList();
        int i1;
        switch (mGravity & 7)
        {
        default:
            f = 0.0F;
            break;

        case 1: // '\001'
            f = 0.5F;
            continue; /* Loop/switch isn't completed */

        case 5: // '\005'
            f = 1.0F;
            continue; /* Loop/switch isn't completed */
        }
        break;
_L14:
        i1 = 0;
        while (i1 < getChildCount()) 
        {
            View view1 = getChildAt(i1);
            if (view1.getVisibility() == 8)
            {
                j = l;
            } else
            {
                Object obj1 = (LayoutParams)view1.getLayoutParams();
                int l4 = view1.getMeasuredWidth() + ((LayoutParams) (obj1)).leftMargin + ((LayoutParams) (obj1)).rightMargin;
                int j3 = view1.getMeasuredHeight();
                int l3 = ((LayoutParams) (obj1)).bottomMargin;
                int j4 = ((LayoutParams) (obj1)).topMargin;
                int k1 = k;
                obj1 = obj;
                int i2 = i;
                j = l;
                if (i + l4 > i3)
                {
                    mLineHeights.add(Integer.valueOf(k));
                    mLines.add(obj);
                    mLineMargins.add(Integer.valueOf((int)((float)(i3 - i) * f) + getPaddingLeft()));
                    j = l + k;
                    k1 = 0;
                    i2 = 0;
                    obj1 = new ArrayList();
                }
                i = i2 + l4;
                k = Math.max(k1, j3 + l3 + j4);
                ((List) (obj1)).add(view1);
                obj = obj1;
            }
            i1++;
            l = j;
        }
        mLineHeights.add(Integer.valueOf(k));
        mLines.add(obj);
        mLineMargins.add(Integer.valueOf((int)((float)(i3 - i) * f) + getPaddingLeft()));
        k = l + k;
        j = 0;
        mGravity & 0x70;
        JVM INSTR lookupswitch 2: default 436
    //                   16: 569
    //                   80: 580;
           goto _L1 _L2 _L3
_L1:
        int j1;
        i3 = mLines.size();
        j1 = getPaddingTop();
        l = 0;
_L12:
        int l1;
        int j2;
        int k3;
        int i4;
        if (l >= i3)
        {
            break MISSING_BLOCK_LABEL_895;
        }
        k3 = ((Integer)mLineHeights.get(l)).intValue();
        obj = (List)mLines.get(l);
        j2 = ((Integer)mLineMargins.get(l)).intValue();
        i4 = ((List) (obj)).size();
        l1 = 0;
_L5:
        View view;
        if (l1 >= i4)
        {
            break MISSING_BLOCK_LABEL_879;
        }
        view = (View)((List) (obj)).get(l1);
        if (view.getVisibility() != 8)
        {
            break; /* Loop/switch isn't completed */
        }
_L11:
        l1++;
        if (true) goto _L5; else goto _L4
_L2:
        j = (k2 - k) / 2;
          goto _L1
_L3:
        j = k2 - k;
          goto _L1
_L4:
        LayoutParams layoutparams;
        int i5;
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (layoutparams.height == -1)
        {
            k = 0x80000000;
            int l2 = i;
            int k4;
            if (layoutparams.width == -1)
            {
                k = 0x40000000;
            } else
            if (layoutparams.width >= 0)
            {
                k = 0x40000000;
                l2 = layoutparams.width;
            }
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l2, k), android.view.View.MeasureSpec.makeMeasureSpec(k3 - layoutparams.topMargin - layoutparams.bottomMargin, 0x40000000));
        }
        k4 = view.getMeasuredWidth();
        i5 = view.getMeasuredHeight();
        l2 = 0;
        k = l2;
        if (!Gravity.isVertical(layoutparams.gravity)) goto _L7; else goto _L6
_L6:
        layoutparams.gravity;
        JVM INSTR lookupswitch 3: default 732
    //                   16: 833
    //                   17: 833
    //                   80: 857;
           goto _L8 _L9 _L9 _L10
_L10:
        break MISSING_BLOCK_LABEL_857;
_L8:
        k = l2;
_L7:
        view.layout(layoutparams.leftMargin + j2, layoutparams.topMargin + j1 + k + j, j2 + k4 + layoutparams.leftMargin, j1 + i5 + layoutparams.topMargin + k + j);
        j2 += layoutparams.leftMargin + k4 + layoutparams.rightMargin;
          goto _L11
_L9:
        k = (k3 - i5 - layoutparams.topMargin - layoutparams.bottomMargin) / 2;
          goto _L7
        k = k3 - i5 - layoutparams.topMargin - layoutparams.bottomMargin;
          goto _L7
        j1 += k3;
        l++;
          goto _L12
        return;
        if (true) goto _L14; else goto _L13
_L13:
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k2 = android.view.View.MeasureSpec.getSize(i) - getPaddingLeft() - getPaddingRight();
        int j2 = android.view.View.MeasureSpec.getSize(j);
        int j4 = android.view.View.MeasureSpec.getMode(i);
        int i4 = android.view.View.MeasureSpec.getMode(j);
        int k1 = 0;
        int k = getPaddingTop() + getPaddingBottom();
        int j3 = 0;
        int i3 = 0;
        int k4 = getChildCount();
        int l2 = 0;
        do
        {
            if (l2 < k4)
            {
                View view = getChildAt(l2);
                int l;
                int j1;
                boolean flag;
                int k3;
                int l3;
                if (l2 == k4 - 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (view.getVisibility() == 8)
                {
                    k3 = j3;
                    l = k;
                    l3 = i3;
                    j1 = k1;
                    if (flag)
                    {
                        j1 = Math.max(k1, j3);
                        l = k + i3;
                        l3 = i3;
                        k3 = j3;
                    }
                } else
                {
                    measureChildWithMargins(view, i, j3, j, k);
                    LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                    l = 0x80000000;
                    j1 = k2;
                    int l1 = 0x80000000;
                    int i2 = j2;
                    if (layoutparams.width == -1)
                    {
                        l = 0x40000000;
                        j1 -= layoutparams.leftMargin + layoutparams.rightMargin;
                    } else
                    if (layoutparams.width >= 0)
                    {
                        l = 0x40000000;
                        j1 = layoutparams.width;
                    }
                    if (layoutparams.height >= 0)
                    {
                        l1 = 0x40000000;
                        i2 = layoutparams.height;
                    } else
                    if (i4 == 0)
                    {
                        l1 = 0;
                        i2 = 0;
                    }
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j1, l), android.view.View.MeasureSpec.makeMeasureSpec(i2, l1));
                    l1 = view.getMeasuredWidth() + layoutparams.leftMargin + layoutparams.rightMargin;
                    if (j3 + l1 > k2)
                    {
                        k1 = Math.max(k1, j3);
                        i2 = k + i3;
                        k = view.getMeasuredHeight() + layoutparams.topMargin + layoutparams.bottomMargin;
                    } else
                    {
                        l1 = j3 + l1;
                        int i1 = Math.max(i3, view.getMeasuredHeight() + layoutparams.topMargin + layoutparams.bottomMargin);
                        i2 = k;
                        k = i1;
                    }
                    k3 = l1;
                    l = i2;
                    l3 = k;
                    j1 = k1;
                    if (flag)
                    {
                        j1 = Math.max(k1, l1);
                        l = i2 + k;
                        k3 = l1;
                        l3 = k;
                    }
                }
            } else
            {
                i = getPaddingLeft();
                j = getPaddingRight();
                if (j4 != 0x40000000)
                {
                    k2 = k1 + (i + j);
                }
                if (i4 != 0x40000000)
                {
                    j2 = k;
                }
                setMeasuredDimension(k2, j2);
                return;
            }
            l2++;
            j3 = k3;
            k = l;
            i3 = l3;
            k1 = j1;
        } while (true);
    }

    public void setGravity(int i)
    {
        if (mGravity != i)
        {
            int j = i;
            if ((0x800007 & i) == 0)
            {
                if (isIcs())
                {
                    j = 0x800003;
                } else
                {
                    j = 3;
                }
                j = i | j;
            }
            i = j;
            if ((j & 0x70) == 0)
            {
                i = j | 0x30;
            }
            mGravity = i;
            requestLayout();
        }
    }
}
