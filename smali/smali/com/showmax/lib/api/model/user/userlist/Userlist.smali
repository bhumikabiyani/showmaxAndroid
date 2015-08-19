.class public Lcom/showmax/lib/api/model/user/userlist/Userlist;
.super Ljava/lang/Object;
.source "Userlist.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/Userlist;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOKMARKS_NAME:Ljava/lang/String; = "bookmarks"

.field private static final TYPE_RECENTLY_WATCED_NAME:Ljava/lang/String; = "recently_watched"

.field private static final USERLIST_DELIMITER:Ljava/lang/String; = ";"

.field private static final USERLIST_ITEM_DELIMITER:Ljava/lang/String; = "&"


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public items:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/Userlist$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->description:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->link:Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    .line 383
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/userlist/Userlist$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/user/userlist/Userlist$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/Userlist;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/Userlist;
    .locals 7
    .param p0, "userlist"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 288
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "splitted":[Ljava/lang/String;
    new-instance v1, Lcom/showmax/lib/api/model/user/userlist/Userlist;

    invoke-direct {v1}, Lcom/showmax/lib/api/model/user/userlist/Userlist;-><init>()V

    .line 290
    .local v1, "result":Lcom/showmax/lib/api/model/user/userlist/Userlist;
    aget-object v5, v2, v4

    iput-object v5, v1, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    .line 291
    const/4 v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    .line 294
    array-length v5, v2

    if-le v5, v6, :cond_0

    .line 296
    aget-object v5, v2, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "splittedItems":[Ljava/lang/String;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 299
    .local v0, "item":Ljava/lang/String;
    iget-object v6, v1, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "item":Ljava/lang/String;
    .end local v3    # "splittedItems":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    .local v1, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 351
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    iget-object v2, v2, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    .end local v0    # "i":I
    .end local v1    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    :goto_1
    return v0

    .line 349
    .restart local v0    # "i":I
    .restart local v1    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    .end local v1    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private serializeItems()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private updateEndTime(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "userlistItem"    # Ljava/lang/String;
    .param p2, "endTime"    # I

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-static {p1}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    move-result-object v0

    .line 365
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    iput p2, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    .line 366
    invoke-virtual {v0}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->serialize()Ljava/lang/String;

    move-result-object p1

    .line 368
    .end local v0    # "item":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    .end local p1    # "userlistItem":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAssetToList(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 5
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    .line 101
    :cond_0
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "indexOfAsset":I
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "assetItem":Ljava/lang/String;
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addAssetToList(Lcom/showmax/lib/api/model/catalogue/Asset;I)V
    .locals 5
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "endTime"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    .line 128
    :cond_0
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->updateEndTime(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "indexOfAsset":I
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "assetItem":Ljava/lang/String;
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->updateEndTime(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 240
    .local v1, "userlistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    .line 244
    .local v0, "i":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    iget-object v3, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 250
    .end local v0    # "i":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 308
    instance-of v1, p1, Lcom/showmax/lib/api/model/user/userlist/Userlist;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/Userlist;

    .line 311
    .local v0, "other":Lcom/showmax/lib/api/model/user/userlist/Userlist;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->serialize()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/showmax/lib/api/model/user/userlist/Userlist;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 319
    .end local v0    # "other":Lcom/showmax/lib/api/model/user/userlist/Userlist;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssetEndTime(Lcom/showmax/lib/api/model/catalogue/Asset;)I
    .locals 5
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 160
    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    .line 165
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    iget-object v3, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget v2, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    .line 171
    .end local v0    # "item":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUserlistItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/UserlistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "userlistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "userlistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v1
.end method

.method public getUserlistItemsArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserlistItemsArrayWithoutEndTimes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 218
    .local v2, "userlistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/UserlistItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 221
    .local v1, "userlistArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    iget-object v3, v3, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    .end local v1    # "userlistArray":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getUserlistType()Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    .line 266
    :goto_0
    return-object v0

    .line 262
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAssetFromList(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-direct {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->serializeItems()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 394
    return-void
.end method
