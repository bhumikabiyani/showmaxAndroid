.class public Lcom/flurry/android/monolithic/sdk/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ci;


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:I


# instance fields
.field a:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field b:Lcom/flurry/android/monolithic/sdk/impl/ce;

.field c:Lcom/flurry/android/monolithic/sdk/impl/ck;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->f:Z

    .line 60
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 61
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ck;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ck;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->c:Lcom/flurry/android/monolithic/sdk/impl/ck;

    .line 62
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a()Lcom/flurry/android/monolithic/sdk/impl/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->b:Lcom/flurry/android/monolithic/sdk/impl/ce;

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 638
    .line 640
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 641
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 642
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 643
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 644
    const-string v3, "http.protocol.handle-redirects"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 646
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/iz;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 647
    :try_start_1
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 656
    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    :goto_0
    return-object v0

    .line 648
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 649
    :goto_1
    :try_start_2
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 656
    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 651
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 652
    :goto_2
    :try_start_3
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to hit URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 656
    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 657
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    throw v0

    .line 656
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 651
    :catch_2
    move-exception v1

    goto :goto_2

    .line 648
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/i;)I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 78
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a()Lcom/flurry/android/monolithic/sdk/impl/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/lang/String;)I

    move-result v0

    .line 81
    return v0
.end method

.method a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 433
    .line 434
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(Landroid/content/Intent;)Z

    move-result v0

    .line 435
    if-eqz v0, :cond_1

    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 443
    :goto_0
    if-eqz v0, :cond_0

    .line 444
    const-string v1, "adSpaceName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    :cond_0
    return-object v0

    .line 438
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    const-string v1, "targetIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 497
    const-string v0, ".*?(%\\{\\w+\\}).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 498
    invoke-virtual {v6, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    move-object v4, p4

    .line 500
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->c:Lcom/flurry/android/monolithic/sdk/impl/ck;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ck;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 506
    :cond_0
    return-object v4
.end method

.method public a()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->f:Z

    .line 73
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 377
    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->f:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Google Play url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "market://details?id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Google Play url scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 7

    .prologue
    .line 453
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bk;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/bk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/content/Context;Z)V

    invoke-virtual {v6, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 492
    return-void
.end method

.method a(Lcom/flurry/android/monolithic/sdk/impl/i;I)V
    .locals 11

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/i;)I

    move-result v0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->e:I

    .line 274
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->e:I

    if-le p2, v0, :cond_0

    .line 275
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    const-string v2, "Maximum depth for event/action loop exceeded when performing next AdUnit:"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v4, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 281
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 282
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v2, "delay"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 285
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget v1, v1, Lcom/flurry/android/monolithic/sdk/impl/bh;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;I)Z

    move-result v7

    .line 287
    const-wide/16 v2, 0x1e

    .line 288
    if-eqz v6, :cond_1

    .line 290
    :try_start_0
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 298
    :goto_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 300
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->a(J)V

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const/4 v1, 0x6

    sget-object v8, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught NumberFormatException with delay parameter in nextAdUnit:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v10, "delay"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v0, v2

    goto :goto_1

    .line 301
    :cond_2
    if-eqz v2, :cond_3

    .line 302
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bj;

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/flurry/android/monolithic/sdk/impl/bj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/an;)V

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/bw;->g(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1, v4, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cl;

    goto/16 :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 86
    const/4 v0, 0x0

    .line 87
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    .line 91
    :cond_0
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAction:action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",triggering event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    .line 96
    const/16 v2, 0xa

    if-le p3, v2, :cond_1

    .line 97
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",triggered by:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v2, "directOpen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->c(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v2, "processRedirect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 111
    :cond_4
    const-string v2, "verifyUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V

    goto :goto_0

    .line 113
    :cond_5
    const-string v2, "launchPackage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->e(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 115
    :cond_6
    const-string v2, "sendUrlAsync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 116
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->f(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 117
    :cond_7
    const-string v2, "sendAdLogs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->g(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 119
    :cond_8
    const-string v2, "logEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 120
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->h(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 121
    :cond_9
    const-string v2, "nextFrame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->i(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto :goto_0

    .line 123
    :cond_a
    const-string v2, "nextAdUnit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 124
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/i;I)V

    goto :goto_0

    .line 125
    :cond_b
    const-string v2, "checkCap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->c(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v2, "updateViewCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 128
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->j(Lcom/flurry/android/monolithic/sdk/impl/i;)V

    goto/16 :goto_0

    .line 132
    :cond_d
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",triggered by:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 422
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v0, 0x1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    const-string v4, "Cannot launch Activity"

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;I)Z
    .locals 2

    .prologue
    .line 667
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 668
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 688
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x3

    .line 527
    const/4 v1, 0x0

    move v2, v3

    move-object v0, p1

    .line 529
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_7

    .line 530
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 531
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 532
    const/16 v4, 0x2710

    const/16 v5, 0x3a98

    invoke-static {v0, v4, v5, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 534
    if-eqz v4, :cond_3

    .line 535
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 538
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c()I

    move-result v6

    if-gt v6, v9, :cond_0

    .line 539
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fFU HTTP Response Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 544
    :cond_0
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 545
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_1
    :goto_1
    return-object v0

    .line 548
    :cond_2
    const/16 v6, 0x12c

    if-lt v5, v6, :cond_4

    const/16 v6, 0x190

    if-ge v5, v6, :cond_4

    .line 549
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumRedirects: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    const-string v0, "Location"

    invoke-interface {v4, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 554
    :cond_4
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 555
    goto :goto_1

    .line 561
    :cond_5
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 562
    :catch_0
    move-exception v4

    .line 563
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 567
    :cond_6
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "market://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 7

    .prologue
    .line 512
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bl;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/bl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    invoke-virtual {v6, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 523
    return-void
.end method

.method b(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 139
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 140
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 141
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 142
    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    const-string v5, "market://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v5, "true"

    iget-object v6, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v7, "native"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 150
    if-eqz v5, :cond_1

    .line 151
    const/4 v5, 0x2

    sget-object v6, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    const-string v7, "Explictly instructed to use native browser"

    invoke-static {v5, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 156
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {p0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 162
    :cond_2
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    const-string v3, "Can\'t start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser"

    invoke-static {v8, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 170
    :cond_3
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V
    .locals 7

    .prologue
    .line 219
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 220
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v5, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 221
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v4, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 223
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "urlVerified"

    .line 227
    :goto_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget v6, v6, Lcom/flurry/android/monolithic/sdk/impl/bh;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/cj;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    .line 230
    :cond_0
    return-void

    .line 226
    :cond_1
    const-string v1, "urlNotVerified"

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 663
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 394
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 177
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    const/4 v1, -0x1

    .line 183
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;I)V

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 184
    :catch_0
    move-exception v3

    .line 185
    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught NumberFormatException with count parameter in deleteAds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method c(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 318
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 319
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v5, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 320
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v4, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 322
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->b:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/cd;

    move-result-object v2

    .line 328
    const-string v1, "capNotExhausted"

    .line 331
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->b:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/cd;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding expired frequency cap info for idHash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v2, v6}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->b:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->b(Ljava/lang/String;)V

    .line 337
    const/4 v2, 0x0

    .line 340
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/cd;->c()I

    move-result v6

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/cd;->e()I

    move-result v2

    if-lt v6, v2, :cond_1

    .line 341
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frequency cap exhausted for idHash="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "capExhausted"

    .line 345
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget v6, v6, Lcom/flurry/android/monolithic/sdk/impl/bh;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/cj;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    .line 350
    :cond_2
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 585
    .line 587
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url after is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bm;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bm;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 597
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    return v0
.end method

.method d(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 8

    .prologue
    .line 197
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 198
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 199
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 200
    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v5, "true"

    iget-object v6, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v7, "native"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 205
    if-eqz v5, :cond_1

    .line 206
    const/4 v5, 0x2

    sget-object v6, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    const-string v7, "Explictly instructed to use native browser in pr."

    invoke-static {v5, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    goto :goto_0

    .line 213
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 601
    move v2, v1

    .line 603
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 604
    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sendURLUntilSuccess URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 606
    const/16 v3, 0x2710

    const/16 v4, 0x3a98

    invoke-static {p1, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 608
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 611
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c()I

    move-result v5

    if-gt v5, v8, :cond_0

    .line 612
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sUUS HTTP Response Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 616
    :cond_0
    if-eqz v3, :cond_2

    const/16 v3, 0xc8

    if-ne v4, v3, :cond_2

    .line 617
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL hit succeeded for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_1
    return v0

    .line 624
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 625
    :catch_0
    move-exception v3

    .line 626
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method e(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->c:Landroid/content/Context;

    .line 234
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 236
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 240
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 676
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 678
    if-nez p1, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 682
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method f(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 245
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 247
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->c(Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method g(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->w()V

    .line 254
    return-void
.end method

.method h(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 5

    .prologue
    .line 257
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 259
    :goto_0
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v2, "__sendToServer"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/bh;->e:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 263
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method j(Lcom/flurry/android/monolithic/sdk/impl/i;)V
    .locals 5

    .prologue
    .line 353
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bi;->b:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/cd;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->d()V

    .line 361
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateViewCount:idHash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newCap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",prevCap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->e()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 367
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryAdAction: !! rendering a capped object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method
