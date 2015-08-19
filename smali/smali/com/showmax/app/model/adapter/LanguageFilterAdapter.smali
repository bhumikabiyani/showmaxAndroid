.class public Lcom/showmax/app/model/adapter/LanguageFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageFilterAdapter.java"


# static fields
.field private static final RES_ID_VIEW_LAYOUT:I = 0x7f03005d

.field private static final RES_ID_VIEW_LAYOUT_DROPDOWN:I = 0x7f03005e


# instance fields
.field private mAllStr:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    invoke-static {p1}, Lcom/showmax/app/util/StringUtils;->getAllString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mAllStr:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
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
    .line 48
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    const v2, 0x7f0b0156

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "languageTxtView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v0

    .line 108
    .local v0, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    if-nez v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mAllStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-object p2

    .line 114
    :cond_0
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getItem(I)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Lcom/showmax/lib/api/model/catalogue/Language;)I
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Language;

    .line 65
    .local v1, "tempLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    iget-object v3, v1, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    .end local v0    # "i":I
    .end local v1    # "tempLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_1
    return v0

    .line 62
    .restart local v0    # "i":I
    .restart local v1    # "tempLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    .end local v1    # "tempLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    const v2, 0x7f0b0156

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "languageTxtView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v0

    .line 88
    .local v0, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mAllStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    return-object p2

    .line 94
    :cond_0
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/showmax/app/model/adapter/LanguageFilterAdapter;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method
