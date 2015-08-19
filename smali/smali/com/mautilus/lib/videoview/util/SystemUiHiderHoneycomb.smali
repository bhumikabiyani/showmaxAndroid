.class public Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;
.super Lcom/mautilus/lib/videoview/util/SystemUiHiderBase;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/mautilus/lib/videoview/util/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 37
    iput-boolean v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mVisible:Z

    .line 97
    new-instance v0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;-><init>(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 47
    iput v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 48
    iput v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 50
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 57
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x404

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 60
    :cond_0
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    .line 63
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 64
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x202

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 65
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mTestFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 67
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    .prologue
    .line 15
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mTestFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    .prologue
    .line 15
    iget v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mHideFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 81
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 74
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    return-void
.end method
