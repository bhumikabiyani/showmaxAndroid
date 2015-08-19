.class final Lcom/flurry/android/monolithic/sdk/impl/wk;
.super Lcom/flurry/android/monolithic/sdk/impl/we;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/we;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/wk;->c(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/wk;->c(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
