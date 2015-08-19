.class public Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
.super Ljava/lang/Object;
.source "Userlist.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;",
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

.field public items:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;",
            ">;"
        }
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
    .line 270
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->description:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .locals 4
    .param p0, "userlist"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v2, ";"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "splitted":[Ljava/lang/String;
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;-><init>()V

    .line 191
    .local v0, "result":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    .line 192
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->deserializeItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    .line 193
    return-object v0
.end method

.method private static deserializeItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "items"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    const-string v3, "&"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "splittedItems":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 243
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "splittedItems":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private serializeItems()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    invoke-virtual {v2}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    invoke-virtual {v2}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method


# virtual methods
.method public contains(Lcom/showmax/lib/api/model/catalogue/Asset;)Z
    .locals 4
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    .line 124
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 130
    .end local v0    # "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;)Z
    .locals 4
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    .line 147
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 153
    .end local v0    # "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    instance-of v1, p1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 201
    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .line 202
    .local v0, "other":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->serialize()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 210
    .end local v0    # "other":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrayOfItemIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 101
    .local v1, "userlistArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    iget-object v2, v2, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    .end local v1    # "userlistArray":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getAssetProgress(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;)I
    .locals 4
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    .line 86
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->contains(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget v1, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->progress:I

    .line 92
    .end local v0    # "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserlistType()Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    invoke-direct {p0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->serializeItems()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 268
    return-void
.end method
