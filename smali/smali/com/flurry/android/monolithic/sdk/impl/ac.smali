.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ac;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field c:Lcom/flurry/android/monolithic/sdk/impl/m;

.field d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ac;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 34
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 35
    return-void
.end method


# virtual methods
.method e()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAdFrameIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->e:I

    return v0
.end method

.method public getAdLog()Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    return-object v0
.end method

.method public getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    return-object v0
.end method

.method public abstract initLayout()V
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 72
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ac;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSpotBannerView.onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    if-eqz v0, :cond_0

    .line 75
    iget-object v7, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v6, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->e:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ac;->a:Ljava/lang/String;

    const-string v1, "fAdUnit == null"

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdFrameIndex(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->e:I

    .line 68
    return-void
.end method

.method public setAdLog(Lcom/flurry/android/monolithic/sdk/impl/m;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 45
    return-void
.end method

.method public setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 59
    return-void
.end method

.method public setPlatformModule(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ac;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 50
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
