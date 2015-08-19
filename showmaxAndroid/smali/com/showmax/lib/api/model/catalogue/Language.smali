.class public Lcom/showmax/lib/api/model/catalogue/Language;
.super Ljava/lang/Object;
.source "Language.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iso6393:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iso_639_3"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Language$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Language$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Language;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Language$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Language$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Language;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/showmax/lib/api/model/catalogue/Language;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    .line 72
    .local v0, "other":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 77
    .end local v0    # "other":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

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
    .line 42
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
