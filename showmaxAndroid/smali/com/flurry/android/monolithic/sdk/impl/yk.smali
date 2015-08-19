.class public Lcom/flurry/android/monolithic/sdk/impl/yk;
.super Lcom/flurry/android/monolithic/sdk/impl/yy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/yi;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/yy;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method private final f(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yk;->e(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/yk;->a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v2, :cond_0

    .line 91
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "expected closing END_ARRAY after type information and deserialized value"

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yk;->f(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yk;->f(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yk;->f(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yk;->f(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    instance-of v0, v0, Lcom/flurry/android/monolithic/sdk/impl/yz;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/yz;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yz;->a()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/yk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    instance-of v0, v0, Lcom/flurry/android/monolithic/sdk/impl/yz;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yk;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/yz;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/yk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    goto :goto_0
.end method
