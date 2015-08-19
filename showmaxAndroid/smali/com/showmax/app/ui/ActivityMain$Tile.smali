.class public Lcom/showmax/app/ui/ActivityMain$Tile;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/app/ui/ActivityMain$Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 637
    new-instance v0, Lcom/showmax/app/ui/ActivityMain$Tile$1;

    invoke-direct {v0}, Lcom/showmax/app/ui/ActivityMain$Tile$1;-><init>()V

    sput-object v0, Lcom/showmax/app/ui/ActivityMain$Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .line 618
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    .line 620
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 621
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/app/ui/ActivityMain$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/app/ui/ActivityMain$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;)V
    .locals 1
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 581
    return-void
.end method

.method public constructor <init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 1
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;)V

    .line 586
    return-void
.end method

.method public constructor <init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/app/ui/widget/AssetsTileView$TileType;",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p3, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .line 591
    iput-object p2, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 592
    iput-object p3, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    .line 593
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public getAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory()Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object v0
.end method

.method public getTileType()Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    return-object v0
.end method

.method public setAssets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    .line 598
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 633
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 634
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$Tile;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 635
    return-void
.end method
