.class public final enum Lcom/flurry/android/monolithic/sdk/impl/os;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/os;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum e:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum f:Lcom/flurry/android/monolithic/sdk/impl/os;

.field public static final enum g:Lcom/flurry/android/monolithic/sdk/impl/os;

.field private static final synthetic j:[Lcom/flurry/android/monolithic/sdk/impl/os;


# instance fields
.field final h:Z

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 51
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->a:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 63
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->b:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 72
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->c:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 86
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v6, v3}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->d:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 105
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v1, v7, v4}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->e:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 120
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "FLUSH_PASSED_TO_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->f:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 131
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    const-string v1, "ESCAPE_NON_ASCII"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/os;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->g:Lcom/flurry/android/monolithic/sdk/impl/os;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/os;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/os;->a:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/os;->b:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/os;->c:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/os;->d:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/os;->e:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/os;->f:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/os;->g:Lcom/flurry/android/monolithic/sdk/impl/os;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->j:[Lcom/flurry/android/monolithic/sdk/impl/os;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-boolean p3, p0, Lcom/flurry/android/monolithic/sdk/impl/os;->h:Z

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/os;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/os;->i:I

    .line 157
    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/os;->values()[Lcom/flurry/android/monolithic/sdk/impl/os;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 147
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/os;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/os;->c()I

    move-result v4

    or-int/2addr v0, v4

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/os;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/os;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/os;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->j:[Lcom/flurry/android/monolithic/sdk/impl/os;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/os;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/os;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/os;->h:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/os;->i:I

    return v0
.end method
