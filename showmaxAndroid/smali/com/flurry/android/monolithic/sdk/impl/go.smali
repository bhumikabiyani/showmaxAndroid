.class public Lcom/flurry/android/monolithic/sdk/impl/go;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I

.field static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/flurry/android/monolithic/sdk/impl/hi;

.field private static g:Lcom/flurry/android/monolithic/sdk/impl/gn;

.field private static h:Lcom/flurry/android/monolithic/sdk/impl/gj;

.field private static i:Lcom/flurry/android/monolithic/sdk/impl/gl;

.field private static j:Lcom/flurry/android/monolithic/sdk/impl/gm;

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Z

.field private static n:Lcom/flurry/android/impl/appcloud/AppCloudModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    const-string v0, "appcloud.flurry.com"

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->c:Ljava/lang/String;

    .line 14
    const-string v0, "appcloud-node-stage.corp.flurry.com"

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->d:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/go;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->e:Ljava/lang/String;

    .line 16
    sput v2, Lcom/flurry/android/monolithic/sdk/impl/go;->a:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/go;->b:I

    .line 19
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/go;->f:Lcom/flurry/android/monolithic/sdk/impl/hi;

    .line 20
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/go;->g:Lcom/flurry/android/monolithic/sdk/impl/gn;

    .line 21
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/go;->h:Lcom/flurry/android/monolithic/sdk/impl/gj;

    .line 31
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/go;->i:Lcom/flurry/android/monolithic/sdk/impl/gl;

    .line 32
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/go;->j:Lcom/flurry/android/monolithic/sdk/impl/gm;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/go;->k:Z

    .line 43
    sput-boolean v2, Lcom/flurry/android/monolithic/sdk/impl/go;->m:Z

    .line 45
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->n:Lcom/flurry/android/impl/appcloud/AppCloudModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/hi;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->f:Lcom/flurry/android/monolithic/sdk/impl/hi;

    return-object v0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/gq;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gp;->a:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/gq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->i:Lcom/flurry/android/monolithic/sdk/impl/gl;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->j:Lcom/flurry/android/monolithic/sdk/impl/gm;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->e:Ljava/lang/String;

    const-string v1, "Context passed to AppCLoudModule was null."

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Landroid/content/Context;)V

    .line 161
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/go;->b(Landroid/content/Context;)V

    .line 163
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gj;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/gj;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->h:Lcom/flurry/android/monolithic/sdk/impl/gj;

    .line 164
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hi;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/hi;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->f:Lcom/flurry/android/monolithic/sdk/impl/hi;

    .line 165
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->g:Lcom/flurry/android/monolithic/sdk/impl/gn;

    .line 167
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->a()V

    .line 169
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/go;->e:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/go;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->g:Lcom/flurry/android/monolithic/sdk/impl/gn;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->a()V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static b()Lcom/flurry/android/monolithic/sdk/impl/gn;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->g:Lcom/flurry/android/monolithic/sdk/impl/gn;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 139
    sget-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/go;->m:Z

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->n:Lcom/flurry/android/impl/appcloud/AppCloudModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->e:Ljava/lang/String;

    const-string v1, "Initializing Flurry AppCloud"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fl;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/fl;-><init>()V

    .line 144
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/eg;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/fl;->a:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/fl;)V

    .line 148
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->e:Ljava/lang/String;

    const-string v1, "Flurry AppCloud initialized"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/go;->m:Z

    .line 152
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gl;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->i:Lcom/flurry/android/monolithic/sdk/impl/gl;

    .line 55
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gm;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->j:Lcom/flurry/android/monolithic/sdk/impl/gm;

    .line 56
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    sput-object p0, Lcom/flurry/android/monolithic/sdk/impl/go;->l:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static c()Lcom/flurry/android/monolithic/sdk/impl/gj;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->h:Lcom/flurry/android/monolithic/sdk/impl/gj;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->l:Ljava/lang/String;

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/go;->k:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->c:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/go;->d:Ljava/lang/String;

    goto :goto_0
.end method
