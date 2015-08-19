.class public Lcom/showmax/lib/api/model/catalogue/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/catalogue/Video$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

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

.field public subtitles:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Subtitles;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/showmax/lib/api/model/catalogue/Video$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Video$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Video$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->duration:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->link:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "tmpType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->subtitles:Ljava/util/ArrayList;

    .line 105
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->subtitles:Ljava/util/ArrayList;

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Subtitles;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->width:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/showmax/lib/api/model/catalogue/Video;->height:I

    .line 109
    return-void

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Video$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Video$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Video;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableSubtitles()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    .line 77
    .local v3, "utils":Lcom/showmax/lib/api/utils/LanguageUtils;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    const/4 v2, 0x0

    .line 79
    .local v2, "tempLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v4, p0, Lcom/showmax/lib/api/model/catalogue/Video;->subtitles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Subtitles;

    .line 81
    .local v1, "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    iget-object v5, v1, Lcom/showmax/lib/api/model/catalogue/Subtitles;->language:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/showmax/lib/api/utils/LanguageUtils;->parseLanguage(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v1    # "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->subtitles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 120
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/Video;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void

    .line 118
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
