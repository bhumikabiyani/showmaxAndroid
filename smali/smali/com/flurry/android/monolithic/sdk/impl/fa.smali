.class public Lcom/flurry/android/monolithic/sdk/impl/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/location/Location;

.field private j:I

.field private k:B

.field private l:Ljava/lang/Long;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ek;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ej;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/eh;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->b:J

    .line 15
    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->c:J

    .line 16
    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->d:J

    .line 19
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->g:I

    .line 22
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->j:I

    .line 23
    iput-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->k:B

    .line 27
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->n:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->q:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(B)V
    .locals 0

    .prologue
    .line 114
    iput-byte p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->k:B

    .line 115
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->g:I

    .line 83
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->b:J

    .line 43
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->i:Landroid/location/Location;

    .line 99
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->l:Ljava/lang/Long;

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ek;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->m:Ljava/util/List;

    .line 139
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/eh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->p:Ljava/util/Map;

    .line 155
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->q:Z

    .line 163
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->j:I

    .line 107
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->c:J

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ej;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->o:Ljava/util/List;

    .line 147
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->c:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->n:I

    .line 131
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->d:J

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->f:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->d:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->h:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/location/Location;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->i:Landroid/location/Location;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->j:I

    return v0
.end method

.method public k()B
    .locals 1

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->k:B

    return v0
.end method

.method public l()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->n:I

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->m:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ej;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->o:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/eh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->p:Ljava/util/Map;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fa;->q:Z

    return v0
.end method
