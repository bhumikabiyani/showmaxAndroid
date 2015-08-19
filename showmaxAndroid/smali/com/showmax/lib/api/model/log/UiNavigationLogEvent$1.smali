.class final Lcom/showmax/lib/api/model/log/UiNavigationLogEvent$1;
.super Ljava/lang/Object;
.source "UiNavigationLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
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
        "Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    invoke-direct {v0, p1}, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent$1;->newArray(I)[Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    return-object v0
.end method
