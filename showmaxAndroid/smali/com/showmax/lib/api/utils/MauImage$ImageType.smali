.class public final enum Lcom/showmax/lib/api/utils/MauImage$ImageType;
.super Ljava/lang/Enum;
.source "MauImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/utils/MauImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/utils/MauImage$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum BRANDING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum CONTENT_WARNING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum LANDSCAPE:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum MOVIE_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

.field public static final enum TV_SERIES_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->LANDSCAPE:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "CONTENT_WARNING"

    invoke-direct {v0, v1, v6}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->CONTENT_WARNING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "BRANDING"

    invoke-direct {v0, v1, v7}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->BRANDING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "TV_SERIES_DETAIL_BANNER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->TV_SERIES_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    new-instance v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    const-string v1, "MOVIE_DETAIL_BANNER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/MauImage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->MOVIE_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$ImageType;->LANDSCAPE:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$ImageType;->BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$ImageType;->CONTENT_WARNING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$ImageType;->BRANDING:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/lib/api/utils/MauImage$ImageType;->TV_SERIES_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/lib/api/utils/MauImage$ImageType;->MOVIE_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->$VALUES:[Lcom/showmax/lib/api/utils/MauImage$ImageType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage$ImageType;->$VALUES:[Lcom/showmax/lib/api/utils/MauImage$ImageType;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/utils/MauImage$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/utils/MauImage$ImageType;

    return-object v0
.end method
