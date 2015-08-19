.class final Lcom/showmax/lib/api/model/billing/Pricelist$1;
.super Ljava/lang/Object;
.source "Pricelist.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/billing/Pricelist;
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
        "Lcom/showmax/lib/api/model/billing/Pricelist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/billing/Pricelist;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 102
    new-instance v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/showmax/lib/api/model/billing/Pricelist;-><init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/billing/Pricelist$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/billing/Pricelist$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/billing/Pricelist;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/billing/Pricelist;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 107
    new-array v0, p1, [Lcom/showmax/lib/api/model/billing/Pricelist;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/billing/Pricelist$1;->newArray(I)[Lcom/showmax/lib/api/model/billing/Pricelist;

    move-result-object v0

    return-object v0
.end method
