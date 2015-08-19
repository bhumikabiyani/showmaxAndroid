.class public Lcom/showmax/app/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAllString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 256
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "All"

    goto :goto_0
.end method

.method public static getAssetTypeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 233
    if-eqz p0, :cond_1

    .line 235
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne p1, v0, :cond_0

    .line 237
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne p1, v0, :cond_1

    .line 241
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCategories(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    const-string v2, "-"

    .line 129
    :goto_0
    return-object v2

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDirector(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Crew;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "crew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Crew;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    const-string v4, "-"

    .line 219
    :goto_0
    return-object v4

    .line 198
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "directors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Crew;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Crew;

    .line 201
    .local v0, "c":Lcom/showmax/lib/api/model/catalogue/Crew;
    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Crew;->role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->DIRECTOR:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    if-ne v5, v6, :cond_2

    .line 203
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v0    # "c":Lcom/showmax/lib/api/model/catalogue/Crew;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    .line 212
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/model/catalogue/Crew;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/model/catalogue/Crew;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v4, "-"

    goto :goto_0
.end method

.method public static getDirectorStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Crew;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "crew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Crew;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Crew;

    .line 177
    .local v0, "c":Lcom/showmax/lib/api/model/catalogue/Crew;
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Crew;->role:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->DIRECTOR:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Crew;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "c":Lcom/showmax/lib/api/model/catalogue/Crew;
    :cond_1
    return-object v1
.end method

.method public static getDuration(I)Ljava/lang/String;
    .locals 10
    .param p0, "duration"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    if-nez p0, :cond_0

    .line 54
    const-string v4, "-"

    .line 66
    :goto_0
    return-object v4

    .line 57
    :cond_0
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v2, v4, 0x3c

    .line 58
    .local v2, "minutes":I
    div-int/lit8 v4, p0, 0x3c

    div-int/lit8 v0, v4, 0x3c

    .line 60
    .local v0, "hours":I
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/showmax/app/ShowMaxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "minutesStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 63
    const-string v4, "%02d%s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/showmax/app/ShowMaxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "hoursStr":Ljava/lang/String;
    const-string v4, "%d%s %02d%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getEpisodeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 263
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 265
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getFormattedDefaultSubscriptionPrice(Lcom/showmax/lib/api/model/billing/PricelistList;)Ljava/lang/String;
    .locals 7
    .param p0, "subscriptionPricelistList"    # Lcom/showmax/lib/api/model/billing/PricelistList;

    .prologue
    .line 272
    if-eqz p0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/showmax/lib/api/model/billing/PricelistList;->defaultPaymentMethod:Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 275
    .local v0, "defaultPaymentMethod":Lcom/showmax/lib/api/model/billing/Pricelist;
    if-eqz v0, :cond_0

    .line 278
    iget-object v3, v0, Lcom/showmax/lib/api/model/billing/Pricelist;->subscriptions:Ljava/util/Map;

    .line 279
    .local v3, "prices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/showmax/lib/api/model/billing/Pricelist;>;"
    if-eqz v3, :cond_0

    .line 281
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v5, "subscriptionArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/billing/Pricelist;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 284
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/model/billing/Pricelist;

    .line 285
    .local v4, "subscription":Lcom/showmax/lib/api/model/billing/Pricelist;
    if-eqz v4, :cond_0

    .line 287
    iget-object v2, v4, Lcom/showmax/lib/api/model/billing/Pricelist;->presentingPrice:Lcom/showmax/lib/api/model/billing/Prices;

    .line 288
    .local v2, "priceList":Lcom/showmax/lib/api/model/billing/Prices;
    if-eqz v2, :cond_0

    .line 290
    iget-object v1, v2, Lcom/showmax/lib/api/model/billing/Prices;->priceTotal:Lcom/showmax/lib/api/model/billing/Price;

    .line 291
    .local v1, "price":Lcom/showmax/lib/api/model/billing/Price;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/showmax/lib/api/model/billing/Price;->formatted:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/showmax/lib/api/model/billing/Price;->formatted:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 293
    iget-object v6, v1, Lcom/showmax/lib/api/model/billing/Price;->formatted:Ljava/lang/String;

    .line 301
    .end local v0    # "defaultPaymentMethod":Lcom/showmax/lib/api/model/billing/Pricelist;
    .end local v1    # "price":Lcom/showmax/lib/api/model/billing/Price;
    .end local v2    # "priceList":Lcom/showmax/lib/api/model/billing/Prices;
    .end local v3    # "prices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/showmax/lib/api/model/billing/Pricelist;>;"
    .end local v4    # "subscription":Lcom/showmax/lib/api/model/billing/Pricelist;
    .end local v5    # "subscriptionArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/billing/Pricelist;>;"
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "-"

    goto :goto_0
.end method

.method public static getLanguages(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    const-string v2, "-"

    .line 88
    :goto_0
    return-object v2

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 84
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Language;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Language;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "languagesIso6393":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "language":Ljava/lang/String;
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->parseLanguage(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getLanguages(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .end local v1    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :goto_1
    return-object v2

    :cond_1
    const-string v2, "-"

    goto :goto_1
.end method

.method public static getStarring(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Cast;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "cast":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Cast;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    const-string v2, "-"

    .line 151
    :goto_0
    return-object v2

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Cast;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Cast;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Cast;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Cast;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getStarringStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Cast;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "cast":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Cast;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Cast;

    .line 161
    .local v0, "c":Lcom/showmax/lib/api/model/catalogue/Cast;
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Cast;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Cast;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Cast;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0    # "c":Lcom/showmax/lib/api/model/catalogue/Cast;
    :cond_1
    return-object v1
.end method

.method public static getYear(I)Ljava/lang/String;
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 38
    if-lez p0, :cond_0

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
