.class public final enum Lcom/flurry/android/monolithic/sdk/impl/sf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/sf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field private static final synthetic e:[Lcom/flurry/android/monolithic/sdk/impl/sf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/sf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 158
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    const-string v1, "NON_NULL"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/sf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->b:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 168
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    const-string v1, "NON_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/sf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->c:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 190
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    const-string v1, "NON_EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/monolithic/sdk/impl/sf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->d:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/sf;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/sf;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/sf;->b:Lcom/flurry/android/monolithic/sdk/impl/sf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/sf;->c:Lcom/flurry/android/monolithic/sdk/impl/sf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/sf;->d:Lcom/flurry/android/monolithic/sdk/impl/sf;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->e:[Lcom/flurry/android/monolithic/sdk/impl/sf;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/sf;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/sf;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/sf;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->e:[Lcom/flurry/android/monolithic/sdk/impl/sf;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/sf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/sf;

    return-object v0
.end method
