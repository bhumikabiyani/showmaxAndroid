.class public final enum Lcom/flurry/android/monolithic/sdk/impl/qa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/qa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/qa;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/qa;

.field private static final synthetic c:[Lcom/flurry/android/monolithic/sdk/impl/qa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qa;

    const-string v1, "MANAGED_REFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/qa;->a:Lcom/flurry/android/monolithic/sdk/impl/qa;

    .line 59
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qa;

    const-string v1, "BACK_REFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/qa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/qa;->b:Lcom/flurry/android/monolithic/sdk/impl/qa;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/qa;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/qa;->a:Lcom/flurry/android/monolithic/sdk/impl/qa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/qa;->b:Lcom/flurry/android/monolithic/sdk/impl/qa;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/qa;->c:[Lcom/flurry/android/monolithic/sdk/impl/qa;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qa;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/qa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qa;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/qa;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/qa;->c:[Lcom/flurry/android/monolithic/sdk/impl/qa;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/qa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/qa;

    return-object v0
.end method
