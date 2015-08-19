.class public Lcom/flurry/android/monolithic/sdk/impl/o;
.super Lcom/flurry/android/monolithic/sdk/impl/ac;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/flurry/android/monolithic/sdk/impl/ci;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private A:Landroid/app/AlertDialog;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private G:Ljava/util/concurrent/ExecutorService;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:Lcom/flurry/android/monolithic/sdk/impl/cf;

.field private j:Lcom/flurry/android/monolithic/sdk/impl/n;

.field private k:Z

.field private l:Landroid/webkit/WebView;

.field private m:Z

.field private n:Landroid/webkit/WebViewClient;

.field private o:Landroid/webkit/WebChromeClient;

.field private p:Landroid/view/View;

.field private q:I

.field private r:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private s:Landroid/app/Dialog;

.field private t:Landroid/widget/FrameLayout;

.field private u:I

.field private v:Landroid/app/Dialog;

.field private w:Landroid/widget/FrameLayout;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 622
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ac;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    .line 74
    const-string v2, "mraid.js"

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->g:Ljava/lang/String;

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    .line 624
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setClickable(Z)V

    .line 626
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 627
    iput p5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    .line 628
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 630
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->G:Ljava/util/concurrent/ExecutorService;

    .line 632
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->B:Ljava/util/List;

    .line 635
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->C:Z

    .line 637
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->C:Z

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->E:Ljava/util/Map;

    .line 640
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->D:Ljava/util/Map;

    .line 641
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->E:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->D:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_0
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 646
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 647
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setAdLog(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 648
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->H:Ljava/util/List;

    .line 653
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 635
    goto :goto_0

    .line 651
    :cond_2
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "adunit is Null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->q:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->s:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->p:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->r:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->t:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/o;->c(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1441
    const-string v0, "\'{\"adComponents\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1445
    invoke-static {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1448
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 1451
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v3, v2, :cond_1

    .line 1457
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1466
    :cond_2
    const-string v0, "]}\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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
    .line 1472
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 1473
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 1475
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1477
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->D:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1480
    :cond_1
    return-object v2
.end method

.method private a(II)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1174
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1182
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v5, v1, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->removeView(Landroid/view/View;)V

    .line 1194
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->u:I

    .line 1196
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    .line 1198
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    .line 1199
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1200
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1202
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-nez v1, :cond_4

    .line 1210
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    .line 1212
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/cq;->a(Landroid/view/Window;)V

    .line 1213
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/v;

    invoke-direct {v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/v;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1227
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1228
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1233
    :cond_4
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->a()I

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;IZ)Z

    .line 1235
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->H:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->H:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1167
    :cond_0
    return-void
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/i;I)V
    .locals 4

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->C:Z

    if-nez v0, :cond_2

    .line 659
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    .line 662
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentFormat()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 669
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    const-string v1, "frameIndex"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    .line 679
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->initLayout()V

    goto :goto_0

    .line 685
    :cond_2
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v1, "guid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->c(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 689
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->B:Ljava/util/List;

    .line 690
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 691
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 694
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 696
    :cond_3
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->C:Z

    .line 698
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->initLayout()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/p;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/p;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)V

    .line 909
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->G:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 910
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->E:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1488
    const/4 v0, 0x0

    .line 1497
    :cond_0
    :goto_0
    return-object v0

    .line 1491
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 1492
    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->F:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v0

    .line 1495
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->E:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1240
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v5, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1248
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 1257
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1258
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1260
    :cond_2
    iput-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    .line 1262
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->u:I

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;I)V

    .line 1264
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 1266
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1268
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1270
    :cond_3
    iput-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->w:Landroid/widget/FrameLayout;

    .line 1273
    :cond_4
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1275
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->addView(Landroid/view/View;)V

    .line 1278
    :cond_5
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->x:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->D:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1504
    const/4 v0, 0x0

    .line 1507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->g()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/android/monolithic/sdk/impl/o;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->y:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l()V

    return-void
.end method

.method private declared-synchronized f()Z
    .locals 1

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/flurry/android/monolithic/sdk/impl/o;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->x:Z

    return v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->i()V

    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->o()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->p()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "initializeFlurryJsEnv"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    const-string v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, "var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text(\'\"\'+esc(tree[i])+\'\"\')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),\'+\"c,p,0,\"+start+\",\"+end+\',\"\'+tags+\'\")){\'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, "var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, "window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->h()V

    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 497
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "activateFlurryJsEnv"

    invoke-static {v6, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentContent()Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->C:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 511
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content before {{mustached}} tags replacement = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content after {{mustached}} tags replacement = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, "(function(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v2, "if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text(\'\"\'+esc(tree[i])+\'\"\')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),\'+\"c,p,0,\"+start+\",\"+end+\',\"\'+tags+\'\")){\'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v2, "if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    const-string v2, "var content=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v0, "\';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 532
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->m()V

    return-void
.end method

.method static synthetic k(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->j()V

    return-void
.end method

.method private declared-synchronized k()Z
    .locals 1

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 1

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->n()V

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_0
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->H:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->p:Landroid/view/View;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "initializeMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interstitial"

    .line 565
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{useCustomClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isModal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width:undefined,height:undefined,placementType:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    const-string v2, "javascript:(function() {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v2, "var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"http://flurry.cachefly.net/adSpaceStyles/images/bttn-close-bw.png\";var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED))addDefaultClose();else removeDefaultClose()};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"\'\"+p+\"\':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();updateDefaultClose();broadcastEvent(EVENTS.READY)}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height,\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose()}};return mraid};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraid=mraidCtor(window.flurryadapter,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 576
    :cond_0
    return-void

    .line 562
    :cond_1
    const-string v0, "inline"

    goto :goto_0
.end method

.method static synthetic o(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->o:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 580
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "activateMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->t:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 592
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "no activity present"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 600
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;IZ)Z

    goto :goto_0
.end method

.method static synthetic q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->s:Landroid/app/Dialog;

    return-object v0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic r(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 705
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "closing ad"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 716
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic s(Lcom/flurry/android/monolithic/sdk/impl/o;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->q:I

    return v0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setFlurryJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMraidJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic t(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->r:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic u(Lcom/flurry/android/monolithic/sdk/impl/o;)Lcom/flurry/android/monolithic/sdk/impl/n;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1294
    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1295
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V
    .locals 9

    .prologue
    .line 915
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    .line 916
    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    .line 917
    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    .line 919
    const/16 v0, 0xa

    if-le p3, v0, :cond_1

    .line 921
    const/4 v0, 0x5

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",triggered by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, v3, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v4, "clicked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, v3, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v4, "noop"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 927
    if-eqz v0, :cond_2

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v2, "\'clicked\' event is a noop"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_2
    const/4 v0, 0x3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performAction(action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",params="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",triggering event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v0, "nextFrame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 938
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    add-int/lit8 v1, v0, 0x1

    .line 939
    const-string v0, "offset"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    if-eqz v0, :cond_5

    .line 942
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 944
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 962
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/i;I)V

    .line 1155
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto/16 :goto_0

    .line 946
    :cond_4
    const-string v2, "current"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 954
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 956
    :catch_0
    move-exception v0

    .line 958
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 964
    :cond_6
    const-string v0, "closeAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 966
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->r()V

    goto :goto_2

    .line 968
    :cond_7
    const-string v0, "notifyUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 992
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 995
    const-string v0, "message"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "confirmDisplay"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "cancelDisplay"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 997
    const-string v0, "message"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 998
    const-string v1, "confirmDisplay"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 999
    const-string v5, "cancelDisplay"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1008
    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/u;

    invoke-direct {v5, p0, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/u;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/bh;I)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/t;

    invoke-direct {v2, p0, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/t;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/bh;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1038
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->A:Landroid/app/AlertDialog;

    .line 1040
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1042
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->pause()V

    .line 1044
    :cond_8
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1003
    :cond_9
    const-string v0, "Are you sure?"

    .line 1004
    const-string v1, "Cancel"

    .line 1005
    const-string v2, "OK"

    goto :goto_3

    .line 1046
    :cond_a
    const-string v0, "loadAdComponents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1048
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 1049
    const-string v3, "min"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "max"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1053
    :try_start_1
    const-string v0, "min"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1054
    const-string v0, "max"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1063
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 1066
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v2, :cond_c

    .line 1068
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() {var multiadwraps=document.getElementsByClassName(\'multiAdWrap\');if(multiadwraps.length>0){var template=document.getElementsByClassName(\'multiAdWrap\')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML=\'\';template.innerHTML=compiled.render(JSON.parse("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "));}})();"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    const-string v2, "javascript:flurryadapter.callComplete();"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1073
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 1075
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1076
    const-string v1, "guid"

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v1, "rendered"

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    goto :goto_5

    .line 1056
    :catch_1
    move-exception v0

    .line 1058
    const/4 v1, 0x1

    .line 1059
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 1082
    :cond_d
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1089
    :cond_e
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    goto/16 :goto_2

    .line 1092
    :cond_f
    const-string v0, "doExpand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1094
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->b()I

    move-result v1

    .line 1095
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->c()I

    move-result v0

    .line 1096
    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v3, "width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1102
    :try_start_2
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I

    move-result v1

    .line 1103
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v7, v0

    move v8, v1

    .line 1113
    :goto_6
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand to width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getHolder()Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_10

    .line 1117
    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1118
    invoke-direct {p0, v8, v7}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(II)V

    .line 1120
    :cond_10
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    .line 1123
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->initLayout()V

    goto/16 :goto_2

    .line 1105
    :catch_2
    move-exception v0

    .line 1107
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->b()I

    move-result v1

    .line 1109
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->c()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_6

    .line 1126
    :cond_11
    const-string v0, "doCollapse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1129
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1130
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1132
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I

    move-result v0

    .line 1133
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I

    move-result v1

    .line 1134
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 1136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    .line 1137
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->initLayout()V

    .line 1139
    :cond_12
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getHolder()Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v2

    .line 1140
    if-eqz v2, :cond_3

    .line 1142
    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(II)V

    goto/16 :goto_2

    .line 1147
    :cond_13
    const-string v0, "directOpen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1150
    const-string v0, "noop"

    const-string v1, "true"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string v1, "clicked"

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1153
    :cond_14
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V

    goto/16 :goto_2

    :cond_15
    move v7, v0

    move v8, v1

    goto/16 :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1405
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireEvent(event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v7, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    invoke-virtual {v7, v0, p0, p6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    .line 1407
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->k:Z

    .line 1333
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->i:Lcom/flurry/android/monolithic/sdk/impl/cf;

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->i:Lcom/flurry/android/monolithic/sdk/impl/cf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/cf;->show(I)V

    .line 1344
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->pause()V

    .line 1357
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->k:Z

    .line 1358
    return-void
.end method

.method d()Z
    .locals 2

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 4

    .prologue
    .line 1513
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    .line 1514
    if-nez v0, :cond_0

    .line 1516
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not rotate)"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->q()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->B:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    return-object v0
.end method

.method getCurrentBinding()I
    .locals 1

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getCurrentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHolder()Lcom/flurry/android/monolithic/sdk/impl/an;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1545
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1546
    if-eqz v0, :cond_0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/an;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1546
    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1550
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdUnityView parent not a BannerHolder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1551
    goto :goto_0
.end method

.method public initLayout()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 728
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLayout: ad creative layout: {width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 734
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->removeAllViews()V

    .line 735
    invoke-virtual {p0, v8}, Lcom/flurry/android/monolithic/sdk/impl/o;->setFocusable(Z)V

    .line 736
    invoke-virtual {p0, v8}, Lcom/flurry/android/monolithic/sdk/impl/o;->setFocusableInTouchMode(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 824
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 741
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-nez v0, :cond_1

    .line 743
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-direct {v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    .line 744
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/n;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 745
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/n;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 746
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/n;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 747
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/cf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-direct {v0, v7, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/cf;-><init>(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/n;Lcom/flurry/android/monolithic/sdk/impl/o;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->i:Lcom/flurry/android/monolithic/sdk/impl/cf;

    .line 748
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->i:Lcom/flurry/android/monolithic/sdk/impl/cf;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/n;->setMediaController(Landroid/widget/MediaController;)V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/n;->setVideoURI(Landroid/net/Uri;)V

    .line 752
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->addView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 759
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    .line 760
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 761
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 763
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 764
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 772
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 774
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    .line 775
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 779
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 781
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/w;

    invoke-direct {v0, p0, v4}, Lcom/flurry/android/monolithic/sdk/impl/w;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/p;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->o:Landroid/webkit/WebChromeClient;

    .line 782
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->o:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 783
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aa;

    invoke-direct {v0, p0, v4}, Lcom/flurry/android/monolithic/sdk/impl/aa;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/p;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->n:Landroid/webkit/WebViewClient;

    .line 784
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 787
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 789
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 791
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;)V

    .line 805
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    .line 815
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 816
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 818
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 819
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 795
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 801
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    const-string v1, "base://url/"

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    goto :goto_1

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    .line 1289
    const-string v1, "videoCompleted"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1290
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1320
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1324
    :cond_0
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1326
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->removeView(Landroid/view/View;)V

    .line 1327
    return v6
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 1531
    const/4 v0, 0x3

    const-string v1, "listeners"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onkey,keycode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a()V

    .line 1535
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1536
    const/4 v0, 0x1

    .line 1538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1300
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1302
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->k:Z

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->start()V

    .line 1312
    :cond_2
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1313
    const-string v1, "videoStart"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1315
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 1364
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->f:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->j:Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/n;->stopPlayback()V

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 1379
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->p:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->o:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->o:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1385
    invoke-direct {p0, v6, v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(II)V

    .line 1388
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->removeView(Landroid/view/View;)V

    .line 1389
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1393
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->l:Landroid/webkit/WebView;

    .line 1397
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1399
    const-string v1, "adClosed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 1401
    :cond_6
    return-void
.end method
