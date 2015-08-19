.class public final enum Lcom/flurry/android/monolithic/sdk/impl/hl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/hl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/hl;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/hl;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/hl;

.field private static final synthetic d:[Lcom/flurry/android/monolithic/sdk/impl/hl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hl;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->a:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 18
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hl;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/hl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->b:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 19
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hl;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/hl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->c:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/hl;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/hl;->a:Lcom/flurry/android/monolithic/sdk/impl/hl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/hl;->b:Lcom/flurry/android/monolithic/sdk/impl/hl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/hl;->c:Lcom/flurry/android/monolithic/sdk/impl/hl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->d:[Lcom/flurry/android/monolithic/sdk/impl/hl;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hl;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/hl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hl;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/hl;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->d:[Lcom/flurry/android/monolithic/sdk/impl/hl;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/hl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/hl;

    return-object v0
.end method
