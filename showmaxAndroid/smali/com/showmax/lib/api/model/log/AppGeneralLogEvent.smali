.class public Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;
.super Lcom/showmax/lib/api/model/log/LogEvent;
.source "AppGeneralLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public prevLang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prev_lang"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->lang:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->prevLang:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->eventCategory:Ljava/lang/String;

    .line 40
    invoke-virtual {p3}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->event:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->prevLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
