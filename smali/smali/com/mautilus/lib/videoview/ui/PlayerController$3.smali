.class Lcom/mautilus/lib/videoview/ui/PlayerController$3;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;->initBackIconIv(I)V
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
    .line 289
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$3;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$3;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$300(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$3;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$300(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;->onBackClick()V

    .line 297
    :cond_0
    return-void
.end method
