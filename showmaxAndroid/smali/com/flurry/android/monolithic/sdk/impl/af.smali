.class public final Lcom/flurry/android/monolithic/sdk/impl/af;
.super Lcom/flurry/android/monolithic/sdk/impl/cl;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/aj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/flurry/android/monolithic/sdk/impl/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/af;->d()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ac;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/cl;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 32
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    .line 33
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 84
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 99
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 93
    const-string v3, "t"

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/flurry/android/monolithic/sdk/impl/an;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 131
    :cond_1
    :goto_0
    return-object v0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    .line 111
    if-nez v0, :cond_3

    move-object v0, v1

    .line 112
    goto :goto_0

    .line 115
    :cond_3
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/af;->b(Landroid/view/ViewGroup;)Lcom/flurry/android/monolithic/sdk/impl/aj;

    move-result-object v2

    .line 116
    if-nez v2, :cond_4

    .line 117
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/aj;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/view/ViewGroup;)Lcom/flurry/android/monolithic/sdk/impl/aj;
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/aj;

    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/aj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-class v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ak;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/ak;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-class v1, Landroid/widget/AbsoluteLayout;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ah;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/ah;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-class v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ai;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/ai;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-class v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/al;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/al;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 38
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to render banner ad for bannerView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for viewGroup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to render banner ad for holder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for adSpaceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    :cond_3
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->b()V

    .line 60
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->removeAllViews()V

    .line 62
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ac;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    if-eqz v0, :cond_4

    .line 64
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/af;->c:Lcom/flurry/android/monolithic/sdk/impl/ac;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ac;->initLayout()V

    .line 71
    invoke-direct {p0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/af;->a(Landroid/view/ViewGroup;Lcom/flurry/android/monolithic/sdk/impl/an;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/af;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "banner ad holder layout params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " {width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} for banner ad with adSpaceName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/af;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/af;->a(Landroid/view/ViewGroup;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0
.end method
