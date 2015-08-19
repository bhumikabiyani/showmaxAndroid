.class public Lcom/showmax/app/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMyFlixButton(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/view/View;I)V
    .locals 3
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "container"    # Landroid/view/View;
    .param p2, "myFlixBtnId"    # I

    .prologue
    .line 89
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 94
    .local v1, "myFlixBtn":Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    .line 98
    .local v0, "isSignedIn":Z
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/showmax/app/util/UiUtils;->isAssetBookmarked(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 113
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    goto :goto_0

    .line 106
    :cond_2
    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public static checkPlayButton(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/view/View;I)V
    .locals 4
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "container"    # Landroid/view/View;
    .param p2, "playBtnId"    # I

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/showmax/app/ui/widget/PlayButton;

    .line 68
    .local v2, "playBtn":Lcom/showmax/app/ui/widget/PlayButton;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 71
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v1

    .line 72
    .local v1, "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v1, :cond_2

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    .line 75
    invoke-virtual {v2, p0}, Lcom/showmax/app/ui/widget/PlayButton;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_1
    const-string v3, "8.00 $"

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/PlayButton;->showPurchaseButton(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/showmax/app/ui/widget/PlayButton;->invalidate()V

    goto :goto_0

    .line 79
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public static checkTrailerButton(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/view/View;I)V
    .locals 4
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "container"    # Landroid/view/View;
    .param p2, "trailerBtnId"    # I

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "trailerBtn":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 46
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v2

    .line 47
    .local v2, "trailerVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v2, :cond_2

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 54
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static isAssetBookmarked(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 122
    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {p0, v1}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v0

    .line 123
    .local v0, "bookmarks":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->contains(Lcom/showmax/lib/api/model/catalogue/Asset;)Z

    move-result v1

    .line 128
    .end local v0    # "bookmarks":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setTextAndEllipsize(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxLinesCount"    # I

    .prologue
    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/util/UiUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/showmax/app/util/UiUtils$1;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static showNotImplementedYetToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v0, "Not implemented yet."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method public static showNotSignedInToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const v0, 0x7f0d00ae

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method
