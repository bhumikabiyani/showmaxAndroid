.class public Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
.super Lcom/showmax/app/io/event/BaseFetchEvent;
.source "FetchCategoriesFinishedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/app/io/event/BaseFetchEvent",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Category;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Category;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/showmax/app/io/event/BaseFetchEvent;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .local p2, "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {p0}, Lcom/showmax/app/io/event/BaseFetchEvent;-><init>()V

    .line 29
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .local v0, "categories":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    invoke-virtual {p0, v0}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->setSuccess(Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getMovieCategories()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 36
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getTvSeriesCategories()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 42
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method
