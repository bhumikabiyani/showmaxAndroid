// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ScrollView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.util.DialogUtils;

// Referenced classes of package com.afollestad.materialdialogs.internal:
//            MDButton

public class MDRootLayout extends ViewGroup
{

    private static final int INDEX_NEGATIVE = 1;
    private static final int INDEX_NEUTRAL = 0;
    private static final int INDEX_POSITIVE = 2;
    private android.view.ViewTreeObserver.OnScrollChangedListener mBottomOnScrollChangedListener;
    private int mButtonBarHeight;
    private GravityEnum mButtonGravity;
    private int mButtonHorizontalEdgeMargin;
    private int mButtonPaddingFull;
    private MDButton mButtons[];
    private View mContent;
    private Paint mDividerPaint;
    private int mDividerWidth;
    private boolean mDrawBottomDivider;
    private boolean mDrawTopDivider;
    private boolean mForceStack;
    private boolean mIsStacked;
    private int mNoTitlePaddingFull;
    private boolean mReducePaddingNoTitleNoButtons;
    private View mTitleBar;
    private android.view.ViewTreeObserver.OnScrollChangedListener mTopOnScrollChangedListener;
    private boolean mUseFullPadding;

    public MDRootLayout(Context context)
    {
        super(context);
        mDrawTopDivider = false;
        mDrawBottomDivider = false;
        mButtons = new MDButton[3];
        mForceStack = false;
        mIsStacked = false;
        mUseFullPadding = true;
        mButtonGravity = GravityEnum.START;
        init(context, null, 0);
    }

    public MDRootLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mDrawTopDivider = false;
        mDrawBottomDivider = false;
        mButtons = new MDButton[3];
        mForceStack = false;
        mIsStacked = false;
        mUseFullPadding = true;
        mButtonGravity = GravityEnum.START;
        init(context, attributeset, 0);
    }

    public MDRootLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mDrawTopDivider = false;
        mDrawBottomDivider = false;
        mButtons = new MDButton[3];
        mForceStack = false;
        mIsStacked = false;
        mUseFullPadding = true;
        mButtonGravity = GravityEnum.START;
        init(context, attributeset, i);
    }

    public MDRootLayout(Context context, AttributeSet attributeset, int i, int j)
    {
        super(context, attributeset, i, j);
        mDrawTopDivider = false;
        mDrawBottomDivider = false;
        mButtons = new MDButton[3];
        mForceStack = false;
        mIsStacked = false;
        mUseFullPadding = true;
        mButtonGravity = GravityEnum.START;
        init(context, attributeset, i);
    }

    private void addScrollListener(final ViewGroup vg, final boolean setForTop, final boolean setForBottom)
    {
        if (!setForBottom && mTopOnScrollChangedListener == null || setForBottom && mBottomOnScrollChangedListener == null)
        {
            android.view.ViewTreeObserver.OnScrollChangedListener onscrollchangedlistener = new android.view.ViewTreeObserver.OnScrollChangedListener() {

                final MDRootLayout this$0;
                final boolean val$setForBottom;
                final boolean val$setForTop;
                final ViewGroup val$vg;

                public void onScrollChanged()
                {
                    boolean flag1 = false;
                    MDButton amdbutton[] = mButtons;
                    int j = amdbutton.length;
                    int i = 0;
                    do
                    {
label0:
                        {
                            boolean flag = flag1;
                            if (i < j)
                            {
                                MDButton mdbutton = amdbutton[i];
                                if (mdbutton == null || mdbutton.getVisibility() == 8)
                                {
                                    break label0;
                                }
                                flag = true;
                            }
                            if (vg instanceof WebView)
                            {
                                invalidateDividersForWebView((WebView)vg, setForTop, setForBottom, flag);
                            } else
                            {
                                invalidateDividersForScrollingView(vg, setForTop, setForBottom, flag);
                            }
                            invalidate();
                            return;
                        }
                        i++;
                    } while (true);
                }

            
            {
                this$0 = MDRootLayout.this;
                vg = viewgroup;
                setForTop = flag;
                setForBottom = flag1;
                super();
            }
            };
            if (!setForBottom)
            {
                mTopOnScrollChangedListener = onscrollchangedlistener;
                vg.getViewTreeObserver().addOnScrollChangedListener(mTopOnScrollChangedListener);
            } else
            {
                mBottomOnScrollChangedListener = onscrollchangedlistener;
                vg.getViewTreeObserver().addOnScrollChangedListener(mBottomOnScrollChangedListener);
            }
            onscrollchangedlistener.onScrollChanged();
        }
    }

    private static boolean canAdapterViewScroll(AdapterView adapterview)
    {
        boolean flag3 = true;
        boolean flag2;
        if (adapterview.getLastVisiblePosition() == -1)
        {
            flag2 = false;
        } else
        {
            boolean flag;
            boolean flag1;
            if (adapterview.getFirstVisiblePosition() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (adapterview.getLastVisiblePosition() == adapterview.getCount() - 1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag2 = flag3;
            if (flag)
            {
                flag2 = flag3;
                if (flag1)
                {
                    flag2 = flag3;
                    if (adapterview.getChildCount() > 0)
                    {
                        flag2 = flag3;
                        if (adapterview.getChildAt(0).getTop() >= adapterview.getPaddingTop())
                        {
                            flag2 = flag3;
                            if (adapterview.getChildAt(adapterview.getChildCount() - 1).getBottom() <= adapterview.getHeight() - adapterview.getPaddingBottom())
                            {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return flag2;
    }

    public static boolean canRecyclerViewScroll(RecyclerView recyclerview)
    {
        android.support.v7.widget.RecyclerView.LayoutManager layoutmanager = recyclerview.getLayoutManager();
        int i = recyclerview.getAdapter().getItemCount();
        if (layoutmanager instanceof LinearLayoutManager)
        {
            int j = ((LinearLayoutManager)layoutmanager).findLastVisibleItemPosition();
            if (j != -1)
            {
                if (j == i - 1)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (!i || recyclerview.getChildCount() > 0 && recyclerview.getChildAt(recyclerview.getChildCount() - 1).getBottom() > recyclerview.getHeight() - recyclerview.getPaddingBottom())
                {
                    return true;
                }
            }
            return false;
        } else
        {
            throw new com.afollestad.materialdialogs.MaterialDialog.NotImplementedException("Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers.");
        }
    }

    private static boolean canScrollViewScroll(ScrollView scrollview)
    {
        int i;
        if (scrollview.getChildCount() != 0)
        {
            if (scrollview.getMeasuredHeight() - scrollview.getPaddingTop() - scrollview.getPaddingBottom() < (i = scrollview.getChildAt(0).getMeasuredHeight()))
            {
                return true;
            }
        }
        return false;
    }

    private static boolean canWebViewScroll(WebView webview)
    {
        return (float)webview.getMeasuredHeight() < (float)webview.getContentHeight() * webview.getScale();
    }

    private static View getBottomView(ViewGroup viewgroup)
    {
        if (viewgroup != null && viewgroup.getChildCount() != 0)
        {
            int i = viewgroup.getChildCount() - 1;
            while (i >= 0) 
            {
                View view = viewgroup.getChildAt(i);
                if (view.getVisibility() == 0 && view.getBottom() == viewgroup.getMeasuredHeight())
                {
                    return view;
                }
                i--;
            }
        }
        return null;
    }

    private static View getTopView(ViewGroup viewgroup)
    {
        if (viewgroup != null && viewgroup.getChildCount() != 0)
        {
            int i = viewgroup.getChildCount() - 1;
            while (i >= 0) 
            {
                View view = viewgroup.getChildAt(i);
                if (view.getVisibility() == 0 && view.getTop() == 0)
                {
                    return view;
                }
                i--;
            }
        }
        return null;
    }

    private void init(Context context, AttributeSet attributeset, int i)
    {
        Resources resources = context.getResources();
        attributeset = context.obtainStyledAttributes(attributeset, com.afollestad.materialdialogs.R.styleable.MDRootLayout, i, 0);
        mReducePaddingNoTitleNoButtons = attributeset.getBoolean(com.afollestad.materialdialogs.R.styleable.MDRootLayout_md_reduce_padding_no_title_no_buttons, true);
        attributeset.recycle();
        mNoTitlePaddingFull = resources.getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_notitle_vertical_padding);
        mButtonPaddingFull = resources.getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_button_frame_vertical_padding);
        mButtonHorizontalEdgeMargin = resources.getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_button_padding_frame_side);
        mButtonBarHeight = resources.getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_button_height);
        mDividerPaint = new Paint();
        mDividerWidth = resources.getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_divider_height);
        mDividerPaint.setColor(DialogUtils.resolveColor(context, com.afollestad.materialdialogs.R.attr.md_divider_color));
        setWillNotDraw(false);
    }

    private void invalidateDividersForScrollingView(ViewGroup viewgroup, boolean flag, boolean flag1, boolean flag2)
    {
        boolean flag3 = true;
        if (flag && viewgroup.getChildCount() > 0)
        {
            if (mTitleBar != null && mTitleBar.getVisibility() != 8 && viewgroup.getScrollY() + viewgroup.getPaddingTop() > viewgroup.getChildAt(0).getTop())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mDrawTopDivider = flag;
        }
        if (flag1 && viewgroup.getChildCount() > 0)
        {
            if (flag2 && (viewgroup.getScrollY() + viewgroup.getHeight()) - viewgroup.getPaddingBottom() < viewgroup.getChildAt(viewgroup.getChildCount() - 1).getBottom())
            {
                flag = flag3;
            } else
            {
                flag = false;
            }
            mDrawBottomDivider = flag;
        }
    }

    private void invalidateDividersForWebView(WebView webview, boolean flag, boolean flag1, boolean flag2)
    {
        boolean flag3 = true;
        if (flag)
        {
            if (mTitleBar != null && mTitleBar.getVisibility() != 8 && webview.getScrollY() + webview.getPaddingTop() > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mDrawTopDivider = flag;
        }
        if (flag1)
        {
            if (flag2 && (float)((webview.getScrollY() + webview.getMeasuredHeight()) - webview.getPaddingBottom()) < (float)webview.getContentHeight() * webview.getScale())
            {
                flag = flag3;
            } else
            {
                flag = false;
            }
            mDrawBottomDivider = flag;
        }
    }

    private static boolean isVisible(View view)
    {
label0:
        {
            boolean flag;
            boolean flag1;
            if (view != null && view.getVisibility() != 8)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 = flag;
            if (flag)
            {
                flag1 = flag;
                if (view instanceof MDButton)
                {
                    if (((MDButton)view).getText().toString().trim().length() <= 0)
                    {
                        break label0;
                    }
                    flag1 = true;
                }
            }
            return flag1;
        }
        return false;
    }

    private void setUpDividersVisibility(final View view, final boolean setForTop, final boolean setForBottom)
    {
        if (view != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!(view instanceof ScrollView))
        {
            break; /* Loop/switch isn't completed */
        }
        view = (ScrollView)view;
        if (canScrollViewScroll(view))
        {
            addScrollListener(view, setForTop, setForBottom);
            return;
        }
        if (setForTop)
        {
            mDrawTopDivider = false;
        }
        if (setForBottom)
        {
            mDrawBottomDivider = false;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!(view instanceof AdapterView))
        {
            break; /* Loop/switch isn't completed */
        }
        view = (AdapterView)view;
        if (canAdapterViewScroll(view))
        {
            addScrollListener(view, setForTop, setForBottom);
            return;
        }
        if (setForTop)
        {
            mDrawTopDivider = false;
        }
        if (setForBottom)
        {
            mDrawBottomDivider = false;
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        if (view instanceof WebView)
        {
            view.getViewTreeObserver().addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener() {

                final MDRootLayout this$0;
                final boolean val$setForBottom;
                final boolean val$setForTop;
                final View val$view;

                public boolean onPreDraw()
                {
                    if (view.getMeasuredHeight() != 0)
                    {
                        if (!MDRootLayout.canWebViewScroll((WebView)view))
                        {
                            if (setForTop)
                            {
                                mDrawTopDivider = false;
                            }
                            if (setForBottom)
                            {
                                mDrawBottomDivider = false;
                            }
                        } else
                        {
                            addScrollListener((ViewGroup)view, setForTop, setForBottom);
                        }
                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                    }
                    return true;
                }

            
            {
                this$0 = MDRootLayout.this;
                view = view1;
                setForTop = flag;
                setForBottom = flag1;
                super();
            }
            });
            return;
        }
        if (!(view instanceof RecyclerView))
        {
            continue; /* Loop/switch isn't completed */
        }
        boolean flag = canRecyclerViewScroll((RecyclerView)view);
        if (setForTop)
        {
            mDrawTopDivider = flag;
        }
        if (setForBottom)
        {
            mDrawBottomDivider = flag;
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!(view instanceof ViewGroup)) goto _L1; else goto _L5
_L5:
        View view1 = getTopView((ViewGroup)view);
        setUpDividersVisibility(view1, setForTop, setForBottom);
        view = getBottomView((ViewGroup)view);
        if (view != view1)
        {
            setUpDividersVisibility(view, false, true);
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (mContent != null)
        {
            if (mDrawTopDivider)
            {
                int i = mContent.getTop();
                canvas.drawRect(0.0F, i - mDividerWidth, getMeasuredWidth(), i, mDividerPaint);
            }
            if (mDrawBottomDivider)
            {
                int j = mContent.getBottom();
                canvas.drawRect(0.0F, j, getMeasuredWidth(), mDividerWidth + j, mDividerPaint);
            }
        }
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        int i = 0;
        while (i < getChildCount()) 
        {
            View view = getChildAt(i);
            if (view.getId() == com.afollestad.materialdialogs.R.id.titleFrame)
            {
                mTitleBar = view;
            } else
            if (view.getId() == com.afollestad.materialdialogs.R.id.buttonDefaultNeutral)
            {
                mButtons[0] = (MDButton)view;
            } else
            if (view.getId() == com.afollestad.materialdialogs.R.id.buttonDefaultNegative)
            {
                mButtons[1] = (MDButton)view;
            } else
            if (view.getId() == com.afollestad.materialdialogs.R.id.buttonDefaultPositive)
            {
                mButtons[2] = (MDButton)view;
            } else
            {
                mContent = view;
            }
            i++;
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (!isVisible(mTitleBar)) goto _L2; else goto _L1
_L1:
        int i1;
        i1 = mTitleBar.getMeasuredHeight();
        mTitleBar.layout(i, j, k, j + i1);
        i1 = j + i1;
_L5:
        if (isVisible(mContent))
        {
            mContent.layout(i, i1, k, mContent.getMeasuredHeight() + i1);
        }
        if (!mIsStacked)
        {
            break; /* Loop/switch isn't completed */
        }
        l -= mButtonPaddingFull;
        MDButton amdbutton[] = mButtons;
        int j1 = amdbutton.length;
        for (j = 0; j < j1;)
        {
            MDButton mdbutton = amdbutton[j];
            i1 = l;
            if (isVisible(mdbutton))
            {
                mdbutton.layout(i, l - mdbutton.getMeasuredHeight(), k, l);
                i1 = l - mdbutton.getMeasuredHeight();
            }
            j++;
            l = i1;
        }

          goto _L3
_L2:
        i1 = j;
        if (mUseFullPadding)
        {
            i1 = j + mNoTitlePaddingFull;
        }
        if (true) goto _L5; else goto _L4
_L4:
        int l1 = l;
        if (mUseFullPadding)
        {
            l1 = l - mButtonPaddingFull;
        }
        int k2 = l1 - mButtonBarHeight;
        int i2 = mButtonHorizontalEdgeMargin;
        int k1 = -1;
        j = -1;
        i1 = j;
        l = i2;
        if (isVisible(mButtons[2]))
        {
            if (mButtonGravity == GravityEnum.END)
            {
                int j2 = i + i2;
                l = j2 + mButtons[2].getMeasuredWidth();
                i1 = j;
                j = j2;
            } else
            {
                l = k - i2;
                j = l - mButtons[2].getMeasuredWidth();
                i1 = j;
            }
            mButtons[2].layout(j, k2, l, l1);
            l = i2 + mButtons[2].getMeasuredWidth();
        }
        j = k1;
        if (isVisible(mButtons[1]))
        {
            if (mButtonGravity == GravityEnum.END)
            {
                j = i + l;
                l = j + mButtons[1].getMeasuredWidth();
            } else
            if (mButtonGravity == GravityEnum.START)
            {
                l = k - l;
                j = l - mButtons[1].getMeasuredWidth();
            } else
            {
                j = i + mButtonHorizontalEdgeMargin;
                l = j + mButtons[1].getMeasuredWidth();
                k1 = l;
            }
            mButtons[1].layout(j, k2, l, l1);
            j = k1;
        }
        if (!isVisible(mButtons[0])) goto _L3; else goto _L6
_L6:
        if (mButtonGravity != GravityEnum.END) goto _L8; else goto _L7
_L7:
        j = k - mButtonHorizontalEdgeMargin;
        i = j - mButtons[0].getMeasuredWidth();
_L10:
        mButtons[0].layout(i, k2, j, l1);
_L3:
        setUpDividersVisibility(mContent, true, true);
        return;
_L8:
        if (mButtonGravity == GravityEnum.START)
        {
            i += mButtonHorizontalEdgeMargin;
            j = i + mButtons[0].getMeasuredWidth();
            continue; /* Loop/switch isn't completed */
        }
        if (j != -1 || i1 == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        j = i1 - mButtons[0].getMeasuredWidth();
        l = i1;
_L11:
        i = j;
        j = l;
        if (true) goto _L10; else goto _L9
_L9:
        if (i1 == -1 && j != -1)
        {
            l = j + mButtons[0].getMeasuredWidth();
        } else
        {
            l = i1;
            if (i1 == -1)
            {
                j = (k - i) / 2 - mButtons[0].getMeasuredWidth() / 2;
                l = j + mButtons[0].getMeasuredWidth();
            }
        }
          goto _L11
        if (true) goto _L10; else goto _L12
_L12:
    }

    public void onMeasure(int i, int j)
    {
        int j2 = android.view.View.MeasureSpec.getSize(i);
        int i2 = android.view.View.MeasureSpec.getSize(j);
        mUseFullPadding = true;
        int l = 0;
        int k = 0;
        int i1;
        int l1;
        boolean flag1;
        if (!mForceStack)
        {
            int j1 = 0;
            MDButton amdbutton[] = mButtons;
            int k2 = amdbutton.length;
            for (l = 0; l < k2;)
            {
                MDButton mdbutton = amdbutton[l];
                int k1 = j1;
                boolean flag = k;
                if (mdbutton != null)
                {
                    k1 = j1;
                    flag = k;
                    if (isVisible(mdbutton))
                    {
                        mdbutton.setStacked(false, false);
                        measureChild(mdbutton, i, j);
                        k1 = j1 + mdbutton.getMeasuredWidth();
                        flag = true;
                    }
                }
                l++;
                j1 = k1;
                k = ((flag) ? 1 : 0);
            }

            MDButton mdbutton1;
            if (j1 > j2 - getContext().getResources().getDimensionPixelSize(com.afollestad.materialdialogs.R.dimen.md_neutral_button_margin) * 2)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        } else
        {
            flag1 = true;
            k = l;
        }
        l1 = 0;
        l = 0;
        mIsStacked = flag1;
        i1 = k;
        if (flag1)
        {
            amdbutton = mButtons;
            k2 = amdbutton.length;
            j1 = 0;
            do
            {
                i1 = k;
                l1 = l;
                if (j1 >= k2)
                {
                    break;
                }
                mdbutton1 = amdbutton[j1];
                l1 = k;
                i1 = l;
                if (mdbutton1 != null)
                {
                    l1 = k;
                    i1 = l;
                    if (isVisible(mdbutton1))
                    {
                        mdbutton1.setStacked(true, false);
                        measureChild(mdbutton1, i, j);
                        i1 = l + mdbutton1.getMeasuredHeight();
                        l1 = 1;
                    }
                }
                j1++;
                k = l1;
                l = i1;
            } while (true);
        }
        i = i2;
        k = 0;
        if (i1 != 0)
        {
            if (mIsStacked)
            {
                i -= l1;
                j = 0 + mButtonPaddingFull * 2;
                k = 0 + mButtonPaddingFull * 2;
            } else
            {
                i -= mButtonBarHeight;
                j = 0 + mButtonPaddingFull * 2;
            }
        } else
        {
            j = 0 + mButtonPaddingFull * 2;
        }
        if (isVisible(mTitleBar))
        {
            mTitleBar.measure(android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000), 0);
            i -= mTitleBar.getMeasuredHeight();
            l = j;
            j = i;
        } else
        {
            l = j + mNoTitlePaddingFull;
            j = i;
        }
        i = j;
        if (isVisible(mContent))
        {
            mContent.measure(android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(j - k, 0x80000000));
            if (mContent.getMeasuredHeight() <= j - l)
            {
                if (!mReducePaddingNoTitleNoButtons || isVisible(mTitleBar) || i1 != 0)
                {
                    mUseFullPadding = true;
                    i = j - (mContent.getMeasuredHeight() + l);
                } else
                {
                    mUseFullPadding = false;
                    i = j - (mContent.getMeasuredHeight() + k);
                }
            } else
            {
                mUseFullPadding = false;
                i = 0;
            }
        }
        setMeasuredDimension(j2, i2 - i);
    }

    public void setButtonGravity(GravityEnum gravityenum)
    {
        mButtonGravity = gravityenum;
    }

    public void setButtonStackedGravity(GravityEnum gravityenum)
    {
        MDButton amdbutton[] = mButtons;
        int j = amdbutton.length;
        for (int i = 0; i < j; i++)
        {
            MDButton mdbutton = amdbutton[i];
            if (mdbutton != null)
            {
                mdbutton.setStackedGravity(gravityenum);
            }
        }

    }

    public void setDividerColor(int i)
    {
        mDividerPaint.setColor(i);
        invalidate();
    }

    public void setForceStack(boolean flag)
    {
        mForceStack = flag;
        invalidate();
    }



/*
    static boolean access$102(MDRootLayout mdrootlayout, boolean flag)
    {
        mdrootlayout.mDrawTopDivider = flag;
        return flag;
    }

*/


/*
    static boolean access$202(MDRootLayout mdrootlayout, boolean flag)
    {
        mdrootlayout.mDrawBottomDivider = flag;
        return flag;
    }

*/




}
