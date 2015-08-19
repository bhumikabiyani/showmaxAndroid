.class public Lcom/showmax/lib/api/model/billing/Prices;
.super Ljava/lang/Object;
.source "Prices.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/billing/Prices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public priceNet:Lcom/showmax/lib/api/model/billing/Price;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_net"
    .end annotation
.end field

.field public priceRaw:Lcom/showmax/lib/api/model/billing/Price;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_raw"
    .end annotation
.end field

.field public priceTotal:Lcom/showmax/lib/api/model/billing/Price;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_total"
    .end annotation
.end field

.field public priceVatAmount:Lcom/showmax/lib/api/model/billing/Price;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_vat_amount"
    .end annotation
.end field

.field public priceVatRate:Ljava/math/BigDecimal;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_vat_rate"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/showmax/lib/api/model/billing/Prices$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/billing/Prices$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/billing/Prices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceVatRate:Ljava/math/BigDecimal;

    .line 65
    const-class v0, Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Price;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceRaw:Lcom/showmax/lib/api/model/billing/Price;

    .line 66
    const-class v0, Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Price;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceNet:Lcom/showmax/lib/api/model/billing/Price;

    .line 67
    const-class v0, Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Price;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceVatAmount:Lcom/showmax/lib/api/model/billing/Price;

    .line 68
    const-class v0, Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Price;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceTotal:Lcom/showmax/lib/api/model/billing/Price;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/billing/Prices$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/billing/Prices$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/billing/Prices;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceTotal:Lcom/showmax/lib/api/model/billing/Price;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceTotal:Lcom/showmax/lib/api/model/billing/Price;

    iget-object v0, v0, Lcom/showmax/lib/api/model/billing/Price;->formatted:Ljava/lang/String;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceVatRate:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceVatRate:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceRaw:Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceNet:Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceVatAmount:Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Prices;->priceTotal:Lcom/showmax/lib/api/model/billing/Price;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    return-void

    .line 79
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
