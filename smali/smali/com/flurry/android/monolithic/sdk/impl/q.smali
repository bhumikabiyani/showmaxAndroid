.class Lcom/flurry/android/monolithic/sdk/impl/q;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/p;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/q;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 846
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/q;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/q;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/q;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/q;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v5, v5, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 847
    return-void
.end method
