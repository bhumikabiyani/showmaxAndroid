.class public final Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;
.super Landroid/view/animation/Animation;
.source "ParallaxScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/ParallaxScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewCompat"
.end annotation


# instance fields
.field private mTranslationY:F

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 231
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->setDuration(J)V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->setFillAfter(Z)V

    .line 233
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->mView:Landroid/view/View;

    .line 235
    return-void
.end method

.method public static wrap(Landroid/view/View;)Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 207
    .local v0, "wrapper":Landroid/view/animation/Animation;
    instance-of v1, v0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;

    .line 213
    .end local v0    # "wrapper":Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .restart local v0    # "wrapper":Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;

    .end local v0    # "wrapper":Landroid/view/animation/Animation;
    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 249
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 239
    iput p1, p0, Lcom/showmax/app/ui/widget/ParallaxScrollView$ViewCompat;->mTranslationY:F

    .line 240
    return-void
.end method
