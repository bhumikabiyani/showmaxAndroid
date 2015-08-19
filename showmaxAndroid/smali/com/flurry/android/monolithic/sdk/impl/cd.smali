.class public final Lcom/flurry/android/monolithic/sdk/impl/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->a:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->b:J

    .line 36
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->c:J

    .line 37
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    .line 38
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->e:I

    .line 39
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->f:I

    .line 40
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->g:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIII)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->a:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->b:J

    .line 25
    iput-wide p4, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->c:J

    .line 26
    iput p6, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->e:I

    .line 27
    iput p7, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->f:I

    .line 28
    iput p8, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->g:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/cd;
    .locals 9

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/cd;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->i()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->h()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->e()I

    move-result v6

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->f()I

    move-result v7

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->g()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/flurry/android/monolithic/sdk/impl/cd;-><init>(Ljava/lang/String;JJIII)V

    .line 57
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/cd;->a(I)V

    .line 59
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    .line 76
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 48
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->g:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 52
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->d:I

    .line 80
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->g:I

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->c:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cd;->b:J

    return-wide v0
.end method
