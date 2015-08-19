.class public final enum Lcom/flurry/android/monolithic/sdk/impl/gq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/gq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/gq;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/gq;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/gq;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/gq;

.field public static final enum e:Lcom/flurry/android/monolithic/sdk/impl/gq;

.field private static final synthetic f:[Lcom/flurry/android/monolithic/sdk/impl/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    const-string v1, "PENDING_DB"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->a:Lcom/flurry/android/monolithic/sdk/impl/gq;

    .line 25
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    const-string v1, "SERVER_DB"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->b:Lcom/flurry/android/monolithic/sdk/impl/gq;

    .line 26
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    const-string v1, "REGISTERED_DB"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->c:Lcom/flurry/android/monolithic/sdk/impl/gq;

    .line 27
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    const-string v1, "SEARCH_DATA_DB"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/monolithic/sdk/impl/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->d:Lcom/flurry/android/monolithic/sdk/impl/gq;

    .line 28
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    const-string v1, "SEARCH_ITEMS_DATA_DB"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/monolithic/sdk/impl/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->e:Lcom/flurry/android/monolithic/sdk/impl/gq;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/gq;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gq;->a:Lcom/flurry/android/monolithic/sdk/impl/gq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gq;->b:Lcom/flurry/android/monolithic/sdk/impl/gq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gq;->c:Lcom/flurry/android/monolithic/sdk/impl/gq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gq;->d:Lcom/flurry/android/monolithic/sdk/impl/gq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gq;->e:Lcom/flurry/android/monolithic/sdk/impl/gq;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->f:[Lcom/flurry/android/monolithic/sdk/impl/gq;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/gq;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gq;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/gq;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->f:[Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/gq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/gq;

    return-object v0
.end method
