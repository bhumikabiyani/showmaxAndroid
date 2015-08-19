.class public Lcom/flurry/android/monolithic/sdk/impl/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ff;
.implements Lcom/flurry/android/monolithic/sdk/impl/id;
.implements Lcom/flurry/android/monolithic/sdk/impl/jb;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/android/monolithic/sdk/impl/eg;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/flurry/android/monolithic/sdk/impl/fb;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/fb;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/eg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->c:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Lcom/flurry/android/monolithic/sdk/impl/jb;)V

    .line 62
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/is;->a()Lcom/flurry/android/monolithic/sdk/impl/is;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/is;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 64
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->l()V

    .line 65
    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/eg;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->b:Lcom/flurry/android/monolithic/sdk/impl/eg;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/eg;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->b:Lcom/flurry/android/monolithic/sdk/impl/eg;

    .line 101
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->b:Lcom/flurry/android/monolithic/sdk/impl/eg;

    return-object v0
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/fb;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->e:Lcom/flurry/android/monolithic/sdk/impl/fb;

    .line 211
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 176
    const/4 v0, 0x0

    .line 179
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 180
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_3

    .line 183
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch Options Bundle is present "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 188
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch options Key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". Its value: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v5, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "null"

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 206
    :cond_3
    return-object v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 68
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v1

    .line 70
    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->d:Z

    .line 72
    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 73
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, CrashReportingEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "VesionName"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    const-string v2, "VesionName"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 77
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ir;->a(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, VersionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->g:Lcom/flurry/android/monolithic/sdk/impl/em;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->g:Lcom/flurry/android/monolithic/sdk/impl/em;

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->d()V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->b()V

    .line 140
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->b()V

    .line 142
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->m()V

    .line 144
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->c()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fb;

    .line 157
    :goto_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->c()V

    .line 159
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a(Lcom/flurry/android/monolithic/sdk/impl/fb;)V

    .line 160
    return-void

    .line 152
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-direct {v0, p1, p2, p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ff;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/eg;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/util/Map;)V

    .line 154
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 83
    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->d:Z

    .line 85
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, CrashReportingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "VesionName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    check-cast p2, Ljava/lang/String;

    .line 89
    invoke-static {p2}, Lcom/flurry/android/monolithic/sdk/impl/ir;->a(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, VersionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, v4, :cond_1

    .line 264
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 265
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 270
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 225
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public b()I
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "AgentVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAgentVersion() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 253
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 125
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    const-string v0, "."

    .line 131
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Flurry_Android_%d_%d.%d.%d%s%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0

    .line 128
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 291
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 295
    :cond_0
    return-void
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/fb;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->e:Lcom/flurry/android/monolithic/sdk/impl/fb;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 398
    if-nez v0, :cond_1

    .line 400
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    const-string v2, "Ended session is not in the session map! Maybe it was already destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/eg;->a:Ljava/lang/String;

    const-string v2, "LocationProvider is going to be unsubscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->d()V

    .line 420
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->i()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a(Lcom/flurry/android/monolithic/sdk/impl/fb;)V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->f()V

    .line 302
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->i()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->j()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->k()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    return-object v0
.end method

.method public j()Landroid/location/Location;
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->e()Landroid/location/Location;

    move-result-object v0

    .line 375
    return-object v0
.end method

.method public k()Lcom/flurry/android/monolithic/sdk/impl/em;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->g:Lcom/flurry/android/monolithic/sdk/impl/em;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->d:Z

    if-eqz v0, :cond_2

    .line 309
    const-string v0, ""

    .line 310
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_1
    :goto_0
    const-string v1, "uncaught"

    invoke-static {v1, v0, p2}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/eg;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 330
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fb;

    .line 331
    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->e()V

    goto :goto_1

    .line 321
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_5
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->f()V

    .line 337
    return-void
.end method
