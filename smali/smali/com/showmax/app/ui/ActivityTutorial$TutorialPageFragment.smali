.class public Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ActivityTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TutorialPageFragment"
.end annotation


# instance fields
.field private mHeight:I

.field private mImgSrc:I

.field private mText:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;
    .locals 3
    .param p0, "textResId"    # I
    .param p1, "imgResId"    # I

    .prologue
    .line 254
    new-instance v1, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;

    invoke-direct {v1}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;-><init>()V

    .line 255
    .local v1, "f":Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "text"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v2, "imgSrc"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 259
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mText:I

    .line 267
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "imgSrc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mImgSrc:I

    .line 268
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mHeight:I

    .line 269
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mWidth:I

    .line 270
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    const v0, 0x7f030047

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 284
    const v2, 0x7f0b012f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 285
    .local v1, "text":Landroid/widget/TextView;
    iget v2, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const v2, 0x7f0b012e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 288
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mImgSrc:I

    iget v4, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mWidth:I

    iget v5, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->mHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/showmax/lib/api/utils/MauImage;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    return-void
.end method
