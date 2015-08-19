.class final Lcom/flurry/android/monolithic/sdk/impl/ak;
.super Lcom/flurry/android/monolithic/sdk/impl/aj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ak;->b(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ak;->c(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
