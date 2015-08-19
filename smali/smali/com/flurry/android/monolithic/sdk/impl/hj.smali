.class Lcom/flurry/android/monolithic/sdk/impl/hj;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/hi;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/fr;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/hi;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->a:Lcom/flurry/android/monolithic/sdk/impl/hi;

    .line 52
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->b:Lcom/flurry/android/monolithic/sdk/impl/fr;

    .line 53
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->b:Lcom/flurry/android/monolithic/sdk/impl/fr;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->a:Lcom/flurry/android/monolithic/sdk/impl/hi;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/hi;->a(Lcom/flurry/android/monolithic/sdk/impl/hi;)Lcom/flurry/android/monolithic/sdk/impl/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hs;->a()Lcom/flurry/android/monolithic/sdk/impl/hm;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->a:Lcom/flurry/android/monolithic/sdk/impl/hi;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/hi;->b(Lcom/flurry/android/monolithic/sdk/impl/hi;)Lcom/flurry/android/monolithic/sdk/impl/ht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ht;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->a:Lcom/flurry/android/monolithic/sdk/impl/hi;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/hi;->a(Lcom/flurry/android/monolithic/sdk/impl/hi;)Lcom/flurry/android/monolithic/sdk/impl/hs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/hs;->b()Lcom/flurry/android/monolithic/sdk/impl/hm;

    .line 63
    iget v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 77
    const/4 v1, 0x6

    const-string v2, "CachingManager"

    const-string v3, "ERROR! UNKNOWN RESPONSE CODE!"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hj;->b:Lcom/flurry/android/monolithic/sdk/impl/fr;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    invoke-interface {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    return-void

    .line 65
    :sswitch_0
    const/4 v1, 0x4

    const-string v2, "CachingManager"

    const-string v3, "OPERATION_STATUS_SUCCEEDED"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_TIME_OUT"

    invoke-static {v3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_FAILED"

    invoke-static {v3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_BAD_RESPONSE"

    invoke-static {v3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_0
        0x2c7 -> :sswitch_2
        0x2d1 -> :sswitch_1
        0x2db -> :sswitch_3
    .end sparse-switch
.end method
