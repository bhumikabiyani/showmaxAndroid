.class public final enum Lcom/flurry/android/monolithic/sdk/impl/gx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/gx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/gx;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/gx;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/gx;

.field private static final synthetic d:[Lcom/flurry/android/monolithic/sdk/impl/gx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gx;

    const-string v1, "METHOD_POST"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gx;->a:Lcom/flurry/android/monolithic/sdk/impl/gx;

    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gx;

    const-string v1, "METHOD_PUT"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gx;->b:Lcom/flurry/android/monolithic/sdk/impl/gx;

    .line 35
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gx;

    const-string v1, "METHOD_GET"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gx;->c:Lcom/flurry/android/monolithic/sdk/impl/gx;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/gx;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gx;->a:Lcom/flurry/android/monolithic/sdk/impl/gx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gx;->b:Lcom/flurry/android/monolithic/sdk/impl/gx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gx;->c:Lcom/flurry/android/monolithic/sdk/impl/gx;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gx;->d:[Lcom/flurry/android/monolithic/sdk/impl/gx;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/gx;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/gx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gx;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/gx;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gx;->d:[Lcom/flurry/android/monolithic/sdk/impl/gx;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/gx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/gx;

    return-object v0
.end method
