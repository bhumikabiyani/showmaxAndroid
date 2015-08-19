.class Lcom/showmax/app/ui/ActivityPlayer$6;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$6;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$6;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPlayer;->finish()V

    .line 964
    return-void
.end method
