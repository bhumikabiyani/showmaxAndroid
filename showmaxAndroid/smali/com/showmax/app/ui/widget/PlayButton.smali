.class public Lcom/showmax/app/ui/widget/PlayButton;
.super Landroid/widget/FrameLayout;
.source "PlayButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/PlayButton$State;
    }
.end annotation


# instance fields
.field private mPlay:Landroid/view/View;

.field private mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

.field private mPurchaseContainer:Landroid/view/View;

.field private mPurchasePriceTv:Landroid/widget/TextView;

.field private mPurchasedContainer:Landroid/view/View;

.field private mPurchasedTimeRemainingTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/showmax/app/ui/widget/PlayButton;->init(Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/PlayButton;->init(Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private getRemainingTimeString(I)Ljava/lang/String;
    .locals 10
    .param p1, "remainingTime"    # I

    .prologue
    .line 111
    if-lez p1, :cond_1

    .line 113
    div-int/lit8 v6, p1, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    int-to-long v2, v6

    .line 114
    .local v2, "diffMinutes":J
    div-int/lit8 v6, p1, 0x3c

    div-int/lit8 v6, v6, 0x3c

    int-to-long v0, v6

    .line 116
    .local v0, "diffHours":J
    const-string v6, "[PlayButton]::[getRemainingTimeString]::[remainingTime: %d]::[diffMinutes: %d]::[diffHours: %d]::"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 116
    invoke-static {v6, v7}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/PlayButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "hourStr":Ljava/lang/String;
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .end local v0    # "diffHours":J
    .end local v2    # "diffMinutes":J
    .end local v4    # "hourStr":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v6

    .line 127
    .restart local v0    # "diffHours":J
    .restart local v2    # "diffMinutes":J
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/PlayButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .restart local v4    # "hourStr":Ljava/lang/String;
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    .end local v0    # "diffHours":J
    .end local v2    # "diffMinutes":J
    .end local v4    # "hourStr":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v6, "-"

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 60
    sget-object v0, Lcom/showmax/app/ui/widget/PlayButton$State;->PLAY:Lcom/showmax/app/ui/widget/PlayButton$State;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/PlayButton;->setClickable(Z)V

    .line 62
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/PlayButton;->initViews()V

    .line 63
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/PlayButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03008b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    const v1, 0x7f0b019d

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlay:Landroid/view/View;

    .line 71
    const v1, 0x7f0b019e

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchaseContainer:Landroid/view/View;

    .line 72
    const v1, 0x7f0b01a1

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedContainer:Landroid/view/View;

    .line 74
    const v1, 0x7f0b01a0

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasePriceTv:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0b01a3

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedTimeRemainingTv:Landroid/widget/TextView;

    .line 76
    return-void
.end method


# virtual methods
.method public getState()Lcom/showmax/app/ui/widget/PlayButton$State;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

    return-object v0
.end method

.method public showPlayButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 85
    sget-object v0, Lcom/showmax/app/ui/widget/PlayButton$State;->PLAY:Lcom/showmax/app/ui/widget/PlayButton$State;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

    .line 86
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchaseContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public showPlayRemainingButton(I)V
    .locals 3
    .param p1, "remainingTime"    # I

    .prologue
    const/16 v2, 0x8

    .line 102
    sget-object v0, Lcom/showmax/app/ui/widget/PlayButton$State;->PURCHASED:Lcom/showmax/app/ui/widget/PlayButton$State;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedTimeRemainingTv:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/showmax/app/ui/widget/PlayButton;->getRemainingTimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchaseContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public showPurchaseButton(Ljava/lang/String;)V
    .locals 3
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 93
    sget-object v0, Lcom/showmax/app/ui/widget/PlayButton$State;->PURCHASE:Lcom/showmax/app/ui/widget/PlayButton$State;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlayButtonState:Lcom/showmax/app/ui/widget/PlayButton$State;

    .line 94
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasePriceTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchaseContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/showmax/app/ui/widget/PlayButton;->mPurchasedContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method
