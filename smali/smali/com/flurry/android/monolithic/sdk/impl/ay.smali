.class public final enum Lcom/flurry/android/monolithic/sdk/impl/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/ay;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/ay;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/ay;

.field private static final synthetic d:[Lcom/flurry/android/monolithic/sdk/impl/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ay;

    const-string v1, "WEB_RESULT_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->a:Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 35
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ay;

    const-string v1, "WEB_RESULT_BACK"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->b:Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 36
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ay;

    const-string v1, "WEB_RESULT_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->c:Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/ay;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ay;->a:Lcom/flurry/android/monolithic/sdk/impl/ay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ay;->b:Lcom/flurry/android/monolithic/sdk/impl/ay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ay;->c:Lcom/flurry/android/monolithic/sdk/impl/ay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->d:[Lcom/flurry/android/monolithic/sdk/impl/ay;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ay;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ay;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/ay;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->d:[Lcom/flurry/android/monolithic/sdk/impl/ay;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/ay;

    return-object v0
.end method
