.class final Lcom/showmax/lib/api/model/catalogue/Advertisement$1;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Advertisement;
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
        "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/catalogue/Advertisement;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Advertisement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/showmax/lib/api/model/catalogue/Advertisement;-><init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Advertisement$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Advertisement$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/catalogue/Advertisement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/catalogue/Advertisement;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/showmax/lib/api/model/catalogue/Advertisement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Advertisement$1;->newArray(I)[Lcom/showmax/lib/api/model/catalogue/Advertisement;

    move-result-object v0

    return-object v0
.end method
