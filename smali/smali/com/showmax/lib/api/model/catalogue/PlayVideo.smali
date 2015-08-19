.class public Lcom/showmax/lib/api/model/catalogue/PlayVideo;
.super Ljava/lang/Object;
.source "PlayVideo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_FALSE:B = 0x0t

.field private static final PARCELABLE_TRUE:B = 0x1t


# instance fields
.field public airplayAllowed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "airplay_allowed"
    .end annotation
.end field

.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public encoding:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encoding"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_id"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public type:Lcom/showmax/lib/api/model/catalogue/Video$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->duration:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "tmpEncoding":I
    if-ne v1, v5, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->encoding:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->language:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "tempType":I
    if-ne v0, v5, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->airplayAllowed:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->url:Ljava/lang/String;

    .line 86
    return-void

    .line 77
    .end local v0    # "tempType":I
    :cond_0
    invoke-static {v1}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    move-result-object v2

    goto :goto_0

    .line 82
    .restart local v0    # "tempType":I
    :cond_1
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v3

    goto :goto_1

    .line 84
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/PlayVideo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/PlayVideo$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/PlayVideo;-><init>(Landroid/os/Parcel;)V

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

    .line 91
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->encoding:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->encoding:Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/PlayVideo$Encoding;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->ordinal()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->airplayAllowed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
