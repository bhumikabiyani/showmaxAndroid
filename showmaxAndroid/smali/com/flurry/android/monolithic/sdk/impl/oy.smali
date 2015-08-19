.class public final enum Lcom/flurry/android/monolithic/sdk/impl/oy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/oy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field public static final enum e:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field public static final enum f:Lcom/flurry/android/monolithic/sdk/impl/oy;

.field private static final synthetic g:[Lcom/flurry/android/monolithic/sdk/impl/oy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->b:Lcom/flurry/android/monolithic/sdk/impl/oy;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "BIG_INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->c:Lcom/flurry/android/monolithic/sdk/impl/oy;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->d:Lcom/flurry/android/monolithic/sdk/impl/oy;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v7}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->e:Lcom/flurry/android/monolithic/sdk/impl/oy;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/oy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->f:Lcom/flurry/android/monolithic/sdk/impl/oy;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/oy;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->b:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->c:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->d:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->e:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/oy;->f:Lcom/flurry/android/monolithic/sdk/impl/oy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->g:[Lcom/flurry/android/monolithic/sdk/impl/oy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/oy;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/oy;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/oy;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->g:[Lcom/flurry/android/monolithic/sdk/impl/oy;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/oy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/oy;

    return-object v0
.end method
