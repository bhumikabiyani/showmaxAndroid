.class Lcom/showmax/app/ShowMaxApp$2;
.super Ljava/util/TimerTask;
.source "ShowMaxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ShowMaxApp;->startActivityTransitionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ShowMaxApp;


# direct methods
.method constructor <init>(Lcom/showmax/app/ShowMaxApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ShowMaxApp;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp$2;->this$0:Lcom/showmax/app/ShowMaxApp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp$2;->this$0:Lcom/showmax/app/ShowMaxApp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/showmax/app/ShowMaxApp;->wasInBackground:Z

    .line 360
    return-void
.end method
