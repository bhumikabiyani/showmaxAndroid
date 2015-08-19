.class public Lcom/flurry/android/monolithic/sdk/impl/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/android/monolithic/sdk/impl/aq;

.field private c:Lcom/flurry/android/monolithic/sdk/impl/ad;

.field private d:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 40
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aq;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    .line 41
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    .line 42
    return-void
.end method


# virtual methods
.method a()Lcom/flurry/android/monolithic/sdk/impl/ad;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    return-object v0
.end method

.method public a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)Lcom/flurry/android/monolithic/sdk/impl/br;
    .locals 7

    .prologue
    .line 354
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/br;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/br;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 355
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/br;->a()Lcom/flurry/android/monolithic/sdk/impl/br;

    .line 357
    return-object v0
.end method

.method public a(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_removeAd(context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->d(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->b()V

    .line 169
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->removeAllViews()V

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    :cond_1
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->d(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Lcom/flurry/android/monolithic/sdk/impl/an;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 6

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not Fetch)"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 113
    :cond_2
    const/4 v3, 0x0

    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/by;

    invoke-direct {v5, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/by;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bw;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)Lcom/flurry/android/monolithic/sdk/impl/br;

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/lang/String;I)V

    .line 313
    return-void
.end method

.method a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cl;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cl;)V

    .line 285
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/util/List;)V

    .line 297
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 246
    .line 248
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/an;

    .line 251
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->b()V

    .line 252
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->removeAllViews()V

    .line 254
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    .line 255
    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/aq;->a(Lcom/flurry/android/monolithic/sdk/impl/an;)V

    .line 260
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    if-lez v1, :cond_2

    .line 264
    const/4 v2, 0x1

    .line 267
    :cond_2
    return v2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not Display)"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->c(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/cl;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/cl;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v3

    .line 142
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v4

    .line 143
    instance-of v1, v2, Lcom/flurry/android/monolithic/sdk/impl/af;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    .line 146
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4, p2, v1}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    invoke-virtual {p0, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cl;)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p1, v3, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/cl;)V

    .line 153
    invoke-virtual {v2, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/cl;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    .locals 7

    .prologue
    .line 47
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "getAd:no ads in cache, starting AsyncTask"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x0

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p5

    if-nez v0, :cond_0

    .line 52
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/bx;

    invoke-direct {v5, p0, p1, p2, p4}, Lcom/flurry/android/monolithic/sdk/impl/bx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bw;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 60
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)Lcom/flurry/android/monolithic/sdk/impl/br;

    move-result-object v0

    .line 63
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_2

    .line 67
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p5, p6, v1}, Lcom/flurry/android/monolithic/sdk/impl/br;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "getAd:cache has ads now, rendering"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v3, "AsyncTask timeout InterruptedException"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v3, "AsyncTask timeout ExecutionException"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "getAd:AsyncAdTask timeout TimeoutException. No ads retrieved within the timeout"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v6

    .line 208
    :cond_0
    :goto_0
    return v3

    .line 183
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v1, "isAdAvailable: no ads in cache, starting AsyncTask"

    invoke-static {v7, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v2

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)Lcom/flurry/android/monolithic/sdk/impl/br;

    move-result-object v0

    .line 189
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Lcom/flurry/android/monolithic/sdk/impl/br;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "getAd:cache has ads now, rendering"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v6

    .line 192
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "AsyncTask timeout InterruptedException"

    invoke-static {v7, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "AsyncTask timeout ExecutionException"

    invoke-static {v7, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 202
    :catch_2
    move-exception v0

    .line 204
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v1, "isAdAvailable:AsyncAdTask timeout TimeoutException. No ads retrieved within the timeout"

    invoke-static {v7, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    return v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->g(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    .line 214
    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->F()Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 217
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->J()V

    .line 227
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cl;

    move-result-object v0

    .line 228
    invoke-virtual {p0, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cl;)V

    .line 230
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->d:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidReceiveAd(Ljava/lang/String;)V

    .line 234
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    .line 242
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aq;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/cl;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aq;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/cl;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Z

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->b:Lcom/flurry/android/monolithic/sdk/impl/aq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aq;->c(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method g(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->c(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bw;->c:Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bw;->a:Ljava/lang/String;

    const-string v2, "fetchAdTaskExecute :setting cache request limit count"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method
