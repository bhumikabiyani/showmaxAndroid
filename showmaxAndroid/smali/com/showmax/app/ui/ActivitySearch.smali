.class public Lcom/showmax/app/ui/ActivitySearch;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivitySearch.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
    }
.end annotation


# static fields
.field public static final ARGS_INITIAL_ASSET_TYPE:Ljava/lang/String; = "args.initial.asset.type"

.field public static final ARGS_INITIAL_CATEGORY:Ljava/lang/String; = "args.initial.category"

.field public static final ARGS_INITIAL_SEARCH_QUERY:Ljava/lang/String; = "args.initial.search.query"

.field public static final ARGS_INITIAL_SECTION:Ljava/lang/String; = "args.initial.section"

.field public static final SAVED_STATE_SEARCH_RESULT:Ljava/lang/String; = "saved.state.search.result"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableAssetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

.field private mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

.field private mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

.field private mSearchOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Lcom/showmax/app/ui/widget/SearchView;

.field private mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

.field private mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field private mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/showmax/app/ui/ActivitySearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySearch$1;-><init>(Lcom/showmax/app/ui/ActivitySearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchTextWatcher:Landroid/text/TextWatcher;

    .line 323
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySearch$2;-><init>(Lcom/showmax/app/ui/ActivitySearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 338
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySearch$3;-><init>(Lcom/showmax/app/ui/ActivitySearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 347
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySearch$4;-><init>(Lcom/showmax/app/ui/ActivitySearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    .line 488
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$6;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySearch$6;-><init>(Lcom/showmax/app/ui/ActivitySearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    .line 586
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivitySearch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySearch;->startSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySearch;->submitSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivitySearch;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivitySearch;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/showmax/app/ui/ActivitySearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    return-object v0
.end method

.method static synthetic access$702(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    return-object p1
.end method

.method static synthetic access$800(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object v0
.end method

.method static synthetic access$802(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object p1
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    return-object v0
.end method

.method static synthetic access$902(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    return-object p1
.end method

.method private cancelLastSearchCallback()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->cancel()V

    .line 435
    :cond_0
    return-void
.end method

.method private fixQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 424
    const-string v0, ""

    .line 426
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNewSearchCallback(Ljava/lang/String;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v0, Lcom/showmax/app/ui/ActivitySearch$5;

    invoke-direct {v0, p0, p1}, Lcom/showmax/app/ui/ActivitySearch$5;-><init>(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    .line 465
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 6

    .prologue
    .line 471
    const-string v2, "[%s]::[hideKeyboard]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/ActivitySearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 474
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 479
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 378
    const-string v1, "args.initial.search.query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    .line 379
    const-string v1, "args.initial.section"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Section;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 380
    const-string v1, "args.initial.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 381
    const-string v1, "args.initial.asset.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 383
    :cond_0
    if-eqz p1, :cond_1

    .line 385
    const-string v1, "saved.state.search.result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    .line 387
    :cond_1
    return-void
.end method

.method private loadCategories()V
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/showmax/app/io/DataManager;->getInstance()Lcom/showmax/app/io/DataManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/io/DataManager;->fetchCategories(Lcom/showmax/lib/api/model/catalogue/Section;Z)V

    .line 371
    return-void
.end method

.method private showFilterDialog()V
    .locals 10

    .prologue
    .line 512
    const-string v1, "[%s]::[showFilterDialog]::[section: %s]::[category: %s]::[searchType: %s]"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    move-result-object v0

    const/16 v2, 0x40

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableSections:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v5, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableCategories:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v7, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableAssetTypes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v9, p0, Lcom/showmax/app/ui/ActivitySearch;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->showFilterDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Section;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;)V

    .line 524
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private showKeyboard()V
    .locals 4

    .prologue
    .line 484
    const-string v0, "[%s]::[showKeyboard]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 486
    return-void
.end method

.method public static startSearchActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "sourceContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-static {p0, v0, v0, v0, v0}, Lcom/showmax/app/ui/ActivitySearch;->startSearchActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 281
    return-void
.end method

.method public static startSearchActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 5
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p4, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 285
    const-string v1, "[%s]::[startSearchActivity]::[query: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.initial.search.query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "args.initial.section"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    const-string v1, "args.initial.category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    const-string v1, "args.initial.asset.type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method private startSearchQuery(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 397
    const-string v0, "[%s]::[startSearchQuery]::[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySearch;->fixQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "fixedQuery":Ljava/lang/String;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySearch;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 403
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->cancelLastSearchCallback()V

    .line 405
    iput-object v8, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    const v1, 0x7f0d00b8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showMessage(I)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showProgressbar()V

    .line 413
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v5, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    .line 414
    invoke-direct {p0, v2}, Lcom/showmax/app/ui/ActivitySearch;->getNewSearchCallback(Ljava/lang/String;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    move-result-object v7

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 413
    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 415
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private submitSearchQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySearch;->startSearchQuery(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->hideKeyboard()V

    .line 393
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavSearch(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivitySearch;->setHasSlidingMenu(Z)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/showmax/app/ui/ActivitySearch;->setHasToolbar(ZZ)V

    .line 103
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySearch;->setContentView(I)V

    .line 105
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySearch;->initData(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentSearch;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b00aa

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 126
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/showmax/app/ui/fragment/FragmentSearch;->newInstance()Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 210
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0f0002

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 213
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    .line 215
    .local v2, "sortOption":Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_0

    .line 217
    const v3, 0x7f0b01d7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 231
    .local v1, "menuItem":Landroid/view/MenuItem;
    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 232
    return v4

    .line 219
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_1

    .line 221
    const v3, 0x7f0b01d8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 223
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_2

    .line 225
    const v3, 0x7f0b01d6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 229
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    const v3, 0x7f0b01d5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0
.end method

.method public onEvent(Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 547
    const-string v2, "[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getMovieCategories()Ljava/util/ArrayList;

    move-result-object v0

    .line 552
    .local v0, "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getTvSeriesCategories()Ljava/util/ArrayList;

    move-result-object v1

    .line 554
    .local v1, "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-nez v0, :cond_3

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .restart local v0    # "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v1    # "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableCategories:Ljava/util/ArrayList;

    .line 575
    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    .end local v0    # "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .end local v1    # "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_2
    return-void

    .line 558
    .restart local v0    # "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .restart local v1    # "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 571
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 243
    :pswitch_0
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 247
    :pswitch_1
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 251
    :pswitch_2
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 255
    :pswitch_3
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    .line 259
    :pswitch_4
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->showFilterDialog()V

    move v1, v0

    .line 260
    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01d5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onPause()V

    .line 186
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/ActionBarHelper;->showSearch()Lcom/showmax/app/ui/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    .line 135
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 137
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->setSearchViewListener(Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;)V

    .line 139
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/SearchView;->requestFocus()Z

    .line 142
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->getAvailableSections()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableSections:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableAssetTypes:Ljava/util/ArrayList;

    .line 144
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableAssetTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mAvailableAssetTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->loadCategories()V

    .line 148
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySearch;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivitySearch;->submitSearchQuery(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/SearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 180
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "saved.state.search.result"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public onScrollStateChanged(Z)V
    .locals 0
    .param p1, "isScrolling"    # Z

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySearch;->hideKeyboard()V

    .line 536
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 161
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 202
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 203
    return-void
.end method
