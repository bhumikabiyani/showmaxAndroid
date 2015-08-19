.class public final enum Lcom/showmax/lib/api/model/catalogue/Image$Type;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Image$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Type;

.field public static final enum HERO:Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hero"
    .end annotation
.end field

.field public static final enum PICK:Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pick"
    .end annotation
.end field

.field public static final enum POSTER:Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;

    const-string v1, "POSTER"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Image$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->POSTER:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    .line 23
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;

    const-string v1, "HERO"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Image$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->HERO:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    .line 26
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;

    const-string v1, "PICK"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/catalogue/Image$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->PICK:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Image$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Image$Type;->POSTER:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Image$Type;->HERO:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Image$Type;->PICK:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Type;

    .line 29
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Image$Type;->values()[Lcom/showmax/lib/api/model/catalogue/Image$Type;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Type;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Type;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Type;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Type;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Image$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Image$Type;

    return-object v0
.end method
