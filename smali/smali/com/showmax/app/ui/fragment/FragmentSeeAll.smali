.class public Lcom/showmax/app/ui/fragment/FragmentSeeAll;
.super Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;
.source "FragmentSeeAll.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;-><init>()V

    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 186
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    .locals 6

    .prologue
    .line 150
    const-string v2, "[%s]::[newInstance]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;-><init>()V

    .line 152
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->setArguments(Landroid/os/Bundle;)V

    .line 154
    return-object v1
.end method


# virtual methods
.method public getAbsListViewId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0b010f

    return v0
.end method

.method public getAdapter()Lcom/showmax/app/model/adapter/BaseAssetAdapter;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getNoDataMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarId()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f0b010e

    return v0
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->setHasOptionsMenu(Z)V

    .line 54
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->initData(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 166
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->refreshSubscriptionStatus()V

    .line 171
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string v1, "[%s]::[onOptionsItemSelected]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 91
    :pswitch_0
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 97
    :pswitch_2
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 100
    :pswitch_3
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01d5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 68
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->onStart()V

    .line 74
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->onStop()V

    .line 81
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
