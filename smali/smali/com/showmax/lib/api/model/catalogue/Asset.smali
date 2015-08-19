.class public Lcom/showmax/lib/api/model/catalogue/Asset;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;,
        Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;,
        Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;,
        Lcom/showmax/lib/api/model/catalogue/Asset$Type;,
        Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_FALSE:B = 0x0t

.field private static final PARCELABLE_TRUE:B = 0x1t


# instance fields
.field public audioLanguages:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio_languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cast:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cast"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Cast;",
            ">;"
        }
    .end annotation
.end field

.field public categories:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
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

.field public contentWarning:Lcom/showmax/lib/api/model/catalogue/ContentWarning;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_warning"
    .end annotation
.end field

.field public crew:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crew"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Crew;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public episodes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episodes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public images:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Image;",
            ">;"
        }
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public metadataDirection:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata_direction"
    .end annotation
.end field

.field public metadataLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata_language"
    .end annotation
.end field

.field public number:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field public originalTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_title"
    .end annotation
.end field

.field public ratings:Lcom/showmax/lib/api/model/catalogue/Ratings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratings"
    .end annotation
.end field

.field public season:Lcom/showmax/lib/api/model/catalogue/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season"
    .end annotation
.end field

.field public seasons:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field public sectionSlug:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "section"
    .end annotation
.end field

.field public subtitlesLanguages:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitles_languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public trial:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trial"
    .end annotation
.end field

.field public tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_series"
    .end annotation
.end field

.field public type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public videos:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Video;",
            ">;"
        }
    .end annotation
.end field

.field public vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_model"
    .end annotation
.end field

.field public year:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 670
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    .line 580
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->cast:Ljava/util/ArrayList;

    .line 583
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->cast:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Cast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 585
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    .line 586
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 588
    const-class v3, Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->contentWarning:Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    .line 590
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->crew:Ljava/util/ArrayList;

    .line 591
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->crew:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Crew;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    .line 595
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->episodes:Ljava/util/ArrayList;

    .line 596
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->episodes:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    .line 600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    .line 601
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->link:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, "tmpMetadataDirection":I
    if-ne v0, v7, :cond_0

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->metadataDirection:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->metadataLanguage:Ljava/lang/String;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->originalTitle:Ljava/lang/String;

    .line 611
    const-class v3, Lcom/showmax/lib/api/model/catalogue/Ratings;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/catalogue/Ratings;

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->ratings:Lcom/showmax/lib/api/model/catalogue/Ratings;

    .line 613
    const-class v3, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->season:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    .line 616
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    .line 620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    .line 621
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->trial:Z

    .line 625
    const-class v3, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 628
    .local v1, "tmpType":I
    if-ne v1, v7, :cond_2

    move-object v3, v4

    :goto_2
    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 630
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    .line 631
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    sget-object v5, Lcom/showmax/lib/api/model/catalogue/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .local v2, "tmpVodModel":I
    if-ne v2, v7, :cond_3

    :goto_3
    iput-object v4, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    .line 637
    return-void

    .line 606
    .end local v1    # "tmpType":I
    .end local v2    # "tmpVodModel":I
    :cond_0
    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    move-result-object v3

    goto/16 :goto_0

    .line 624
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 628
    .restart local v1    # "tmpType":I
    :cond_2
    invoke-static {v1}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    move-result-object v3

    goto :goto_2

    .line 634
    .restart local v2    # "tmpVodModel":I
    :cond_3
    invoke-static {v2}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    move-result-object v4

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Asset$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Asset$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Asset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getVideoAudioLanguages(Z)Ljava/util/ArrayList;
    .locals 6
    .param p1, "isTrailer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    if-eqz p1, :cond_1

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    .line 558
    .local v2, "videoType":Lcom/showmax/lib/api/model/catalogue/Video$Type;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 563
    .local v1, "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v4, v1, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v4, v2, :cond_0

    .line 565
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v4

    iget-object v5, v1, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/showmax/lib/api/utils/LanguageUtils;->parseLanguage(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    .end local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    .end local v1    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    .end local v2    # "videoType":Lcom/showmax/lib/api/model/catalogue/Video$Type;
    :cond_1
    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    goto :goto_0

    .line 569
    .restart local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    .restart local v2    # "videoType":Lcom/showmax/lib/api/model/catalogue/Video$Type;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 540
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 542
    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 543
    .local v0, "other":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/4 v1, 0x1

    .line 548
    .end local v0    # "other":Lcom/showmax/lib/api/model/catalogue/Asset;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeroImage()Lcom/showmax/lib/api/model/catalogue/Image;
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Image;

    .line 286
    .local v0, "i":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Image;->type:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Image$Type;->HERO:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    if-ne v2, v3, :cond_0

    .line 292
    .end local v0    # "i":Lcom/showmax/lib/api/model/catalogue/Image;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Image;

    .line 306
    .local v0, "i":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Image;->orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->LANDSCAPE:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    if-ne v2, v3, :cond_0

    .line 312
    .end local v0    # "i":Lcom/showmax/lib/api/model/catalogue/Image;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 344
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 346
    .local v0, "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_0
    return-object v0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 355
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 362
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_3
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 364
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_4

    goto :goto_0

    .line 371
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainVideo(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Video;
    .locals 4
    .param p1, "iso6393Language"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 379
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 381
    .local v0, "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_0
    return-object v0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 390
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 397
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_3
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 399
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_4

    goto :goto_0

    .line 406
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainVideoAudioLanguages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getVideoAudioLanguages(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Image;

    .line 266
    .local v0, "i":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Image;->type:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Image$Type;->POSTER:Lcom/showmax/lib/api/model/catalogue/Image$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Image;->orientation:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Image$Orientation;->PORTRAIT:Lcom/showmax/lib/api/model/catalogue/Image$Orientation;

    if-ne v2, v3, :cond_0

    .line 272
    .end local v0    # "i":Lcom/showmax/lib/api/model/catalogue/Image;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeason(I)Lcom/showmax/lib/api/model/catalogue/Asset;
    .locals 3
    .param p1, "seasonNo"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 464
    .local v0, "season":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget v2, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    if-ne v2, p1, :cond_0

    .line 470
    .end local v0    # "season":Lcom/showmax/lib/api/model/catalogue/Asset;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 422
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 424
    .local v0, "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_0
    return-object v0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 433
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->language:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 440
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_3
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Video;

    .line 442
    .restart local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Video;->type:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v2, v3, :cond_4

    goto :goto_0

    .line 449
    .end local v0    # "v":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrailerVideoAudioLanguages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getVideoAudioLanguages(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Z
    .locals 3
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, "audioLanguage":Ljava/lang/String;
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const/4 v1, 0x1

    .line 491
    .end local v0    # "audioLanguage":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMainVideoSubtitles(Lcom/showmax/lib/api/model/catalogue/Language;)Z
    .locals 3
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "subtitlesLanguage":Ljava/lang/String;
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v1, 0x1

    .line 512
    .end local v0    # "subtitlesLanguage":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public includeParentTvShowsImages(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "tvShow"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Asset;-><init>()V

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    .line 528
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 642
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 643
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->cast:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 644
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 645
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->contentWarning:Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 646
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->crew:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 647
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->episodes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 649
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 651
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->metadataDirection:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->metadataDirection:Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$MetadataDirection;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->metadataLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->originalTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->ratings:Lcom/showmax/lib/api/model/catalogue/Ratings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 657
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->season:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 658
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 659
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 661
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->trial:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 663
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 664
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 666
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->ordinal()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    return-void

    :cond_1
    move v0, v1

    .line 652
    goto :goto_0

    .line 662
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 664
    goto :goto_2
.end method
