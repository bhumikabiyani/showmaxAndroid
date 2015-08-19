.class Lcom/mautilus/lib/videoview/ui/PlayerController$10;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBottomContainerHeight:I

.field private mShortAnimTime:I

.field private mTopContainerHeight:I

.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 6
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1173
    const-string v0, "[PlayerController]::[onVisibilityChange]::[visible %b]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v0, v4, :cond_6

    .line 1180
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mTopContainerHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mBottomContainerHeight:I

    if-nez v0, :cond_1

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1800(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mTopContainerHeight:I

    .line 1183
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mBottomContainerHeight:I

    .line 1185
    :cond_1
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mShortAnimTime:I

    if-nez v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mShortAnimTime:I

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mShortAnimTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1190
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1800(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mShortAnimTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1201
    :goto_2
    if-eqz p1, :cond_9

    .line 1203
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 1210
    :goto_3
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHide:Z
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    const-string v0, "[PlayerController]::[onVisibilityChange]::[delayedHide]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2100(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v1

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->delayedHide(I)V
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2200(Lcom/mautilus/lib/videoview/ui/PlayerController;I)V

    .line 1216
    :cond_3
    return-void

    .line 1189
    :cond_4
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mBottomContainerHeight:I

    int-to-float v0, v0

    goto :goto_0

    .line 1190
    :cond_5
    iget v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->mBottomContainerHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_1

    .line 1197
    :cond_6
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz p1, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1800(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p1, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v0, v3

    .line 1197
    goto :goto_4

    :cond_8
    move v2, v3

    .line 1198
    goto :goto_5

    .line 1207
    :cond_9
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    goto :goto_3
.end method
