.class public final enum Lcom/flurry/android/monolithic/sdk/impl/afo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/afo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/afo;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/afo;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/afo;

.field private static final synthetic e:[Lcom/flurry/android/monolithic/sdk/impl/afo;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0xfa0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afo;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/afo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afo;->a:Lcom/flurry/android/monolithic/sdk/impl/afo;

    .line 21
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afo;

    const-string v1, "WRITE_ENCODING_BUFFER"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/android/monolithic/sdk/impl/afo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afo;->b:Lcom/flurry/android/monolithic/sdk/impl/afo;

    .line 27
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afo;

    const-string v1, "WRITE_CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/android/monolithic/sdk/impl/afo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afo;->c:Lcom/flurry/android/monolithic/sdk/impl/afo;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/afo;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afo;->a:Lcom/flurry/android/monolithic/sdk/impl/afo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afo;->b:Lcom/flurry/android/monolithic/sdk/impl/afo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/afo;->c:Lcom/flurry/android/monolithic/sdk/impl/afo;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afo;->e:[Lcom/flurry/android/monolithic/sdk/impl/afo;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/afo;->d:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/afo;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afo;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/afo;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/afo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afo;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/afo;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/afo;->e:[Lcom/flurry/android/monolithic/sdk/impl/afo;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/afo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/afo;

    return-object v0
.end method
