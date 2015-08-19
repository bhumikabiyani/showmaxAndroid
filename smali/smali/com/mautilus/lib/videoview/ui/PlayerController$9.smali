.class Lcom/mautilus/lib/videoview/ui/PlayerController$9;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;->setSystemUiHider(Lcom/mautilus/lib/videoview/util/SystemUiHider;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$9;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1127
    const-string v0, "[PlayerController]::[onClick]::[mMovieDetailShown: %b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$9;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$9;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$9;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->toggleControls()V

    .line 1132
    :cond_0
    return-void
.end method
