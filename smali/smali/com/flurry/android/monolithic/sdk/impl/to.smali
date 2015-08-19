.class public Lcom/flurry/android/monolithic/sdk/impl/to;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/String;

.field private final d:[Lcom/flurry/android/monolithic/sdk/impl/afz;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/to;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    .line 42
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/to;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->b:Ljava/util/HashMap;

    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    array-length v0, v0

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/afz;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    .line 46
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/tq;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/flurry/android/monolithic/sdk/impl/tq;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/flurry/android/monolithic/sdk/impl/afz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    .line 34
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->b:Ljava/util/HashMap;

    .line 35
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/to;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/to;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/to;-><init>(Lcom/flurry/android/monolithic/sdk/impl/to;)V

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 92
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing external type id property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/tq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 100
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/tq;->b()Lcom/flurry/android/monolithic/sdk/impl/sw;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/sw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for external type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/tq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 103
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/to;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;I)V

    goto :goto_1

    .line 105
    :cond_3
    return-object p3
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afz;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->a()Lcom/flurry/android/monolithic/sdk/impl/pc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    .line 115
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b()V

    .line 116
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aget-object v1, v1, p4

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 119
    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    .line 120
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c()V

    .line 122
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 124
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/tq;->b()Lcom/flurry/android/monolithic/sdk/impl/sw;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 64
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->a:[Lcom/flurry/android/monolithic/sdk/impl/tq;

    aget-object v0, v0, v3

    .line 66
    invoke-virtual {v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/tq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 68
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->d()Lcom/flurry/android/monolithic/sdk/impl/ow;

    .line 69
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    move v0, v1

    .line 79
    :goto_1
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2, p4, v3}, Lcom/flurry/android/monolithic/sdk/impl/to;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;I)V

    .line 82
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    aput-object v5, v0, v3

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aput-object v5, v0, v3

    :cond_1
    move v2, v1

    .line 85
    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afz;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->a()Lcom/flurry/android/monolithic/sdk/impl/pc;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/afz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    .line 73
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->d:[Lcom/flurry/android/monolithic/sdk/impl/afz;

    aput-object v0, v4, v3

    .line 74
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/to;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    move v0, v2

    goto :goto_1
.end method
