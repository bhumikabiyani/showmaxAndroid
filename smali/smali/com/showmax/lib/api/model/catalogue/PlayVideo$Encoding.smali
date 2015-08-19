.class public final enum Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
.super Ljava/lang/Enum;
.source "PlayVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/PlayVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

.field public static final enum HLS:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hls"
    .end annotation
.end field

.field public static final enum WIDEVINE:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widevine"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    const-string v1, "HLS"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->HLS:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    .line 31
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    const-string v1, "WIDEVINE"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->WIDEVINE:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->HLS:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->WIDEVINE:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    .line 34
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->values()[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->allValues:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->allValues:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    return-object v0
.end method
