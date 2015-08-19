.class public Lcom/flurry/android/monolithic/sdk/impl/tp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/tq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->a:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/to;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/to;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/flurry/android/monolithic/sdk/impl/tq;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/tq;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->b:Ljava/util/HashMap;

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/flurry/android/monolithic/sdk/impl/to;-><init>([Lcom/flurry/android/monolithic/sdk/impl/tq;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afz;)V

    return-object v1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/sw;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/tq;

    invoke-direct {v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/tq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/sw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tp;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method
