.class public Lcom/showmax/lib/api/utils/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# static fields
.field private static final LOG:Z = true

.field private static sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;


# instance fields
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/showmax/lib/api/utils/LanguageUtils;->sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "[LanguageUtils]::[getInstance]::[sInstance is null]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/utils/LanguageUtils;->sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;

    return-object v0
.end method

.method public static initInstance(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 56
    .local p0, "availableLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    const-string v0, "[LanguageUtils]::[initInstance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/showmax/lib/api/utils/LanguageUtils;->sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "[LanguageUtils]::[initInstance]::[sInstance is null, create a new instance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/showmax/lib/api/utils/LanguageUtils;

    invoke-direct {v0}, Lcom/showmax/lib/api/utils/LanguageUtils;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/utils/LanguageUtils;->sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;

    .line 64
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/utils/LanguageUtils;->sInstance:Lcom/showmax/lib/api/utils/LanguageUtils;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/utils/LanguageUtils;->setAvailableLanguages(Ljava/util/ArrayList;)V

    .line 65
    return-void
.end method

.method private setAvailableLanguages(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 89
    .local p1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 4
    .param p1, "appLanguage"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    .line 113
    .local v0, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    .end local v0    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/ArrayList;
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
    .line 98
    iget-object v0, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isArabic(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrench(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->FRA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseLanguage(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 142
    :goto_0
    return-object v0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/showmax/lib/api/utils/LanguageUtils;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    .line 137
    .local v0, "l":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "l":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_3
    move-object v0, v1

    .line 142
    goto :goto_0
.end method
