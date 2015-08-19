.class public final enum Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
.super Ljava/lang/Enum;
.source "AssetsTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/AssetsTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/ui/widget/AssetsTileView$TileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field public static final enum ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field public static final enum GROSSING:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field public static final enum MOVIE_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field public static final enum PICK:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field public static final enum TV_SERIES_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    const-string v1, "PICK"

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->PICK:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    const-string v1, "GROSSING"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->GROSSING:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    const-string v1, "ASSETS"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    const-string v1, "MOVIE_ASSETS"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->MOVIE_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    const-string v1, "TV_SERIES_ASSETS"

    invoke-direct {v0, v1, v6}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->TV_SERIES_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    sget-object v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->PICK:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->GROSSING:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->MOVIE_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->TV_SERIES_ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->$VALUES:[Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->$VALUES:[Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-virtual {v0}, [Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    return-object v0
.end method
