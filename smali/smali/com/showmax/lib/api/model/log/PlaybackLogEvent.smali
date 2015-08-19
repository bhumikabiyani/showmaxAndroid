.class public Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
.super Lcom/showmax/lib/api/model/log/LogEvent;
.source "PlaybackLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/log/PlaybackLogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fullscreen:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen"
    .end annotation
.end field

.field public position:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field public previousPosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prev_position"
    .end annotation
.end field

.field public previousProfile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prev_profile"
    .end annotation
.end field

.field public profile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile"
    .end annotation
.end field

.field public startUpTime:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startup_time"
    .end annotation
.end field

.field public subtitlesId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_id"
    .end annotation
.end field

.field public throughput:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "throughput"
    .end annotation
.end field

.field public transferTime:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_time"
    .end annotation
.end field

.field public videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/log/PlaybackLogEvent$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Landroid/os/Parcel;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->videoId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->previousPosition:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->startUpTime:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->subtitlesId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->profile:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->previousProfile:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->throughput:F

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->transferTime:F

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->fullscreen:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->eventCategory:Ljava/lang/String;

    .line 66
    invoke-virtual {p3}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->event:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->previousPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->startUpTime:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->subtitlesId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->profile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->previousProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->throughput:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->transferTime:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->fullscreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
