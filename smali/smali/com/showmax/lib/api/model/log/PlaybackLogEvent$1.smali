.class final Lcom/showmax/lib/api/model/log/PlaybackLogEvent$1;
.super Ljava/lang/Object;
.source "PlaybackLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/showmax/lib/api/model/log/PlaybackLogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    new-instance v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    invoke-direct {v0, p1}, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/log/PlaybackLogEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/log/PlaybackLogEvent$1;->newArray(I)[Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    return-object v0
.end method
