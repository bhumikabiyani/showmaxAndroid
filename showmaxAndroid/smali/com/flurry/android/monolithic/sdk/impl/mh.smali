.class public Lcom/flurry/android/monolithic/sdk/impl/mh;
.super Lcom/flurry/android/monolithic/sdk/impl/mi;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field private d:Lcom/flurry/android/monolithic/sdk/impl/lx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/mh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/mh;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mh;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;-><init>(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mi;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/lx;)V

    .line 60
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "writer cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ml;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ml;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ml;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/mw;

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->s:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne p1, v0, :cond_0

    .line 242
    :goto_0
    return-object p2

    :cond_0
    move-object p2, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/nc;

    if-eqz v0, :cond_3

    .line 217
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/nc;

    .line 218
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/nc;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-eq v0, p1, :cond_2

    .line 219
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/flurry/android/monolithic/sdk/impl/nc;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while looking for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    iget-object p2, p2, Lcom/flurry/android/monolithic/sdk/impl/nc;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    goto :goto_0

    .line 224
    :cond_3
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/ng;

    if-eqz v0, :cond_4

    .line 225
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/ng;

    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/ng;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 226
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->d(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    :goto_1
    move-object p2, v1

    .line 242
    goto :goto_0

    .line 227
    :cond_4
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/nj;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ms;

    .line 229
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/lx;->s()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/ms;->a(I)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_1

    .line 230
    :cond_5
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/mv;

    if-eqz v0, :cond_6

    .line 231
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jh;

    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/mv;

    iget-object v1, p2, Lcom/flurry/android/monolithic/sdk/impl/mv;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_6
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/mt;

    if-eqz v0, :cond_7

    .line 233
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/mt;

    .line 234
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->d:Lcom/flurry/android/monolithic/sdk/impl/lx;

    .line 235
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a()Lcom/flurry/android/monolithic/sdk/impl/ly;

    move-result-object v0

    iget-object v2, p2, Lcom/flurry/android/monolithic/sdk/impl/mt;->z:[B

    invoke-virtual {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a([BLcom/flurry/android/monolithic/sdk/impl/ll;)Lcom/flurry/android/monolithic/sdk/impl/ll;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    goto :goto_1

    .line 237
    :cond_7
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->x:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne p2, v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->d:Lcom/flurry/android/monolithic/sdk/impl/lx;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    goto :goto_1

    .line 240
    :cond_8
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->f:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->e:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->d()I

    move-result v0

    int-to-long v0, v0

    .line 159
    :goto_0
    return-wide v0

    .line 155
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->h:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->g()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    .line 158
    :cond_1
    sget-boolean v1, Lcom/flurry/android/monolithic/sdk/impl/mh;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->f:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->g:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->e:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->d()I

    move-result v0

    int-to-float v0, v0

    .line 172
    :goto_0
    return v0

    .line 168
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->f:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->e()J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_0

    .line 171
    :cond_1
    sget-boolean v1, Lcom/flurry/android/monolithic/sdk/impl/mh;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->g:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->f()F

    move-result v0

    goto :goto_0
.end method

.method public g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->h:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->e:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->d()I

    move-result v0

    int-to-double v0, v0

    .line 187
    :goto_0
    return-wide v0

    .line 181
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->f:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->e()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 183
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->g:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->f()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 186
    :cond_2
    sget-boolean v1, Lcom/flurry/android/monolithic/sdk/impl/mh;->b:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->h:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->g()D

    move-result-wide v0

    goto :goto_0
.end method

.method public k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->l:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 194
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mu;

    .line 195
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/lx;->k()I

    move-result v1

    .line 196
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/mu;->z:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 197
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 200
    :cond_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jh;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/nc;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/nc;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/nc;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/ng;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ng;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ng;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_0

    .line 252
    :cond_2
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/nj;

    if-eqz v1, :cond_3

    .line 253
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ms;

    .line 254
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/lx;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ms;->a(I)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_0

    .line 255
    :cond_3
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mv;

    if-eqz v1, :cond_4

    .line 256
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jh;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mv;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/mv;->z:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_4
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mt;

    if-eqz v1, :cond_5

    .line 258
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mt;

    .line 259
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->d:Lcom/flurry/android/monolithic/sdk/impl/lx;

    .line 260
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a()Lcom/flurry/android/monolithic/sdk/impl/ly;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/mt;->z:[B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a([BLcom/flurry/android/monolithic/sdk/impl/ll;)Lcom/flurry/android/monolithic/sdk/impl/ll;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    goto :goto_0

    .line 262
    :cond_5
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->x:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->d:Lcom/flurry/android/monolithic/sdk/impl/lx;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->c:Lcom/flurry/android/monolithic/sdk/impl/lx;

    goto :goto_0
.end method

.method public s()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->m:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 207
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ni;

    .line 208
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    iget-object v2, v0, Lcom/flurry/android/monolithic/sdk/impl/ni;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 209
    iget v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ni;->z:I

    return v0
.end method

.method public final u()[Lcom/flurry/android/monolithic/sdk/impl/js;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->s:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mw;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/mw;->z:[Lcom/flurry/android/monolithic/sdk/impl/js;

    return-object v0
.end method

.method public final v()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mh;->a:Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a()V

    .line 148
    return-void
.end method
