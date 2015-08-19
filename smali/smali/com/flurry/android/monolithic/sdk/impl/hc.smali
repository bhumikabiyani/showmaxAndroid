.class Lcom/flurry/android/monolithic/sdk/impl/hc;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/gz;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hc;->b:Lcom/flurry/android/monolithic/sdk/impl/gz;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hc;->a:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hc;->a:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hc;->b:Lcom/flurry/android/monolithic/sdk/impl/gz;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->b(Ljava/lang/String;)V

    .line 73
    return-void
.end method
