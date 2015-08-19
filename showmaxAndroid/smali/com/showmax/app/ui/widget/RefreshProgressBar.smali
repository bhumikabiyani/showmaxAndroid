.class public Lcom/showmax/app/ui/widget/RefreshProgressBar;
.super Landroid/widget/FrameLayout;
.source "RefreshProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshIcon:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;-><init>(Lcom/showmax/app/ui/widget/RefreshProgressBar;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->init(Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;-><init>(Lcom/showmax/app/ui/widget/RefreshProgressBar;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->init(Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/RefreshProgressBar;)Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->initViews()V

    .line 60
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030090

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    const v1, 0x7f0b01ba

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 68
    const v1, 0x7f0b01bb

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f0b01bc

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public setRefreshProgressBarListener(Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    .line 131
    return-void
.end method

.method public showMessage(I)V
    .locals 1
    .param p1, "textResId"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 76
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public showRefresh()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 83
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public showRefresh(I)V
    .locals 1
    .param p1, "textResId"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showRefresh(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public showRefresh(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    return-void
.end method
