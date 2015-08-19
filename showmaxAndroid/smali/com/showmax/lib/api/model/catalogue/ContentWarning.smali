.class public Lcom/showmax/lib/api/model/catalogue/ContentWarning;
.super Ljava/lang/Object;
.source "ContentWarning.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/ContentWarning;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_FALSE:B = 0x0t

.field private static final PARCELABLE_TRUE:B = 0x1t


# instance fields
.field public confirmation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirmation"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public timeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/ContentWarning$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/ContentWarning$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->confirmation:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->link:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->timeout:I

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/ContentWarning$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/ContentWarning$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/ContentWarning;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->confirmation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/ContentWarning;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
