.class public Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeasonSpinnerAdapter.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RES_ID_ITEM_LAYOUT_DROPDOWN:I = 0x7f030060

.field private static final RES_ID_ITEM_LAYOUT_MAIN:I = 0x7f03005f

.field private static final RES_ID_STRING_SEASON:I = 0x7f0d00c2


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSeasonText:Ljava/lang/String;

.field private mSeasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "seasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    const v0, 0x7f0d00c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasonText:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    .line 59
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_0
    const-string v0, "[SeasonSpinnerAdapter]::[Seasons count: %d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private getSeasonText(I)Ljava/lang/String;
    .locals 4
    .param p1, "seasonNo"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasonText:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v1

    .line 107
    .local v1, "season":Lcom/showmax/lib/api/model/catalogue/Asset;
    if-nez p2, :cond_0

    .line 109
    new-instance v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;-><init>()V

    .line 110
    .local v0, "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030060

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 112
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    :goto_0
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v3, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v3}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->getSeasonText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object p2

    .line 117
    .end local v0    # "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSeasonNumber(I)I
    .locals 2
    .param p1, "seasonNumber"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    if-ne v1, p1, :cond_0

    .line 156
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 148
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v1

    .line 83
    .local v1, "season":Lcom/showmax/lib/api/model/catalogue/Asset;
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;-><init>()V

    .line 86
    .local v0, "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 88
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v3, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v3}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->getSeasonText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object p2

    .line 93
    .end local v0    # "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "seasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    .line 70
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
