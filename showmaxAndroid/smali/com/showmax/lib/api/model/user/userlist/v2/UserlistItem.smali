.class public Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
.super Ljava/lang/Object;
.source "UserlistItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final USERLIST_ITEM_DELIMITER:Ljava/lang/String; = "|"

.field private static final USERLIST_ITEM_DELIMITER_ESCAPED:Ljava/lang/String; = "\\|"


# instance fields
.field public assetData:Lcom/showmax/lib/api/model/catalogue/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_data"
    .end annotation
.end field

.field public assetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_id"
    .end annotation
.end field

.field public encodingTaskId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encoding_task_id"
    .end annotation
.end field

.field public progress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "progress"
    .end annotation
.end field

.field public subtitlesId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitles_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->progress:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->subtitlesId:Ljava/lang/String;

    .line 134
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/showmax/lib/api/model/catalogue/Asset;I)V
    .locals 0
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "progress"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 63
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    .locals 5
    .param p0, "userlistItem"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "splitted":[Ljava/lang/String;
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;-><init>()V

    .line 112
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;
    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {v2}, Lcom/showmax/lib/api/model/catalogue/Asset;-><init>()V

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 117
    :cond_0
    aget-object v2, v1, v4

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetId:Ljava/lang/String;

    .line 118
    iget-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    aget-object v3, v1, v4

    iput-object v3, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    .line 119
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    .line 120
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->progress:I

    .line 121
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_0
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->encodingTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->subtitlesId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistItem;->assetData:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    return-void
.end method
