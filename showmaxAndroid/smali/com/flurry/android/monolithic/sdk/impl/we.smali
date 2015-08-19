.class public abstract Lcom/flurry/android/monolithic/sdk/impl/we;
.super Lcom/flurry/android/monolithic/sdk/impl/rc;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/rc;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/we;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/we;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 37
    :cond_0
    return-object v0

    .line 35
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/we;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/we;->a:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/we;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected b(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected c(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/pt;->c(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method
