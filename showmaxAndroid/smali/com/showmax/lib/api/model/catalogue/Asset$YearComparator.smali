.class public Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;
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
    name = "YearComparator"
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
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-boolean p1, p0, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->mDescending:Z

    .line 701
    return-void
.end method

.method private resolveDirection(I)I
    .locals 1
    .param p1, "ascendingOrder"    # I

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->mDescending:Z

    if-eqz v0, :cond_0

    neg-int p1, p1

    .end local p1    # "ascendingOrder":I
    :cond_0
    return p1
.end method


# virtual methods
.method public compare(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Asset;)I
    .locals 5
    .param p1, "lhs"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "rhs"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 707
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 709
    invoke-direct {p0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->resolveDirection(I)I

    move-result v0

    .line 727
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 713
    invoke-direct {p0, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0

    .line 715
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    .line 719
    :cond_3
    iget v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    iget v2, p2, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    if-ge v1, v2, :cond_4

    .line 721
    invoke-direct {p0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0

    .line 723
    :cond_4
    iget v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    iget v2, p2, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    if-le v1, v2, :cond_0

    .line 725
    invoke-direct {p0, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->resolveDirection(I)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 694
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/Asset;

    check-cast p2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;->compare(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Asset;)I

    move-result v0

    return v0
.end method
