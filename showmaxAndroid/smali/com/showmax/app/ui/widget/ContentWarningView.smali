.class public Lcom/showmax/app/ui/widget/ContentWarningView;
.super Landroid/widget/FrameLayout;
.source "ContentWarningView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    }
.end annotation


# instance fields
.field private mBgLink:Ljava/lang/String;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnContainer:Landroid/widget/LinearLayout;

.field private mCloseBtn:Landroid/widget/Button;

.field private mConfirmationNeeded:Z

.field private mContentWarningBg:Landroid/widget/ImageView;

.field private mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

.field private mHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mTimeout:I

.field private mWatchBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 291
    new-instance v0, Lcom/showmax/app/ui/widget/ContentWarningView$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$4;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 328
    new-instance v0, Lcom/showmax/app/ui/widget/ContentWarningView$5;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$5;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHideRunnable:Ljava/lang/Runnable;

    .line 111
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/widget/ContentWarningView;->initView(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    new-instance v0, Lcom/showmax/app/ui/widget/ContentWarningView$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$4;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 328
    new-instance v0, Lcom/showmax/app/ui/widget/ContentWarningView$5;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$5;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHideRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/widget/ContentWarningView;->initView(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/widget/ContentWarningView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mConfirmationNeeded:Z

    return v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/widget/ContentWarningView;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ContentWarningView;->showButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/widget/ContentWarningView;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ContentWarningView;->hideDelayed()V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/widget/ContentWarningView;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ContentWarningView;->hideButtons()V

    return-void
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/widget/ContentWarningView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/ContentWarningView;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/ContentWarningView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 340
    .local v0, "fadeOutAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/showmax/app/ui/widget/ContentWarningView$6;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$6;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 365
    return-object v0
.end method

.method private hideButtons()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    return-void
.end method

.method private hideDelayed()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHandler:Landroid/os/Handler;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mHideRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    const v0, 0x7f0b0199

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningBg:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0b019a

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnContainer:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0b019b

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mWatchBtn:Landroid/widget/Button;

    .line 121
    const v0, 0x7f0b019c

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mCloseBtn:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mWatchBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mCloseBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mWatchBtn:Landroid/widget/Button;

    new-instance v1, Lcom/showmax/app/ui/widget/ContentWarningView$1;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$1;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mCloseBtn:Landroid/widget/Button;

    new-instance v1, Lcom/showmax/app/ui/widget/ContentWarningView$2;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$2;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    return-void
.end method

.method private showButtons()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    return-void
.end method


# virtual methods
.method public initData(Lcom/showmax/lib/api/model/catalogue/ContentWarning;)V
    .locals 1
    .param p1, "contentWarning"    # Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    .prologue
    .line 157
    iget-boolean v0, p1, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->confirmation:Z

    iput-boolean v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mConfirmationNeeded:Z

    .line 158
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBgLink:Ljava/lang/String;

    .line 159
    iget v0, p1, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->timeout:I

    iput v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mTimeout:I

    .line 160
    return-void
.end method

.method public isButtonsShowed()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnContentWarningBtnClickListener(Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    .line 289
    return-void
.end method

.method public showContentWarning()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mBgLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningBg:Landroid/widget/ImageView;

    sget-object v2, Lcom/showmax/lib/api/utils/MauImage$ImageType;->CONTENT_WARNING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v3, Lcom/showmax/app/ui/widget/ContentWarningView$3;

    invoke-direct {v3, p0}, Lcom/showmax/app/ui/widget/ContentWarningView$3;-><init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 264
    return-void
.end method
