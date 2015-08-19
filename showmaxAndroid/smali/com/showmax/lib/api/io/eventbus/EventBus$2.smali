.class Lcom/showmax/lib/api/io/eventbus/EventBus$2;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/lib/api/io/eventbus/EventBus;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/showmax/lib/api/io/eventbus/EventBus;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/lib/api/io/eventbus/EventBus;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/showmax/lib/api/io/eventbus/EventBus$2;->this$0:Lcom/showmax/lib/api/io/eventbus/EventBus;

    iput-object p2, p0, Lcom/showmax/lib/api/io/eventbus/EventBus$2;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/showmax/lib/api/io/eventbus/EventBus$2;->this$0:Lcom/showmax/lib/api/io/eventbus/EventBus;

    iget-object v1, p0, Lcom/showmax/lib/api/io/eventbus/EventBus$2;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
