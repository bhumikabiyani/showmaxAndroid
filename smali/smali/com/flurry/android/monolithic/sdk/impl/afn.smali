.class public Lcom/flurry/android/monolithic/sdk/impl/afn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afo;->values()[Lcom/flurry/android/monolithic/sdk/impl/afo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->a:[[B

    .line 48
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afp;->values()[Lcom/flurry/android/monolithic/sdk/impl/afp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->b:[[C

    .line 50
    return-void
.end method

.method private final a(I)[B
    .locals 1

    .prologue
    .line 102
    new-array v0, p1, [B

    return-object v0
.end method

.method private final b(I)[C
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afp;[C)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->b:[[C

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afp;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 92
    return-void
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afo;)[B
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afo;->ordinal()I

    move-result v1

    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->a:[[B

    aget-object v0, v0, v1

    .line 56
    if-nez v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/afo;->a(Lcom/flurry/android/monolithic/sdk/impl/afo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afn;->a(I)[B

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->a:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afp;)[C
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/afn;->a(Lcom/flurry/android/monolithic/sdk/impl/afp;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afp;I)[C
    .locals 4

    .prologue
    .line 76
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/afp;->a(Lcom/flurry/android/monolithic/sdk/impl/afp;)I

    move-result v0

    if-le v0, p2, :cond_0

    .line 77
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/afp;->a(Lcom/flurry/android/monolithic/sdk/impl/afp;)I

    move-result p2

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afp;->ordinal()I

    move-result v1

    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->b:[[C

    aget-object v0, v0, v1

    .line 81
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 82
    :cond_1
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/afn;->b(I)[C

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/afn;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method
