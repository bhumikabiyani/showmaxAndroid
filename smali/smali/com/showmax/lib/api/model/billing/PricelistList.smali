.class public Lcom/showmax/lib/api/model/billing/PricelistList;
.super Ljava/lang/Object;
.source "PricelistList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apple:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apple"
    .end annotation
.end field

.field public binga:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binga"
    .end annotation
.end field

.field public braintree:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "braintree"
    .end annotation
.end field

.field public cashex:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashex"
    .end annotation
.end field

.field public cashnpay:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashnpay"
    .end annotation
.end field

.field public cashudirect:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashudirect"
    .end annotation
.end field

.field public cashuprepaid:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashuprepaid"
    .end annotation
.end field

.field public defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public du:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "du"
    .end annotation
.end field

.field public mobicash:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobicash"
    .end annotation
.end field

.field public mtc:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mtc"
    .end annotation
.end field

.field public onecard:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onecard"
    .end annotation
.end field

.field public payfort:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payfort"
    .end annotation
.end field

.field public paypal:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paypal"
    .end annotation
.end field

.field public ptcl:Lcom/showmax/lib/api/model/billing/Pricelist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ptcl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/showmax/lib/api/model/billing/PricelistList$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/billing/PricelistList$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/billing/PricelistList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 94
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->braintree:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 95
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->paypal:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 96
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->apple:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 97
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->payfort:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 98
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->onecard:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 99
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->mtc:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 100
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->mobicash:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 101
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->binga:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 102
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashudirect:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 103
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashex:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 104
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashuprepaid:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 105
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashnpay:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 106
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->ptcl:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 107
    const-class v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/billing/Pricelist;

    iput-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->du:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/billing/PricelistList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/billing/PricelistList$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/billing/PricelistList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultFormattedLocalTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/billing/Pricelist;->getFormattedLocalTotalPrice()Ljava/lang/String;

    move-result-object v0

    .line 84
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
    .line 113
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->braintree:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->paypal:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->apple:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->payfort:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->onecard:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->mtc:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->mobicash:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->binga:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashudirect:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashex:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashuprepaid:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->cashnpay:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->ptcl:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->du:Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    return-void
.end method
