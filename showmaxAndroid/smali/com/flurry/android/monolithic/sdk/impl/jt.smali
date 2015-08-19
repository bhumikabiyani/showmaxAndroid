.class public final enum Lcom/flurry/android/monolithic/sdk/impl/jt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/jt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/jt;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/jt;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/jt;

.field private static final synthetic e:[Lcom/flurry/android/monolithic/sdk/impl/jt;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jt;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jt;->a:Lcom/flurry/android/monolithic/sdk/impl/jt;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jt;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/jt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jt;->b:Lcom/flurry/android/monolithic/sdk/impl/jt;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jt;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/jt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jt;->c:Lcom/flurry/android/monolithic/sdk/impl/jt;

    .line 390
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/jt;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jt;->a:Lcom/flurry/android/monolithic/sdk/impl/jt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jt;->b:Lcom/flurry/android/monolithic/sdk/impl/jt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jt;->c:Lcom/flurry/android/monolithic/sdk/impl/jt;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jt;->e:[Lcom/flurry/android/monolithic/sdk/impl/jt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/jt;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jt;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/jt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/jt;
    .locals 1

    .prologue
    .line 390
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/jt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/jt;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/jt;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jt;->e:[Lcom/flurry/android/monolithic/sdk/impl/jt;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/jt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/jt;

    return-object v0
.end method
