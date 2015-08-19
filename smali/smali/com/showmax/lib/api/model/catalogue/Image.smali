.class public Lcom/showmax/lib/api/model/catalogue/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/catalogue/Image$Orientation;,
        Lcom/showmax/lib/api/model/catalogue/Image$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field public type:Lcom/showmax/lib/api/model/catalogue/Image$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Image$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Image$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Image;->id:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Image;->language:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "tmpOrientation":I
    if-ne v0, v4, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Image;->orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "tmpType":I
    if-ne v1, v4, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Image;->type:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    .line 88
    return-void

    .line 84
    .end local v1    # "tmpType":I
    :cond_0
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    move-result-object v2

    goto :goto_0

    .line 87
    .restart local v1    # "tmpType":I
    :cond_1
    invoke-static {v1}, Lcom/showmax/lib/api/model/catalogue/Image$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Image$Type;

    move-result-object v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Image$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Image$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Image;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 93
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->type:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Image;->type:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Image$Type;->ordinal()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0
.end method
