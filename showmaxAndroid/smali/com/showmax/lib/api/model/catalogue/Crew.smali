.class public Lcom/showmax/lib/api/model/catalogue/Crew;
.super Ljava/lang/Object;
.source "Crew.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Crew;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Crew$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Crew$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "tmpRole":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Crew;->role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    .line 58
    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    move-result-object v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Crew$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Crew$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Crew;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Crew;->role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Crew;->role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
