.class public Lcom/showmax/lib/api/model/catalogue/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childCategories:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "child_categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public parentCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_category"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Category$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Category$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->link:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->childCategories:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->childCategories:Ljava/util/ArrayList;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 92
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->parentCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Category$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Category$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Category;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/showmax/lib/api/model/catalogue/Category;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    .line 52
    .local v0, "other":Lcom/showmax/lib/api/model/catalogue/Category;
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    .line 57
    .end local v0    # "other":Lcom/showmax/lib/api/model/catalogue/Category;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->link:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Category;->link:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 65
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 66
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 64
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->childCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Category;->parentCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    return-void
.end method
