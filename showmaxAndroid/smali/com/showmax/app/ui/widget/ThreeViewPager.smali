.class public Lcom/showmax/app/ui/widget/ThreeViewPager;
.super Landroid/widget/RelativeLayout;
.source "ThreeViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;
    }
.end annotation


# static fields
.field public static final DELAY_BETWEEN_AUTO_PAGE_CHANGE:I = 0x1f40


# instance fields
.field private mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

.field private mAutoPageChangeRunnable:Ljava/lang/Runnable;

.field private mCenter:Landroid/graphics/Point;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field mNeedsRedraw:Z

.field private mOnItemClickListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPagerTouchListener:Landroid/view/View$OnTouchListener;

.field private mPageAutoChangeEnabled:Z

.field private mPageAutoChangePaused:Z

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerContainer:Landroid/widget/LinearLayout;

.field private mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mThreeViewPagerListener:Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$1;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 231
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$2;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnItemClickListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    .line 244
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$3;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPagerTouchListener:Landroid/view/View$OnTouchListener;

    .line 264
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$4;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    .line 85
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$1;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 231
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$2;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnItemClickListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    .line 244
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$3;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPagerTouchListener:Landroid/view/View$OnTouchListener;

    .line 264
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$4;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    .line 91
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$1;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 231
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$2;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnItemClickListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    .line 244
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$3;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPagerTouchListener:Landroid/view/View$OnTouchListener;

    .line 264
    new-instance v0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager$4;-><init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    .line 97
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->init()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mThreeViewPagerListener:Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/widget/ThreeViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangePaused:Z

    return v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/widget/ThreeViewPager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangePaused:Z

    return p1
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/widget/ThreeViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangeEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/model/adapter/AdvertisementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mCenter:Landroid/graphics/Point;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mNeedsRedraw:Z

    .line 178
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->initViews()V

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setLayerType(ILandroid/graphics/Paint;)V

    .line 187
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 192
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030093

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 194
    const v2, 0x7f0b01c9

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPagerContainer:Landroid/widget/LinearLayout;

    .line 195
    const v2, 0x7f0b01ca

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 196
    const v2, 0x7f0b01cb

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 197
    const v2, 0x7f0b01cc

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 199
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 200
    .local v1, "pageSpacing":I
    iget-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 202
    iget-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v3, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    iget-object v2, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnPagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    return-void
.end method

.method private startPageAutoChange()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void
.end method

.method private stopPageAutoChange()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAutoPageChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mCenter:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 104
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mCenter:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 112
    .local v1, "touchX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 113
    .local v2, "touchY":F
    iget-object v3, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 114
    .local v0, "pagerWidth":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v3, v1, v3

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 115
    iget-object v3, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public setAutoPageEnabled(Z)V
    .locals 1
    .param p1, "autoPageEnabled"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangeEnabled:Z

    .line 159
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangeEnabled:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->startPageAutoChange()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->stopPageAutoChange()V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "initialPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Advertisement;>;"
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    .line 123
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mOnItemClickListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->setOnItemClickListener(Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;)V

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    invoke-virtual {v0, p1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->setData(Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 134
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    invoke-virtual {v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 141
    :cond_1
    return-void
.end method

.method public setNoData()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 145
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(I)V

    .line 146
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public setThreeViewPagerListener(Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mThreeViewPagerListener:Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;

    .line 154
    return-void
.end method
