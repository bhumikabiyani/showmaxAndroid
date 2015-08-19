.class public Lcom/showmax/lib/api/model/log/UserLogEvent;
.super Lcom/showmax/lib/api/model/log/LogEvent;
.source "UserLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/log/UserLogEvent;",
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

.field public days:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days"
    .end annotation
.end field

.field public paymentInstrument:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_instrument"
    .end annotation
.end field

.field public product:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/showmax/lib/api/model/log/UserLogEvent$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/log/UserLogEvent$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/log/UserLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Landroid/os/Parcel;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->paymentInstrument:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->product:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->days:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->assetId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/log/UserLogEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/log/UserLogEvent$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/log/UserLogEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$UserEvent;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/showmax/lib/api/model/log/Event$UserEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$UserEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->eventCategory:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lcom/showmax/lib/api/model/log/Event$UserEvent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->event:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/showmax/lib/api/model/log/LogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->paymentInstrument:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->product:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->days:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/showmax/lib/api/model/log/UserLogEvent;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
