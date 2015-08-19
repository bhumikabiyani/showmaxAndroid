.class Lcom/flurry/android/monolithic/sdk/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/bh;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/bh;I)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->a:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 1013
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1014
    const-string v0, "sourceEvent"

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->a:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "userConfirmed"

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    iget v6, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->b:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1016
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1017
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->u(Lcom/flurry/android/monolithic/sdk/impl/o;)Lcom/flurry/android/monolithic/sdk/impl/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/u;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->u(Lcom/flurry/android/monolithic/sdk/impl/o;)Lcom/flurry/android/monolithic/sdk/impl/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->start()V

    .line 1021
    :cond_0
    return-void
.end method
