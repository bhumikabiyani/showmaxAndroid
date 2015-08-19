.class public Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
.super Ljava/lang/Object;
.source "DeeplinkUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/utils/DeeplinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeeplinkAsset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public asset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field public assetId:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field public section:Lcom/showmax/lib/api/model/catalogue/Section;

.field public type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .local v1, "ordinalType":I
    if-ne v1, v4, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->assetId:Ljava/lang/String;

    .line 205
    const-class v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->query:Ljava/lang/String;

    .line 208
    const-class v2, Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Section;

    iput-object v2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->section:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .local v0, "ordinalSearchType":I
    if-ne v0, v4, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 212
    return-void

    .line 201
    .end local v0    # "ordinalSearchType":I
    :cond_0
    invoke-static {v1}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->fromOrdinal(I)Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    move-result-object v2

    goto :goto_0

    .line 211
    .restart local v0    # "ordinalSearchType":I
    :cond_1
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    move-result-object v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/utils/DeeplinkUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/utils/DeeplinkUtils$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    .param p3, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "section"    # Ljava/lang/String;
    .param p6, "searchType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    .line 189
    iput-object p1, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->assetId:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 191
    iput-object p4, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->query:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-direct {v0, p5, p5}, Lcom/showmax/lib/api/model/catalogue/Section;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->section:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 195
    iput-object p6, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 196
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 217
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->section:Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void

    :cond_1
    move v0, v1

    .line 217
    goto :goto_0
.end method
