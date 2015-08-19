.class final Lcom/flurry/android/monolithic/sdk/impl/ah;
.super Lcom/flurry/android/monolithic/sdk/impl/aj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/af;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ah;->b(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ah;->c(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method
