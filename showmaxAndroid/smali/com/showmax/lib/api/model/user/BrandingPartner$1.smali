.class final Lcom/showmax/lib/api/model/user/BrandingPartner$1;
.super Ljava/lang/Object;
.source "BrandingPartner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/user/BrandingPartner;
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
        "Lcom/showmax/lib/api/model/user/BrandingPartner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v0, Lcom/showmax/lib/api/model/user/BrandingPartner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/showmax/lib/api/model/user/BrandingPartner;-><init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/BrandingPartner$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/user/BrandingPartner$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Lcom/showmax/lib/api/model/user/BrandingPartner;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/user/BrandingPartner$1;->newArray(I)[Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v0

    return-object v0
.end method
