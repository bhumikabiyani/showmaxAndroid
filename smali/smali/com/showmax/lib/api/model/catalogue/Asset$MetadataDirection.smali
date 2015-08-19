.class public final enum Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetadataDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

.field public static final enum LTR:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ltr"
    .end annotation
.end field

.field public static final enum RTL:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtl"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    const-string v1, "LTR"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->LTR:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    .line 32
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    const-string v1, "RTL"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->RTL:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->LTR:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->RTL:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    .line 35
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->values()[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    return-object v0
.end method
