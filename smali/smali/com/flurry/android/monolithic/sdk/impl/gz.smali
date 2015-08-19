.class public Lcom/flurry/android/monolithic/sdk/impl/gz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/hb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->c:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->d:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->e:Z

    .line 26
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->a:J

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->c:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->d:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private a(I)J
    .locals 2

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const-wide/16 v0, 0x0

    .line 289
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->a:J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ft;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b(Ljava/lang/String;)V

    .line 241
    :try_start_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ha;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ha;-><init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/fq;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    const-string v1, "invalid user session"

    .line 262
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->c()Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fz;

    .line 271
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const/16 v3, 0x195

    const-string v4, "Session not valid, user has to relogin!"

    invoke-direct {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/fz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_1

    .line 275
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/gz;Lcom/flurry/android/monolithic/sdk/impl/fq;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    .line 119
    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x6

    const-string v1, "ObserverItem"

    const-string v2, "stopTimerForKey ERROR, info == null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->b()Ljava/util/Timer;

    .line 125
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->b()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->b()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hb;->a(Ljava/util/Timer;)V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(I)J

    move-result-wide v0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    .line 137
    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x6

    const-string v1, "ObserverItem"

    const-string v2, "addObserverForKey ERROR, info == null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->c()Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->e:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 147
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/hb;

    invoke-direct {v2, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/util/List;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->c(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->e:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    .line 99
    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x6

    const-string v1, "ObserverItem"

    const-string v2, "scheduleTimerForKey ERROR, info == null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    .line 105
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hc;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x4

    const-string v3, "ObserverItem"

    const-string v4, "schedule"

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->c()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fz;

    .line 209
    invoke-interface {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/fz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/fz;)Z
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 168
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->c()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 179
    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 181
    goto :goto_0

    .line 183
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->c(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->e:Z

    .line 295
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->e()V

    .line 296
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hb;

    .line 219
    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x6

    const-string v1, "ObserverItem"

    const-string v2, "addObserverForKey ERROR, info == null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->a()V

    .line 224
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hb;->d()I

    move-result v1

    .line 225
    invoke-direct {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(I)J

    move-result-wide v2

    .line 227
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-direct {p0, p1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gz;->e:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->e()V

    .line 332
    :cond_0
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->f()V

    .line 336
    return-void
.end method
