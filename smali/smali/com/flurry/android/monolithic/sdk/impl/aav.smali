.class public Lcom/flurry/android/monolithic/sdk/impl/aav;
.super Lcom/flurry/android/monolithic/sdk/impl/abt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abt",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No serializer found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->m:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aav;->a(Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 29
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->m:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aav;->a(Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 42
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->e(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 43
    return-void
.end method
