.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mButtonBarHeight:I

.field private mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private mButtonHorizontalEdgeMargin:I

.field private mButtonPaddingFull:I

.field private mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private mContent:Landroid/view/View;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mDrawBottomDivider:Z

.field private mDrawTopDivider:Z

.field private mForceStack:Z

.field private mIsStacked:Z

.field private mNoTitlePaddingFull:I

.field private mReducePaddingNoTitleNoButtons:Z

.field private mTitleBar:Landroid/view/View;

.field private mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mUseFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 55
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 55
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 73
    invoke-direct {p0, p1, p2, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 55
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 55
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 1
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z

    .prologue
    .line 423
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v1, :cond_2

    .line 425
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 443
    .local v0, "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    if-nez p3, :cond_3

    .line 444
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 445
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 450
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 452
    .end local v0    # "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_2
    return-void

    .line 447
    .restart local v0    # "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 448
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .locals 7
    .param p0, "lv"    # Landroid/widget/AdapterView;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 532
    :cond_0
    :goto_0
    return v2

    .line 520
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 521
    .local v0, "firstItemVisible":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 523
    .local v1, "lastItemVisible":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 525
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "firstItemVisible":Z
    .end local v1    # "lastItemVisible":Z
    :cond_2
    move v0, v3

    .line 520
    goto :goto_1

    .restart local v0    # "firstItemVisible":Z
    :cond_3
    move v1, v3

    .line 521
    goto :goto_2
.end method

.method public static canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 10
    .param p0, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 483
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 484
    .local v4, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 487
    .local v0, "count":I
    instance-of v7, v4, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v7, :cond_1

    move-object v3, v4

    .line 488
    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 489
    .local v3, "llm":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 494
    .local v2, "lastVisible":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 498
    :cond_0
    :goto_0
    return v5

    .line 491
    .end local v2    # "lastVisible":I
    .end local v3    # "llm":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_1
    new-instance v5, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;

    const-string v6, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    invoke-direct {v5, v6}, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 497
    .restart local v2    # "lastVisible":I
    .restart local v3    # "llm":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_4

    move v1, v6

    .line 498
    .local v1, "lastItemVisible":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0

    .end local v1    # "lastItemVisible":Z
    :cond_4
    move v1, v5

    .line 497
    goto :goto_1
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .locals 4
    .param p0, "sv"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 506
    .local v0, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .locals 3
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 554
    :cond_1
    :goto_0
    return-object v0

    .line 546
    :cond_2
    const/4 v0, 0x0

    .line 547
    .local v0, "bottomView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 548
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 549
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 550
    move-object v0, v1

    .line 551
    goto :goto_0

    .line 547
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 559
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 560
    :cond_0
    const/4 v2, 0x0

    .line 569
    :cond_1
    :goto_0
    return-object v2

    .line 561
    :cond_2
    const/4 v2, 0x0

    .line 562
    .local v2, "topView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 563
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_3

    .line 565
    move-object v2, v0

    .line 566
    goto :goto_0

    .line 562
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    .line 96
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    .line 98
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 99
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 102
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    .line 103
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    .line 105
    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z
    .param p4, "hasButtons"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 462
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 463
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 466
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 456
    goto :goto_0

    :cond_3
    move v1, v2

    .line 463
    goto :goto_1
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z
    .param p4, "hasButtons"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    if-eqz p2, :cond_0

    .line 470
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 475
    :cond_0
    if-eqz p3, :cond_1

    .line 477
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 480
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 470
    goto :goto_0

    :cond_3
    move v1, v2

    .line 477
    goto :goto_1
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    move v0, v1

    .line 217
    .local v0, "visible":Z
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_0

    .line 218
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    .end local p0    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 219
    :cond_0
    :goto_1
    return v0

    .end local v0    # "visible":Z
    .restart local p0    # "v":Landroid/view/View;
    :cond_1
    move v0, v2

    .line 216
    goto :goto_0

    .end local p0    # "v":Landroid/view/View;
    .restart local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 218
    goto :goto_1
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z

    .prologue
    const/4 v5, 0x0

    .line 363
    if-nez p1, :cond_1

    .line 420
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 365
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    move-object v2, p1

    .line 366
    check-cast v2, Landroid/widget/ScrollView;

    .line 367
    .local v2, "sv":Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    invoke-direct {p0, v2, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    .line 370
    :cond_2
    if-eqz p2, :cond_3

    .line 371
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 372
    :cond_3
    if-eqz p3, :cond_0

    .line 373
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 375
    .end local v2    # "sv":Landroid/widget/ScrollView;
    :cond_4
    instance-of v4, p1, Landroid/widget/AdapterView;

    if-eqz v4, :cond_7

    move-object v2, p1

    .line 376
    check-cast v2, Landroid/widget/AdapterView;

    .line 377
    .local v2, "sv":Landroid/widget/AdapterView;
    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    invoke-direct {p0, v2, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    .line 380
    :cond_5
    if-eqz p2, :cond_6

    .line 381
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 382
    :cond_6
    if-eqz p3, :cond_0

    .line 383
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 385
    .end local v2    # "sv":Landroid/widget/AdapterView;
    :cond_7
    instance-of v4, p1, Landroid/webkit/WebView;

    if-eqz v4, :cond_8

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 403
    :cond_8
    instance-of v4, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_a

    .line 407
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    .line 408
    .local v1, "canScroll":Z
    if-eqz p2, :cond_9

    .line 409
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 410
    :cond_9
    if-eqz p3, :cond_0

    .line 411
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 412
    .end local v1    # "canScroll":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_a
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 413
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 414
    .local v3, "topView":Landroid/view/View;
    invoke-direct {p0, v3, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 415
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "bottomView":Landroid/view/View;
    if-eq v0, v3, :cond_0

    .line 417
    const/4 v4, 0x1

    invoke-direct {p0, v0, v5, v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 227
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 229
    .local v6, "y":I
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    .end local v6    # "y":I
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 234
    .restart local v6    # "y":I
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    .end local v6    # "y":I
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 111
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    if-ne v2, v3, :cond_0

    .line 113
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    .line 110
    .end local v1    # "v":Landroid/view/View;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .restart local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    if-ne v2, v3, :cond_1

    .line 115
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x0

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    .end local v1    # "v":Landroid/view/View;
    aput-object v1, v2, v3

    goto :goto_1

    .line 116
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    if-ne v2, v3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x1

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    .end local v1    # "v":Landroid/view/View;
    aput-object v1, v2, v3

    goto :goto_1

    .line 118
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    if-ne v2, v3, :cond_3

    .line 119
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x2

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    .end local v1    # "v":Landroid/view/View;
    aput-object v1, v2, v3

    goto :goto_1

    .line 121
    .restart local v1    # "v":Landroid/view/View;
    :cond_3
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    goto :goto_1

    .line 124
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 243
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    add-int v18, p3, v10

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 244
    add-int p3, p3, v10

    .line 249
    .end local v10    # "height":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, p3

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 252
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v17, v0

    sub-int p5, p5, v17

    .line 254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .local v5, "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_8

    aget-object v13, v5, v11

    .line 255
    .local v13, "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    invoke-static {v13}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 256
    invoke-virtual {v13}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v17

    sub-int v17, p5, v17

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 257
    invoke-virtual {v13}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v17

    sub-int p5, p5, v17

    .line 254
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 245
    .end local v5    # "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    move/from16 v17, v0

    add-int p3, p3, v17

    goto :goto_0

    .line 262
    :cond_4
    move/from16 v6, p5

    .line 263
    .local v6, "barBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v17, v0

    sub-int v6, v6, v17

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    move/from16 v17, v0

    sub-int v7, v6, v17

    .line 277
    .local v7, "barTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    move/from16 v16, v0

    .line 280
    .local v16, "offset":I
    const/4 v14, -0x1

    .line 281
    .local v14, "neutralLeft":I
    const/4 v15, -0x1

    .line 283
    .local v15, "neutralRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v17, v0

    sget-object v18, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 286
    add-int v8, p2, v16

    .line 287
    .local v8, "bl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v9, v8, v17

    .line 293
    .local v9, "br":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7, v9, v6}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 297
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v17, v0

    sget-object v18, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 300
    add-int v8, p2, v16

    .line 301
    .restart local v8    # "bl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v9, v8, v17

    .line 310
    .restart local v9    # "br":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7, v9, v6}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 313
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v17, v0

    sget-object v18, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    move/from16 v17, v0

    sub-int v9, p4, v17

    .line 317
    .restart local v9    # "br":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    .line 334
    .restart local v8    # "bl":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7, v9, v6}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 338
    .end local v6    # "barBottom":I
    .end local v7    # "barTop":I
    .end local v8    # "bl":I
    .end local v9    # "br":I
    .end local v14    # "neutralLeft":I
    .end local v15    # "neutralRight":I
    .end local v16    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 339
    return-void

    .line 289
    .restart local v6    # "barBottom":I
    .restart local v7    # "barTop":I
    .restart local v14    # "neutralLeft":I
    .restart local v15    # "neutralRight":I
    .restart local v16    # "offset":I
    :cond_9
    sub-int v9, p4, v16

    .line 290
    .restart local v9    # "br":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    .line 291
    .restart local v8    # "bl":I
    move v15, v8

    goto/16 :goto_2

    .line 302
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v17, v0

    sget-object v18, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 303
    sub-int v9, p4, v16

    .line 304
    .restart local v9    # "br":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    .restart local v8    # "bl":I
    goto/16 :goto_3

    .line 306
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    move/from16 v17, v0

    add-int v8, p2, v17

    .line 307
    .restart local v8    # "bl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v9, v8, v17

    .line 308
    .restart local v9    # "br":I
    move v14, v9

    goto/16 :goto_3

    .line 318
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v17, v0

    sget-object v18, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    move/from16 v17, v0

    add-int v8, p2, v17

    .line 320
    .restart local v8    # "bl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v9, v8, v17

    .restart local v9    # "br":I
    goto/16 :goto_4

    .line 322
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_f

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_f

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    sub-int v14, v15, v17

    .line 330
    :cond_e
    :goto_5
    move v8, v14

    .line 331
    .restart local v8    # "bl":I
    move v9, v15

    .restart local v9    # "br":I
    goto/16 :goto_4

    .line 324
    .end local v8    # "bl":I
    .end local v9    # "br":I
    :cond_f
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_10

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v15, v14, v17

    goto :goto_5

    .line 326
    :cond_10
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_e

    .line 327
    sub-int v17, p4, p2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v14, v17, v18

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v17

    add-int v15, v14, v17

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 128
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 129
    .local v17, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 131
    .local v11, "height":I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 132
    const/4 v10, 0x0

    .line 135
    .local v10, "hasButtons":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, "buttonsWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .local v3, "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v5, v3, v12

    .line 138
    .local v5, "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 139
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 141
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v18

    add-int v8, v8, v18

    .line 142
    const/4 v10, 0x1

    .line 137
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 146
    .end local v5    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 148
    .local v6, "buttonBarPadding":I
    mul-int/lit8 v18, v6, 0x2

    sub-int v7, v17, v18

    .line 149
    .local v7, "buttonFrameWidth":I
    if-le v8, v7, :cond_3

    const/4 v15, 0x1

    .line 154
    .end local v3    # "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v6    # "buttonBarPadding":I
    .end local v7    # "buttonFrameWidth":I
    .end local v8    # "buttonsWidth":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .local v15, "stacked":Z
    :goto_1
    const/16 v16, 0x0

    .line 155
    .local v16, "stackedHeight":I
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 156
    if-eqz v15, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .restart local v3    # "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_2
    if-ge v12, v13, :cond_5

    aget-object v5, v3, v12

    .line 158
    .restart local v5    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 159
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 161
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v18

    add-int v16, v16, v18

    .line 162
    const/4 v10, 0x1

    .line 157
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 149
    .end local v5    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v15    # "stacked":Z
    .end local v16    # "stackedHeight":I
    .restart local v6    # "buttonBarPadding":I
    .restart local v7    # "buttonFrameWidth":I
    .restart local v8    # "buttonsWidth":I
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 151
    .end local v3    # "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v6    # "buttonBarPadding":I
    .end local v7    # "buttonFrameWidth":I
    .end local v8    # "buttonsWidth":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_4
    const/4 v15, 0x1

    .restart local v15    # "stacked":Z
    goto :goto_1

    .line 167
    .restart local v16    # "stackedHeight":I
    :cond_5
    move v4, v11

    .line 168
    .local v4, "availableHeight":I
    const/4 v9, 0x0

    .line 169
    .local v9, "fullPadding":I
    const/4 v14, 0x0

    .line 170
    .local v14, "minPadding":I
    if-eqz v10, :cond_9

    .line 171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 172
    sub-int v4, v4, v16

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v9, v9, v18

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v14, v14, v18

    .line 185
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v4, v4, v18

    .line 193
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    sub-int v20, v4, v14

    const/high16 v21, -0x80000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v19, v4, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_6

    if-eqz v10, :cond_b

    .line 199
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v9

    sub-int v4, v4, v18

    .line 212
    :cond_7
    :goto_5
    sub-int v18, v11, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    .line 213
    return-void

    .line 176
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    move/from16 v18, v0

    sub-int v4, v4, v18

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v9, v9, v18

    goto/16 :goto_3

    .line 182
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v9, v9, v18

    goto/16 :goto_3

    .line 190
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    move/from16 v18, v0

    add-int v9, v9, v18

    goto/16 :goto_4

    .line 202
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v14

    sub-int v4, v4, v18

    goto :goto_5

    .line 206
    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 207
    const/4 v4, 0x0

    goto :goto_5
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 353
    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .local v0, "arr$":[Lcom/afollestad/materialdialogs/internal/MDButton;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 357
    .local v3, "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v3    # "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 349
    return-void
.end method

.method public setForceStack(Z)V
    .locals 0
    .param p1, "forceStack"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 343
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 344
    return-void
.end method
