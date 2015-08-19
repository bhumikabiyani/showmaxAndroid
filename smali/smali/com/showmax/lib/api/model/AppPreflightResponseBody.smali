.class public Lcom/showmax/lib/api/model/AppPreflightResponseBody;
.super Ljava/lang/Object;
.source "AppPreflightResponseBody.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/AppPreflightResponseBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field public logLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "log_level"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->logLevel:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->message:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnText:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnLink:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->redirect:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/AppPreflightResponseBody$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/AppPreflightResponseBody$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getBtnLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnLink:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBtntext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->logLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->redirect:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const-string v0, "[AppPreflightResponseBody]::[logLevel: %s]::[btnText: %s]::[btnLink: %s]::[action: %s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getLogLevel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtntext()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtnLink()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getRedirect()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->logLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->btnLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->action:Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;

    iget-object v0, v0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->redirect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
