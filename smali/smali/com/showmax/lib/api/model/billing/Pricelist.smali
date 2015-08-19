.class public Lcom/showmax/lib/api/model/billing/Pricelist;
.super Ljava/lang/Object;
.source "Pricelist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/billing/Pricelist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public discount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount"
    .end annotation
.end field

.field public presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presenting"
    .end annotation
.end field

.field public settlingPrice:Lcom/showmax/lib/api/model/billing/Prices;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settling"
    .end annotation
.end field

.field public subscriptions:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/showmax/lib/api/model/billing/Pricelist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/showmax/lib/api/model/billing/Pricelist$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/billing/Pricelist$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/billing/Pricelist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-class v4, Lcom/showmax/lib/api/model/billing/Prices;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/model/billing/Prices;

    iput-object v4, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    .line 66
    const-class v4, Lcom/showmax/lib/api/model/billing/Prices;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/model/billing/Prices;

    iput-object v4, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->settlingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    .local v1, "key":Ljava/lang/Integer;
    const-class v4, Lcom/showmax/lib/api/model/billing/Pricelist;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 74
    .local v3, "value":Lcom/showmax/lib/api/model/billing/Pricelist;
    iget-object v4, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Lcom/showmax/lib/api/model/billing/Pricelist;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/billing/Pricelist$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/billing/Pricelist$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/billing/Pricelist;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedLocalTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/billing/Prices;->getFormattedTotalPrice()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->settlingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v1, p0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 94
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    :cond_1
    return-void
.end method
