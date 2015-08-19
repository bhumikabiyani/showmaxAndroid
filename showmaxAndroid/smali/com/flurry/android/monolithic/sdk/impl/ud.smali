.class public Lcom/flurry/android/monolithic/sdk/impl/ud;
.super Lcom/flurry/android/monolithic/sdk/impl/wv;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/wv",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ud;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wv;-><init>(Ljava/lang/Class;)V

    .line 25
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ud;->a:Ljava/lang/Class;

    .line 26
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ud;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Calendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ud;->B(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Date;

    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ud;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ud;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 41
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ud;->a:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method
