.class public final enum Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Image$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

.field public static final enum LANDSCAPE:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "landscape"
    .end annotation
.end field

.field public static final enum PORTRAIT:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portrait"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->LANDSCAPE:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    .line 42
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->PORTRAIT:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->LANDSCAPE:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->PORTRAIT:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    .line 45
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->values()[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->allValues:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    return-object v0
.end method
