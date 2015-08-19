.class Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ActivityMyFlix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMyFlix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFlixPagerAdapter"
.end annotation


# static fields
.field public static final PAGE_COUNT:I = 0x2

.field public static final PAGE_POSITION_MY_FLIX_BOOKMARKS:I = 0x1

.field public static final PAGE_POSITION_MY_FLIX_RECENTLY_WATCHED:I


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragmentTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/showmax/app/ui/ActivityMyFlix;


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/ActivityMyFlix;)V
    .locals 1

    .prologue
    .line 354
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    .line 355
    invoke-virtual {p1}, Lcom/showmax/app/ui/ActivityMyFlix;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 357
    invoke-virtual {p1}, Lcom/showmax/app/ui/ActivityMyFlix;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->mFragmentTags:Ljava/util/Map;

    .line 359
    return-void
.end method

.method private resolveRtlDirection(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-static {v1}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 435
    .local v0, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    if-ne v0, v1, :cond_0

    .line 437
    rsub-int/lit8 v1, p1, 0x2

    add-int/lit8 p1, v1, -0x1

    .line 439
    .end local p1    # "position":I
    :cond_0
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x2

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 418
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method public getFragmentBookmarks()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->resolveRtlDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    return-object v0
.end method

.method public getFragmentRecentlyWatched()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->resolveRtlDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->resolveRtlDirection(I)I

    move-result v2

    .line 382
    .local v2, "rtlPosition":I
    if-nez v2, :cond_1

    .line 384
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # invokes: Lcom/showmax/app/ui/ActivityMyFlix;->getRecentlyWatchedAsset()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityMyFlix;->access$500(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/ArrayList;

    move-result-object v1

    .line 385
    .local v1, "recentlyWatched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    if-nez v1, :cond_0

    .line 387
    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v3, v1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/util/ArrayList;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v3

    .line 396
    .end local v1    # "recentlyWatched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :goto_0
    return-object v3

    .line 389
    .restart local v1    # "recentlyWatched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_0
    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v3}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v3

    goto :goto_0

    .line 391
    .end local v1    # "recentlyWatched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # invokes: Lcom/showmax/app/ui/ActivityMyFlix;->getBookmarksAssets()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityMyFlix;->access$600(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/ArrayList;

    move-result-object v0

    .line 392
    .local v0, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    if-nez v0, :cond_2

    .line 394
    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v3, v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/util/ArrayList;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v3

    goto :goto_0

    .line 396
    :cond_2
    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v3}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v3

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->resolveRtlDirection(I)I

    move-result v0

    .line 371
    .local v0, "rtlPosition":I
    if-nez v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    const v2, 0x7f0d00c0

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/ActivityMyFlix;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    const v2, 0x7f0d00db

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/ActivityMyFlix;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 406
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 407
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
