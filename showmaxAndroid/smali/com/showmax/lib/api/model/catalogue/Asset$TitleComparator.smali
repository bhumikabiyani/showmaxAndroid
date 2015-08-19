.class public Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Asset;",
        ">;"
    }
.end annotation


# instance fields
.field private mDescending:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "descending"    # Z

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-boolean p1, p0, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->mDescending:Z

    .line 743
    return-void
.end method

.method private resolveDirection(I)I
    .locals 1
    .param p1, "ascendingOrder"    # I

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->mDescending:Z

    if-eqz v0, :cond_0

    neg-int p1, p1

    .end local p1    # "ascendingOrder":I
    :cond_0
    return p1
.end method


# virtual methods
.method public compare(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Asset;)I
    .locals 3
    .param p1, "lhs"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "rhs"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 749
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 751
    invoke-direct {p0, v1}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->resolveDirection(I)I

    move-result v0

    .line 770
    :goto_0
    return v0

    .line 753
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 755
    invoke-direct {p0, v2}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0

    .line 757
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 759
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    :cond_2
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 763
    invoke-direct {p0, v1}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0

    .line 765
    :cond_3
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 767
    invoke-direct {p0, v2}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0

    .line 770
    :cond_4
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 736
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/Asset;

    check-cast p2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;->compare(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Asset;)I

    move-result v0

    return v0
.end method
