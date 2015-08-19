// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.astuetz;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.Pair;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Locale;

public class PagerSlidingTabStrip extends HorizontalScrollView
{
    public static interface CustomTabProvider
    {

        public abstract View getCustomTabView(ViewGroup viewgroup, int i);
    }

    public static interface OnTabReselectedListener
    {

        public abstract void onTabReselected(int i);
    }

    private class PageListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        final PagerSlidingTabStrip this$0;

        public void onPageScrollStateChanged(int i)
        {
            if (i == 0)
            {
                scrollToChild(pager.getCurrentItem(), 0);
            }
            View view = tabsContainer.getChildAt(pager.getCurrentItem());
            selected(view);
            if (pager.getCurrentItem() - 1 >= 0)
            {
                View view1 = tabsContainer.getChildAt(pager.getCurrentItem() - 1);
                notSelected(view1);
            }
            if (pager.getCurrentItem() + 1 <= pager.getAdapter().getCount() - 1)
            {
                View view2 = tabsContainer.getChildAt(pager.getCurrentItem() + 1);
                notSelected(view2);
            }
            if (delegatePageListener != null)
            {
                delegatePageListener.onPageScrollStateChanged(i);
            }
        }

        public void onPageScrolled(int i, float f, int j)
        {
            currentPosition = i;
            currentPositionOffset = f;
            int k;
            if (tabCount > 0)
            {
                k = (int)((float)tabsContainer.getChildAt(i).getWidth() * f);
            } else
            {
                k = 0;
            }
            scrollToChild(i, k);
            invalidate();
            if (delegatePageListener != null)
            {
                delegatePageListener.onPageScrolled(i, f, j);
            }
        }

        public void onPageSelected(int i)
        {
            updateSelection(i);
            if (delegatePageListener != null)
            {
                delegatePageListener.onPageSelected(i);
            }
        }

        private PageListener()
        {
            this$0 = PagerSlidingTabStrip.this;
            super();
        }

    }

    private class PagerAdapterObserver extends DataSetObserver
    {

        private boolean attached;
        final PagerSlidingTabStrip this$0;

        public boolean isAttached()
        {
            return attached;
        }

        public void onChanged()
        {
            notifyDataSetChanged();
        }

        public void setAttached(boolean flag)
        {
            attached = flag;
        }

        private PagerAdapterObserver()
        {
            this$0 = PagerSlidingTabStrip.this;
            super();
            attached = false;
        }

    }

    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        int currentPosition;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(currentPosition);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            currentPosition = parcel.readInt();
        }


        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }


    private static final int ATTRS[] = {
        0x1010036, 0x1010095, 0x1010098, 0x10100d5, 0x10100d6, 0x10100d8
    };
    private static final int PADDING_INDEX = 3;
    private static final int PADDING_LEFT_INDEX = 4;
    private static final int PADDING_RIGHT_INDEX = 5;
    private static final int TEXT_COLOR_INDEX = 2;
    private static final int TEXT_COLOR_PRIMARY = 0;
    private static final int TEXT_SIZE_INDEX = 1;
    private final PagerAdapterObserver adapterObserver;
    private int currentPosition;
    private float currentPositionOffset;
    private android.widget.LinearLayout.LayoutParams defaultTabLayoutParams;
    public android.support.v4.view.ViewPager.OnPageChangeListener delegatePageListener;
    private int dividerColor;
    private int dividerPadding;
    private Paint dividerPaint;
    private int dividerWidth;
    private android.widget.LinearLayout.LayoutParams expandedTabLayoutParams;
    private android.view.ViewTreeObserver.OnGlobalLayoutListener firstTabGlobalLayoutListener = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

        final PagerSlidingTabStrip this$0;

        public void onGlobalLayout()
        {
            View view = tabsContainer.getChildAt(0);
            if (android.os.Build.VERSION.SDK_INT < 16)
            {
                getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else
            {
                getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            if (isPaddingMiddle)
            {
                int l = view.getWidth() / 2;
                paddingLeft = paddingRight = getWidth() / 2 - l;
            }
            setPadding(paddingLeft, getPaddingTop(), paddingRight, getPaddingBottom());
            if (scrollOffset == 0)
            {
                scrollOffset = getWidth() / 2 - paddingLeft;
            }
            currentPosition = pager.getCurrentItem();
            currentPositionOffset = 0.0F;
            scrollToChild(currentPosition, 0);
            updateSelection(currentPosition);
        }

            
            {
                this$0 = PagerSlidingTabStrip.this;
                super();
            }
    };
    private int indicatorColor;
    private int indicatorHeight;
    private boolean isPaddingMiddle;
    private int lastScrollX;
    private Locale locale;
    private int paddingLeft;
    private int paddingRight;
    private final PageListener pageListener;
    private ViewPager pager;
    private Paint rectPaint;
    private int scrollOffset;
    private boolean shouldExpand;
    private int tabBackgroundResId;
    private int tabCount;
    private int tabPadding;
    private OnTabReselectedListener tabReselectedListener;
    private ColorStateList tabTextColor;
    private ColorStateList tabTextColorSelected;
    private int tabTextSize;
    private Typeface tabTypeface;
    private int tabTypefaceSelectedStyle;
    private int tabTypefaceStyle;
    private LinearLayout tabsContainer;
    private boolean textAllCaps;
    private int textAlpha;
    private int underlineColor;
    private int underlineHeight;

    public PagerSlidingTabStrip(Context context)
    {
        this(context, null);
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        adapterObserver = new PagerAdapterObserver();
        pageListener = new PageListener();
        tabReselectedListener = null;
        currentPosition = 0;
        currentPositionOffset = 0.0F;
        indicatorHeight = 2;
        underlineHeight = 0;
        dividerWidth = 0;
        dividerPadding = 0;
        tabPadding = 12;
        tabTextSize = 14;
        tabTextColor = null;
        tabTextColorSelected = null;
        textAlpha = 150;
        paddingLeft = 0;
        paddingRight = 0;
        shouldExpand = false;
        textAllCaps = true;
        isPaddingMiddle = false;
        tabTypeface = null;
        tabTypefaceStyle = 1;
        tabTypefaceSelectedStyle = 1;
        lastScrollX = 0;
        tabBackgroundResId = com.astuetz.pagerslidingtabstrip.R.drawable.psts_background_tab;
        setFillViewport(true);
        setWillNotDraw(false);
        tabsContainer = new LinearLayout(context);
        tabsContainer.setOrientation(0);
        tabsContainer.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        addView(tabsContainer);
        Object obj = getResources().getDisplayMetrics();
        scrollOffset = (int)TypedValue.applyDimension(1, scrollOffset, ((android.util.DisplayMetrics) (obj)));
        indicatorHeight = (int)TypedValue.applyDimension(1, indicatorHeight, ((android.util.DisplayMetrics) (obj)));
        underlineHeight = (int)TypedValue.applyDimension(1, underlineHeight, ((android.util.DisplayMetrics) (obj)));
        dividerPadding = (int)TypedValue.applyDimension(1, dividerPadding, ((android.util.DisplayMetrics) (obj)));
        tabPadding = (int)TypedValue.applyDimension(1, tabPadding, ((android.util.DisplayMetrics) (obj)));
        dividerWidth = (int)TypedValue.applyDimension(1, dividerWidth, ((android.util.DisplayMetrics) (obj)));
        tabTextSize = (int)TypedValue.applyDimension(2, tabTextSize, ((android.util.DisplayMetrics) (obj)));
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, ATTRS);
        tabTextSize = typedarray.getDimensionPixelSize(1, tabTextSize);
        obj = typedarray.getColorStateList(2);
        int k = typedarray.getColor(0, 0x106000b);
        underlineColor = k;
        dividerColor = k;
        indicatorColor = k;
        i = typedarray.getDimensionPixelSize(3, 0);
        int j;
        if (i > 0)
        {
            j = i;
        } else
        {
            j = typedarray.getDimensionPixelSize(4, 0);
        }
        paddingLeft = j;
        if (i <= 0)
        {
            i = typedarray.getDimensionPixelSize(5, 0);
        }
        paddingRight = i;
        typedarray.recycle();
        context = context.obtainStyledAttributes(attributeset, com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip);
        indicatorColor = context.getColor(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsIndicatorColor, indicatorColor);
        underlineColor = context.getColor(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsUnderlineColor, underlineColor);
        dividerColor = context.getColor(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsDividerColor, dividerColor);
        dividerWidth = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsDividerWidth, dividerWidth);
        indicatorHeight = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsIndicatorHeight, indicatorHeight);
        underlineHeight = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsUnderlineHeight, underlineHeight);
        dividerPadding = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsDividerPadding, dividerPadding);
        tabPadding = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTabPaddingLeftRight, tabPadding);
        tabBackgroundResId = context.getResourceId(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTabBackground, tabBackgroundResId);
        shouldExpand = context.getBoolean(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsShouldExpand, shouldExpand);
        scrollOffset = context.getDimensionPixelSize(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsScrollOffset, scrollOffset);
        textAllCaps = context.getBoolean(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTextAllCaps, textAllCaps);
        isPaddingMiddle = context.getBoolean(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsPaddingMiddle, isPaddingMiddle);
        tabTypefaceStyle = context.getInt(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTextStyle, 1);
        tabTypefaceSelectedStyle = context.getInt(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTextSelectedStyle, 1);
        tabTextColorSelected = context.getColorStateList(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTextColorSelected);
        textAlpha = context.getInt(com.astuetz.pagerslidingtabstrip.R.styleable.PagerSlidingTabStrip_pstsTextAlpha, textAlpha);
        context.recycle();
        context = ((Context) (obj));
        if (obj == null)
        {
            context = getColorStateList(Color.argb(textAlpha, Color.red(k), Color.green(k), Color.blue(k)));
        }
        tabTextColor = context;
        if (tabTextColorSelected == null)
        {
            context = getColorStateList(k);
        } else
        {
            context = tabTextColorSelected;
        }
        tabTextColorSelected = context;
        setMarginBottomTabContainer();
        rectPaint = new Paint();
        rectPaint.setAntiAlias(true);
        rectPaint.setStyle(android.graphics.Paint.Style.FILL);
        dividerPaint = new Paint();
        dividerPaint.setAntiAlias(true);
        dividerPaint.setStrokeWidth(dividerWidth);
        defaultTabLayoutParams = new android.widget.LinearLayout.LayoutParams(-2, -1);
        expandedTabLayoutParams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F);
        if (locale == null)
        {
            locale = getResources().getConfiguration().locale;
        }
    }

    private void addTab(final int position, CharSequence charsequence, View view)
    {
        Object obj = (TextView)view.findViewById(com.astuetz.pagerslidingtabstrip.R.id.psts_tab_title);
        if (obj != null && charsequence != null)
        {
            ((TextView) (obj)).setText(charsequence);
        }
        view.setFocusable(true);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final PagerSlidingTabStrip this$0;
            final int val$position;

            public void onClick(View view1)
            {
                if (pager.getCurrentItem() != position)
                {
                    view1 = tabsContainer.getChildAt(pager.getCurrentItem());
                    notSelected(view1);
                    pager.setCurrentItem(position);
                } else
                if (tabReselectedListener != null)
                {
                    tabReselectedListener.onTabReselected(position);
                    return;
                }
            }

            
            {
                this$0 = PagerSlidingTabStrip.this;
                position = i;
                super();
            }
        });
        obj = tabsContainer;
        if (shouldExpand)
        {
            charsequence = expandedTabLayoutParams;
        } else
        {
            charsequence = defaultTabLayoutParams;
        }
        ((LinearLayout) (obj)).addView(view, position, charsequence);
    }

    private ColorStateList getColorStateList(int i)
    {
        return new ColorStateList(new int[][] {
            new int[0]
        }, new int[] {
            i
        });
    }

    private Pair getIndicatorCoordinates()
    {
        View view = tabsContainer.getChildAt(currentPosition);
        float f3 = view.getLeft();
        float f2 = view.getRight();
        float f1 = f3;
        float f = f2;
        if (currentPositionOffset > 0.0F)
        {
            f1 = f3;
            f = f2;
            if (currentPosition < tabCount - 1)
            {
                View view1 = tabsContainer.getChildAt(currentPosition + 1);
                f1 = view1.getLeft();
                f = view1.getRight();
                f1 = currentPositionOffset * f1 + (1.0F - currentPositionOffset) * f3;
                f = currentPositionOffset * f + (1.0F - currentPositionOffset) * f2;
            }
        }
        return new Pair(Float.valueOf(f1), Float.valueOf(f));
    }

    private void notSelected(View view)
    {
        if (view != null)
        {
            view = (TextView)view.findViewById(com.astuetz.pagerslidingtabstrip.R.id.psts_tab_title);
            if (view != null)
            {
                view.setTypeface(tabTypeface, tabTypefaceStyle);
                view.setTextColor(tabTextColor);
            }
        }
    }

    private void scrollToChild(int i, int j)
    {
        if (tabCount != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k = tabsContainer.getChildAt(i).getLeft() + j;
        if (i <= 0)
        {
            i = k;
            if (j <= 0)
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        i = scrollOffset;
        Pair pair = getIndicatorCoordinates();
        float f = k - i;
        i = (int)((((Float)pair.second).floatValue() - ((Float)pair.first).floatValue()) / 2.0F + f);
        if (i == lastScrollX) goto _L1; else goto _L3
_L3:
        lastScrollX = i;
        scrollTo(i, 0);
        return;
    }

    private void selected(View view)
    {
        if (view != null)
        {
            view = (TextView)view.findViewById(com.astuetz.pagerslidingtabstrip.R.id.psts_tab_title);
            if (view != null)
            {
                view.setTypeface(tabTypeface, tabTypefaceSelectedStyle);
                view.setTextColor(tabTextColorSelected);
            }
        }
    }

    private void setMarginBottomTabContainer()
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)tabsContainer.getLayoutParams();
        int i;
        if (indicatorHeight >= underlineHeight)
        {
            i = indicatorHeight;
        } else
        {
            i = underlineHeight;
        }
        marginlayoutparams.setMargins(marginlayoutparams.leftMargin, marginlayoutparams.topMargin, marginlayoutparams.rightMargin, i);
        tabsContainer.setLayoutParams(marginlayoutparams);
    }

    private void updateSelection(int i)
    {
        int j = 0;
        while (j < tabCount) 
        {
            View view = tabsContainer.getChildAt(j);
            boolean flag;
            if (j == i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view.setSelected(flag);
            if (flag)
            {
                selected(view);
            } else
            {
                notSelected(view);
            }
            j++;
        }
    }

    private void updateTabStyles()
    {
        int i = 0;
        while (i < tabCount) 
        {
            Object obj = tabsContainer.getChildAt(i);
            ((View) (obj)).setBackgroundResource(tabBackgroundResId);
            ((View) (obj)).setPadding(tabPadding, ((View) (obj)).getPaddingTop(), tabPadding, ((View) (obj)).getPaddingBottom());
            obj = (TextView)((View) (obj)).findViewById(com.astuetz.pagerslidingtabstrip.R.id.psts_tab_title);
            if (obj == null)
            {
                continue;
            }
            ((TextView) (obj)).setTextSize(0, tabTextSize);
            if (textAllCaps)
            {
                if (android.os.Build.VERSION.SDK_INT >= 14)
                {
                    ((TextView) (obj)).setAllCaps(true);
                } else
                {
                    ((TextView) (obj)).setText(((TextView) (obj)).getText().toString().toUpperCase(locale));
                }
            }
            i++;
        }
    }

    public int getDividerColor()
    {
        return dividerColor;
    }

    public int getDividerPadding()
    {
        return dividerPadding;
    }

    public int getDividerWidth()
    {
        return dividerWidth;
    }

    public int getIndicatorColor()
    {
        return indicatorColor;
    }

    public int getIndicatorHeight()
    {
        return indicatorHeight;
    }

    public int getScrollOffset()
    {
        return scrollOffset;
    }

    public boolean getShouldExpand()
    {
        return shouldExpand;
    }

    public int getTabBackground()
    {
        return tabBackgroundResId;
    }

    public int getTabPaddingLeftRight()
    {
        return tabPadding;
    }

    public ColorStateList getTextColor()
    {
        return tabTextColor;
    }

    public int getTextSize()
    {
        return tabTextSize;
    }

    public int getUnderlineColor()
    {
        return underlineColor;
    }

    public int getUnderlineHeight()
    {
        return underlineHeight;
    }

    public boolean isTextAllCaps()
    {
        return textAllCaps;
    }

    public void notifyDataSetChanged()
    {
        tabsContainer.removeAllViews();
        tabCount = pager.getAdapter().getCount();
        int i = 0;
        while (i < tabCount) 
        {
            View view;
            if (pager.getAdapter() instanceof CustomTabProvider)
            {
                view = ((CustomTabProvider)pager.getAdapter()).getCustomTabView(this, i);
            } else
            {
                view = LayoutInflater.from(getContext()).inflate(com.astuetz.pagerslidingtabstrip.R.layout.psts_tab, this, false);
            }
            addTab(i, pager.getAdapter().getPageTitle(i), view);
            i++;
        }
        updateTabStyles();
        getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final PagerSlidingTabStrip this$0;

            public void onGlobalLayout()
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    return;
                } else
                {
                    getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    return;
                }
            }

            
            {
                this$0 = PagerSlidingTabStrip.this;
                super();
            }
        });
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (pager != null && !adapterObserver.isAttached())
        {
            pager.getAdapter().registerDataSetObserver(adapterObserver);
            adapterObserver.setAttached(true);
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (pager != null && adapterObserver.isAttached())
        {
            pager.getAdapter().unregisterDataSetObserver(adapterObserver);
            adapterObserver.setAttached(false);
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (!isInEditMode() && tabCount != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = getHeight();
        rectPaint.setColor(indicatorColor);
        Pair pair = getIndicatorCoordinates();
        float f = ((Float)pair.first).floatValue();
        float f1 = paddingLeft;
        float f2 = j - indicatorHeight;
        float f3 = ((Float)pair.second).floatValue();
        canvas.drawRect(f1 + f, f2, (float)paddingLeft + f3, j, rectPaint);
        rectPaint.setColor(underlineColor);
        canvas.drawRect(paddingLeft, j - underlineHeight, tabsContainer.getWidth() + paddingRight, j, rectPaint);
        if (dividerWidth != 0)
        {
            dividerPaint.setStrokeWidth(dividerWidth);
            dividerPaint.setColor(dividerColor);
            int i = 0;
            while (i < tabCount - 1) 
            {
                View view = tabsContainer.getChildAt(i);
                canvas.drawLine(view.getRight(), dividerPadding, view.getRight(), j - dividerPadding, dividerPaint);
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (isPaddingMiddle || paddingLeft > 0 || paddingRight > 0)
        {
            tabsContainer.setMinimumWidth(getWidth());
            setClipToPadding(false);
        }
        if (tabsContainer.getChildCount() > 0)
        {
            tabsContainer.getChildAt(0).getViewTreeObserver().addOnGlobalLayoutListener(firstTabGlobalLayoutListener);
        }
        super.onLayout(flag, i, j, k, l);
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        currentPosition = ((SavedState) (parcelable)).currentPosition;
        if (currentPosition != 0 && tabsContainer.getChildCount() > 0)
        {
            notSelected(tabsContainer.getChildAt(0));
            selected(tabsContainer.getChildAt(currentPosition));
        }
        requestLayout();
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.currentPosition = currentPosition;
        return savedstate;
    }

    public void setAllCaps(boolean flag)
    {
        textAllCaps = flag;
    }

    public void setDividerColor(int i)
    {
        dividerColor = i;
        invalidate();
    }

    public void setDividerColorResource(int i)
    {
        dividerColor = getResources().getColor(i);
        invalidate();
    }

    public void setDividerPadding(int i)
    {
        dividerPadding = i;
        invalidate();
    }

    public void setDividerWidth(int i)
    {
        dividerWidth = i;
        invalidate();
    }

    public void setIndicatorColor(int i)
    {
        indicatorColor = i;
        invalidate();
    }

    public void setIndicatorColorResource(int i)
    {
        indicatorColor = getResources().getColor(i);
        invalidate();
    }

    public void setIndicatorHeight(int i)
    {
        indicatorHeight = i;
        invalidate();
    }

    public void setOnPageChangeListener(android.support.v4.view.ViewPager.OnPageChangeListener onpagechangelistener)
    {
        delegatePageListener = onpagechangelistener;
    }

    public void setOnTabReselectedListener(OnTabReselectedListener ontabreselectedlistener)
    {
        tabReselectedListener = ontabreselectedlistener;
    }

    public void setScrollOffset(int i)
    {
        scrollOffset = i;
        invalidate();
    }

    public void setShouldExpand(boolean flag)
    {
        shouldExpand = flag;
        if (pager != null)
        {
            requestLayout();
        }
    }

    public void setTabBackground(int i)
    {
        tabBackgroundResId = i;
    }

    public void setTabPaddingLeftRight(int i)
    {
        tabPadding = i;
        updateTabStyles();
    }

    public void setTextColor(int i)
    {
        setTextColor(getColorStateList(i));
    }

    public void setTextColor(ColorStateList colorstatelist)
    {
        tabTextColor = colorstatelist;
        updateTabStyles();
    }

    public void setTextColorResource(int i)
    {
        setTextColor(getResources().getColor(i));
    }

    public void setTextColorStateListResource(int i)
    {
        setTextColor(getResources().getColorStateList(i));
    }

    public void setTextSize(int i)
    {
        tabTextSize = i;
        updateTabStyles();
    }

    public void setTypeface(Typeface typeface, int i)
    {
        tabTypeface = typeface;
        tabTypefaceSelectedStyle = i;
        updateTabStyles();
    }

    public void setUnderlineColor(int i)
    {
        underlineColor = i;
        invalidate();
    }

    public void setUnderlineColorResource(int i)
    {
        underlineColor = getResources().getColor(i);
        invalidate();
    }

    public void setUnderlineHeight(int i)
    {
        underlineHeight = i;
        invalidate();
    }

    public void setViewPager(ViewPager viewpager)
    {
        pager = viewpager;
        if (viewpager.getAdapter() == null)
        {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        } else
        {
            viewpager.setOnPageChangeListener(pageListener);
            viewpager.getAdapter().registerDataSetObserver(adapterObserver);
            adapterObserver.setAttached(true);
            notifyDataSetChanged();
            return;
        }
    }




/*
    static int access$1002(PagerSlidingTabStrip pagerslidingtabstrip, int i)
    {
        pagerslidingtabstrip.currentPosition = i;
        return i;
    }

*/


/*
    static float access$1102(PagerSlidingTabStrip pagerslidingtabstrip, float f)
    {
        pagerslidingtabstrip.currentPositionOffset = f;
        return f;
    }

*/












/*
    static int access$702(PagerSlidingTabStrip pagerslidingtabstrip, int i)
    {
        pagerslidingtabstrip.paddingLeft = i;
        return i;
    }

*/



/*
    static int access$802(PagerSlidingTabStrip pagerslidingtabstrip, int i)
    {
        pagerslidingtabstrip.paddingRight = i;
        return i;
    }

*/



/*
    static int access$902(PagerSlidingTabStrip pagerslidingtabstrip, int i)
    {
        pagerslidingtabstrip.scrollOffset = i;
        return i;
    }

*/
}
