.class public Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
.super Lcom/showmax/lib/api/model/log/LogEvent;
.source "UiNavigationLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public assetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_id"
    .end annotation
.end field

.field public category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public keyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword"
    .end annotation
.end field

.field public section:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "section"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->section:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->keyword:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->count:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->category:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->assetId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->eventCategory:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->event:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
