.class Lcom/flurry/android/monolithic/sdk/impl/lo;
.super Lcom/flurry/android/monolithic/sdk/impl/lp;
.source "SourceFile"


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>([BII)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 875
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/lp;-><init>()V

    .line 872
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->e:Z

    .line 878
    array-length v0, p1

    if-lt v0, v2, :cond_0

    if-ge p3, v2, :cond_1

    .line 879
    :cond_0
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->b:[B

    .line 880
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->b:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 882
    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    .line 889
    :goto_0
    return-void

    .line 885
    :cond_1
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->b:[B

    .line 886
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 887
    add-int v0, p2, p3

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    goto :goto_0
.end method

.method synthetic constructor <init>([BIILcom/flurry/android/monolithic/sdk/impl/lm;)V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/lo;-><init>([BII)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/flurry/android/monolithic/sdk/impl/ll;)V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->b:[B

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;[B)[B

    .line 895
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 896
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 897
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 898
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ln;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ll;Lcom/flurry/android/monolithic/sdk/impl/lm;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    .line 899
    return-void
.end method

.method protected a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/lo;->b(J)J

    move-result-wide v0

    .line 905
    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 906
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 908
    :cond_0
    return-void
.end method

.method protected a([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/lo;->b([BII)I

    move-result v0

    .line 930
    if-ge v0, p3, :cond_0

    .line 931
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 933
    :cond_0
    return-void
.end method

.method protected a([BIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 946
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->e:Z

    if-nez v0, :cond_0

    .line 948
    add-int/lit8 v0, p4, 0x10

    new-array v0, v0, [B

    .line 949
    invoke-static {p1, p2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1, v0, v2, p4}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a([BII)V

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->e:Z

    .line 953
    :cond_0
    return-void
.end method

.method protected b([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method protected b(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    .line 914
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 915
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 916
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 917
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 918
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    .line 923
    :goto_0
    return-wide p1

    .line 921
    :cond_0
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 922
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    move-wide p1, v0

    .line 923
    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    .line 971
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    .line 958
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    .line 959
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->d:I

    if-lt v0, v1, :cond_0

    .line 960
    const/4 v0, -0x1

    .line 964
    :goto_0
    return v0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->d()[B

    move-result-object v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 963
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lo;->c:I

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    goto :goto_0
.end method
