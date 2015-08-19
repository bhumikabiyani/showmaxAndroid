.class Lcom/mautilus/lib/videoview/ui/PlayerController$1;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;
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
    .line 186
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/util/SystemUiHider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/util/SystemUiHider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->hide()V

    .line 194
    :cond_0
    return-void
.end method
