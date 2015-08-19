.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;,
        Lcom/astuetz/PagerSlidingTabStrip$PageListener;,
        Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;,
        Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final PADDING_INDEX:I = 0x3

.field private static final PADDING_LEFT_INDEX:I = 0x4

.field private static final PADDING_RIGHT_INDEX:I = 0x5

.field private static final TEXT_COLOR_INDEX:I = 0x2

.field private static final TEXT_COLOR_PRIMARY:I = 0x0

.field private static final TEXT_SIZE_INDEX:I = 0x1


# instance fields
.field private final adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private isPaddingMiddle:Z

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private paddingLeft:I

.field private paddingRight:I

.field private final pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

.field private tabTextColor:Landroid/content/res/ColorStateList;

.field private tabTextColorSelected:Landroid/content/res/ColorStateList;

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceSelectedStyle:I

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private textAlpha:I

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010036
        0x1010095
        0x1010098
        0x10100d5
        0x10100d6
        0x10100d8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v5, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-direct {v5, p0, v6}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    .line 84
    new-instance v5, Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-direct {v5, p0, v6}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    .line 85
    iput-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .line 93
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    .line 94
    const/4 v5, 0x0

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 100
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 102
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 105
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 106
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 109
    const/16 v5, 0xc

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 110
    const/16 v5, 0xe

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 111
    iput-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 112
    iput-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    .line 113
    const/16 v5, 0x96

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    .line 115
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    .line 116
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    .line 118
    iput-boolean v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 119
    iput-boolean v10, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 120
    iput-boolean v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 122
    iput-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 123
    iput v10, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 124
    iput v10, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 127
    iput v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    .line 129
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$drawable;->psts_background_tab:I

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 377
    new-instance v5, Lcom/astuetz/PagerSlidingTabStrip$3;

    invoke-direct {v5, p0}, Lcom/astuetz/PagerSlidingTabStrip$3;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 143
    invoke-virtual {p0, v10}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 144
    invoke-virtual {p0, v9}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 145
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 146
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 151
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 152
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 153
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 154
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 155
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 156
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v5, v5

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 157
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v5, v5

    invoke-static {v7, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 160
    sget-object v5, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 162
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 163
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    const v5, 0x106000b

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 165
    .local v4, "textPrimaryColor":I
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 166
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 167
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 168
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 169
    .local v3, "padding":I
    if-lez v3, :cond_2

    move v5, v3

    :goto_0
    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    .line 170
    if-lez v3, :cond_3

    .end local v3    # "padding":I
    :goto_1
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    sget-object v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 176
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 177
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 178
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerWidth:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 179
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 180
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 181
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 182
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 183
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 184
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 185
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 186
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 187
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsPaddingMiddle:I

    iget-boolean v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 188
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextStyle:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 189
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextSelectedStyle:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 190
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextColorSelected:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    .line 191
    sget v5, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextAlpha:I

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    if-nez v1, :cond_0

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    iput-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 199
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_4

    invoke-direct {p0, v4}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    .line 201
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->setMarginBottomTabContainer()V

    .line 203
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 204
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 208
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v5, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 217
    :cond_1
    return-void

    .line 169
    .restart local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    .restart local v3    # "padding":I
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto/16 :goto_0

    .line 170
    :cond_3
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto/16 :goto_1

    .line 199
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v3    # "padding":I
    :cond_4
    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method static synthetic access$1000(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$1102(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$1200(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/astuetz/PagerSlidingTabStrip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    return v0
.end method

.method static synthetic access$700(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    return v0
.end method

.method static synthetic access$702(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    return p1
.end method

.method static synthetic access$800(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    return v0
.end method

.method static synthetic access$802(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    return p1
.end method

.method static synthetic access$900(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 50
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method static synthetic access$902(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return p1
.end method

.method private addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "tabView"    # Landroid/view/View;

    .prologue
    .line 273
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 275
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 279
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v2, p3, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "textColor"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 741
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private getIndicatorCoordinates()Landroid/support/v4/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 342
    iget-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "currentTab":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v1, v6

    .line 344
    .local v1, "lineLeft":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v2, v6

    .line 347
    .local v2, "lineRight":F
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 349
    iget-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 350
    .local v3, "nextTab":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v4, v6

    .line 351
    .local v4, "nextTabLeft":F
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v5, v6

    .line 353
    .local v5, "nextTabRight":F
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v1

    add-float v1, v6, v7

    .line 354
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v2

    add-float v2, v6, v7

    .line 356
    .end local v3    # "nextTab":Landroid/view/View;
    .end local v4    # "nextTabLeft":F
    .end local v5    # "nextTabRight":F
    :cond_0
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private notSelected(Landroid/view/View;)V
    .locals 3
    .param p1, "tab"    # Landroid/view/View;

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 503
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 506
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private scrollToChild(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 318
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v1, v2, p2

    .line 323
    .local v1, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 329
    :cond_2
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v1, v2

    .line 330
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 331
    .local v0, "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    int-to-float v3, v1

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v4, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 334
    .end local v0    # "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_3
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v1, v2, :cond_0

    .line 335
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private selected(Landroid/view/View;)V
    .locals 3
    .param p1, "tab"    # Landroid/view/View;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 511
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 513
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setMarginBottomTabContainer()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    if-lt v2, v3, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 222
    .local v0, "bottomMargin":I
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 223
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void

    .line 221
    .end local v0    # "bottomMargin":I
    :cond_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    goto :goto_0
.end method

.method private updateSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 487
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "tv":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 489
    .local v1, "selected":Z
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 490
    if-eqz v1, :cond_1

    .line 491
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    .line 486
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "selected":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 493
    .restart local v1    # "selected":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    goto :goto_2

    .line 496
    .end local v1    # "selected":Z
    .end local v2    # "tv":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 7

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 298
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 299
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 302
    .local v1, "tab_title":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 303
    const/4 v3, 0x0

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 307
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 308
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 296
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 315
    .end local v1    # "tab_title":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 239
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    check-cast v3, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->getCustomTabView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "tabView":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-direct {p0, v0, v2, v1}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/astuetz/pagerslidingtabstrip/R$layout;->psts_tab:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "tabView":Landroid/view/View;
    goto :goto_1

    .line 255
    .end local v1    # "tabView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 256
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {v4, p0}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 539
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 542
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 545
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 549
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 550
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 553
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 556
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 406
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 427
    :cond_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v6

    .line 412
    .local v6, "height":I
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object v8

    .line 414
    .local v8, "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    iget-object v0, v8, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 419
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 424
    .local v9, "tab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    if-lez v0, :cond_1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 365
    invoke-virtual {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setClipToPadding(Z)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 374
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 375
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 560
    move-object v0, p1

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 561
    .local v0, "savedState":Lcom/astuetz/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 562
    iget v1, v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    .line 563
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    .line 565
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 568
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 573
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 574
    .local v0, "savedState":Lcom/astuetz/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 575
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 729
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 691
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 692
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 693
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 697
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 698
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 711
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 712
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 713
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "dividerWidthPx"    # I

    .prologue
    .line 701
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 702
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 703
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 667
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 668
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 672
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 673
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 676
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 677
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 678
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 435
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;)V
    .locals 0
    .param p1, "tabReselectedListener"    # Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .line 431
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 716
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 717
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 718
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 1
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 722
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 725
    :cond_0
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 765
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 768
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 769
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 770
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 738
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 746
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 747
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    .line 751
    return-void
.end method

.method public setTextColorStateListResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 755
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 733
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 734
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 758
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 759
    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 760
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 761
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 681
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 682
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 683
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 687
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 688
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 706
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 707
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 708
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 228
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 233
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 236
    return-void
.end method
