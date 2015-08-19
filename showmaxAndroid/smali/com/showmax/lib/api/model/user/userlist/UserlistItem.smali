.class public Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
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
            "Lcom/showmax/lib/api/model/user/userlist/UserlistItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final USERLIST_DELIMITER:Ljava/lang/String; = "|"

.field private static final USERLIST_DELIMITER_ESCAPED:Ljava/lang/String; = "\\|"


# instance fields
.field public assetId:Ljava/lang/String;

.field public retainedResumeTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/userlist/UserlistItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/user/userlist/UserlistItem$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    .locals 5
    .param p0, "userlistItem"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "splitted":[Ljava/lang/String;
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;-><init>()V

    .line 78
    .local v0, "item":Lcom/showmax/lib/api/model/user/userlist/UserlistItem;
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    .line 79
    array-length v2, v1

    if-le v2, v4, :cond_0

    .line 82
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iput v3, v0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/showmax/lib/api/model/user/userlist/UserlistItem;->retainedResumeTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
