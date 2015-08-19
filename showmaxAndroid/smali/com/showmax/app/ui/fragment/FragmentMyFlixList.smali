.class public Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
.super Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.source "FragmentMyFlixList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;
    }
.end annotation


# static fields
.field private static final ARGS_USERLIST_ASSETS:Ljava/lang/String; = "args.userlist.assets"

.field private static final ARGS_USERLIST_TYPE:Ljava/lang/String; = "args.userlist.type"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentMyFlixListListener:Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;

.field private mUserlistType:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;-><init>()V

    .line 36
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 218
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.userlist.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->fromOrdinal(I)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mUserlistType:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    .line 219
    const-string v1, "args.userlist.assets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mAssets:Ljava/util/ArrayList;

    .line 221
    if-eqz p1, :cond_0

    .line 225
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    .locals 4
    .param p0, "userListType"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    .prologue
    .line 148
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;-><init>()V

    .line 149
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args.userlist.type"

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->setArguments(Landroid/os/Bundle;)V

    .line 152
    return-object v1
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/util/ArrayList;)Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    .locals 4
    .param p0, "userListType"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)",
            "Lcom/showmax/app/ui/fragment/FragmentMyFlixList;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;-><init>()V

    .line 158
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args.userlist.type"

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v2, "args.userlist.assets"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v1
.end method


# virtual methods
.method public getNoDataMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mUserlistType:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgressBarId()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f0b0109

    return v0
.end method

.method public getRecyclerViewId()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f0b010a

    return v0
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mAssets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mFragmentMyFlixListListener:Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onAttach(Landroid/app/Activity;)V

    .line 75
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Activity must implement fragment\'s callbacks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->initData(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onDetach()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mFragmentMyFlixListListener:Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;

    .line 126
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 202
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->refreshSubscriptionStatus()V

    .line 207
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStart()V

    .line 111
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStop()V

    .line 118
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 186
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 188
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 190
    return-object v0
.end method
