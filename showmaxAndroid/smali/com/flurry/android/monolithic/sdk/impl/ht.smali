.class Lcom/flurry/android/monolithic/sdk/impl/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/ho;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/hu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hu;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/hu;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ht;->b:Lcom/flurry/android/monolithic/sdk/impl/hu;

    .line 16
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ht;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    .line 17
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ht;->b:Lcom/flurry/android/monolithic/sdk/impl/hu;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hu;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)J

    move-result-wide v0

    .line 23
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 24
    const/4 v0, 0x4

    const-string v1, "RetryManager"

    const-string v2, "timeToStart == OPERATION_DIDNT_PROCCEED_CODE"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ht;->b(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;
    .locals 6

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hm;->e()V

    .line 45
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/ht;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ht;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    .line 53
    :goto_0
    iget v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 80
    const/4 v1, 0x6

    const-string v2, "RetryManager"

    const-string v3, "ERROR! UNKNOWN RESPONSE CODE!"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_1
    :sswitch_0
    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/hn;-><init>()V

    .line 49
    const/16 v1, 0x2c7

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 50
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/fq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/fq;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ht;->b:Lcom/flurry/android/monolithic/sdk/impl/hu;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/hu;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)J

    move-result-wide v2

    .line 63
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ht;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    goto :goto_1

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_0
        0x2c7 -> :sswitch_1
        0x2d1 -> :sswitch_1
        0x2db -> :sswitch_0
    .end sparse-switch
.end method
