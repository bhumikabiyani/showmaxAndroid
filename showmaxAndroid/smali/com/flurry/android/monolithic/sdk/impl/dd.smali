.class public final Lcom/flurry/android/monolithic/sdk/impl/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/co;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/co;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/de;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/de;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dd;->a:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dd;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/co;

    .line 41
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/co;->a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 46
    :cond_1
    return-object v0
.end method
