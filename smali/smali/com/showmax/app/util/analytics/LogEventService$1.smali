.class Lcom/showmax/app/util/analytics/LogEventService$1;
.super Ljava/lang/Object;
.source "LogEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/analytics/LogEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/util/analytics/LogEventService;


# direct methods
.method constructor <init>(Lcom/showmax/app/util/analytics/LogEventService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/util/analytics/LogEventService;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/showmax/app/util/analytics/LogEventService$1;->this$0:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService$1;->this$0:Lcom/showmax/app/util/analytics/LogEventService;

    # invokes: Lcom/showmax/app/util/analytics/LogEventService;->dispatchAllLogEvents()V
    invoke-static {v0}, Lcom/showmax/app/util/analytics/LogEventService;->access$000(Lcom/showmax/app/util/analytics/LogEventService;)V

    .line 78
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService$1;->this$0:Lcom/showmax/app/util/analytics/LogEventService;

    # invokes: Lcom/showmax/app/util/analytics/LogEventService;->startDispatchAllLogEventsTask()V
    invoke-static {v0}, Lcom/showmax/app/util/analytics/LogEventService;->access$100(Lcom/showmax/app/util/analytics/LogEventService;)V

    .line 79
    return-void
.end method
