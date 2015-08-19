.class public final enum Lcom/flurry/android/monolithic/sdk/impl/jd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/jd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/jd;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/jd;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/jd;

.field private static final synthetic e:[Lcom/flurry/android/monolithic/sdk/impl/jd;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jd;

    const-string v1, "NONE_OR_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/jd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->a:Lcom/flurry/android/monolithic/sdk/impl/jd;

    .line 47
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jd;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/android/monolithic/sdk/impl/jd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->b:Lcom/flurry/android/monolithic/sdk/impl/jd;

    .line 48
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jd;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/android/monolithic/sdk/impl/jd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->c:Lcom/flurry/android/monolithic/sdk/impl/jd;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/jd;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jd;->a:Lcom/flurry/android/monolithic/sdk/impl/jd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jd;->b:Lcom/flurry/android/monolithic/sdk/impl/jd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/jd;->c:Lcom/flurry/android/monolithic/sdk/impl/jd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->e:[Lcom/flurry/android/monolithic/sdk/impl/jd;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/jd;->d:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/jd;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/jd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/jd;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/jd;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->e:[Lcom/flurry/android/monolithic/sdk/impl/jd;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/jd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/jd;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jd;->d:I

    return v0
.end method
