.class public final enum Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
.super Ljava/lang/Enum;
.source "DeeplinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/utils/DeeplinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum CLOSE_WEBVIEW:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum HOME_TAB:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum START_IAP:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field public static final enum TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

.field private static allValues:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "HOME_TAB"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->HOME_TAB:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "TV_SERIE"

    invoke-direct {v0, v1, v6}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "SEASON"

    invoke-direct {v0, v1, v7}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "EPISODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "CLOSE_WEBVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->CLOSE_WEBVIEW:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const-string v1, "START_IAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->START_IAP:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->HOME_TAB:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->CLOSE_WEBVIEW:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->START_IAP:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->$VALUES:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    .line 35
    invoke-static {}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->values()[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->allValues:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->allValues:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->$VALUES:[Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    return-object v0
.end method
