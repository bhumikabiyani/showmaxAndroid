.class public Lcom/showmax/app/ui/widget/ParallaxScrollView;
.super Landroid/widget/ScrollView;
.source "ParallaxScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_FACTOR:F = 0.6f

.field private static final DEFAULT_SCROLL_FACTOR:F = 0.6f

.field private static final PRE_HONEYCOMB:Z


# instance fields
.field private mAlphaFactor:F

.field private mBackgroundResId:I

.field private mBackgroundView:Landroid/view/View;

.field private mScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->PRE_HONEYCOMB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x3f19999a    # 0.6f

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    .line 31
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mAlphaFactor:F

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x3f19999a    # 0.6f

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    .line 31
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mAlphaFactor:F

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v0, 0x3f19999a    # 0.6f

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    .line 31
    iput v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mAlphaFactor:F

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    sget-object v1, Lcom/showmax/app/R$styleable;->ParallaxScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "values":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundResId:I

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mAlphaFactor:F

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    .end local v0    # "values":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method private translateBackgroundView(I)V
    .locals 6
    .param p1, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 169
    iget-object v4, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 171
    int-to-float v4, p1

    iget v5, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 172
    .local v3, "translationY":I
    sget-boolean v4, Lcom/showmax/app/ui/widget/ParallaxScrollView;->PRE_HONEYCOMB:Z

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    invoke-static {v4}, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->wrap(Landroid/view/View;)Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;

    move-result-object v4

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->setTranslationY(F)V

    .line 190
    .end local v3    # "translationY":I
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v3    # "translationY":I
    :cond_1
    iget-object v4, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 182
    iget-object v4, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 183
    .local v2, "totalHeight":I
    int-to-float v4, p1

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mAlphaFactor:F

    mul-float v0, v4, v5

    .line 184
    .local v0, "alpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v0

    .line 187
    .local v1, "alphaReverse":F
    iget-object v4, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 139
    iget v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundResId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    iget v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundResId:I

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    .line 143
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->PRE_HONEYCOMB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    .line 156
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 157
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 124
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->translateBackgroundView(I)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 163
    invoke-direct {p0, p2}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->translateBackgroundView(I)V

    .line 164
    return-void
.end method

.method public setBackgroundView(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    .line 98
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mBackgroundView:Landroid/view/View;

    .line 108
    return-void
.end method

.method public setScrollFactor(F)V
    .locals 0
    .param p1, "scrollFactor"    # F

    .prologue
    .line 117
    iput p1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView;->mScrollFactor:F

    .line 118
    return-void
.end method
