.class public final enum Lcom/flurry/android/monolithic/sdk/impl/afp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/afp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/afp;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/afp;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/afp;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/afp;

.field private static final synthetic f:[Lcom/flurry/android/monolithic/sdk/impl/afp;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/afp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->a:Lcom/flurry/android/monolithic/sdk/impl/afp;

    .line 37
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/android/monolithic/sdk/impl/afp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->b:Lcom/flurry/android/monolithic/sdk/impl/afp;

    .line 38
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/flurry/android/monolithic/sdk/impl/afp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->c:Lcom/flurry/android/monolithic/sdk/impl/afp;

    .line 39
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/afp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->d:Lcom/flurry/android/monolithic/sdk/impl/afp;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/afp;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afp;->a:Lcom/flurry/android/monolithic/sdk/impl/afp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afp;->b:Lcom/flurry/android/monolithic/sdk/impl/afp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afp;->c:Lcom/flurry/android/monolithic/sdk/impl/afp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afp;->d:Lcom/flurry/android/monolithic/sdk/impl/afp;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->f:[Lcom/flurry/android/monolithic/sdk/impl/afp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/afp;->e:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/afp;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afp;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/afp;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afp;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/afp;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/afp;->f:[Lcom/flurry/android/monolithic/sdk/impl/afp;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/afp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/afp;

    return-object v0
.end method
