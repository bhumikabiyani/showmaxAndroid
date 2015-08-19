.class Lcom/flurry/android/monolithic/sdk/impl/bq;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/bp;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bp;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bq;->a:Lcom/flurry/android/monolithic/sdk/impl/bp;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bq;->a:Lcom/flurry/android/monolithic/sdk/impl/bp;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bp;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->x()V

    .line 877
    return-void
.end method
