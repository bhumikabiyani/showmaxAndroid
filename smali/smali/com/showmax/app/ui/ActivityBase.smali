.class public abstract Lcom/showmax/app/ui/ActivityBase;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
.implements Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;


# static fields
.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_MY_ACCOUNT:I = 0x93

.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN:I = 0x4b

.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_MY_ACCOUNT:I = 0x21

.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_MY_FLIX:I = 0x22


# instance fields
.field protected mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

.field private mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

.field private mHasSlidingMenu:Z

.field private mHasTabs:Z

.field private mHasToolbar:Z

.field private mIsSignedIn:Z

.field private mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

.field private mRestoringState:Z

.field protected mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

.field private mTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mRestoringState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBase;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentLocaleLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getSuccessorLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".BASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAuthStatusChanged()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ShowMaxApp;->getBrandingPartner()Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/ActionBarHelper;->setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V

    .line 725
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;

    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;-><init>(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 726
    return-void
.end method

.method private initSlidingMenu()V
    .locals 5

    .prologue
    .line 695
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    .line 696
    .local v0, "app":Lcom/showmax/app/ShowMaxApp;
    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->getAvailableSections()Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    .local v1, "availableSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v2

    .line 698
    .local v2, "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v3

    .line 700
    .local v3, "signedIn":Z
    new-instance v4, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-direct {v4, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    .line 701
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v4, v1, v2, v3, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setMenuItems(Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Section;ZLcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;)V

    .line 702
    return-void
.end method

.method private performBackClick()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 683
    const-string v0, "[ActivityBase]::[performBackClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 684
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 685
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 686
    return-void
.end method

.method private reinitSlidingMenuAuthStatus()V
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    if-eqz v1, :cond_0

    .line 708
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    .line 709
    .local v0, "isUserSignedIn":Z
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setSignedIn(Z)V

    .line 711
    .end local v0    # "isUserSignedIn":Z
    :cond_0
    return-void
.end method

.method private signIn()Z
    .locals 15

    .prologue
    const/4 v12, 0x3

    const/4 v14, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 732
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/showmax/app/ShowMaxApp;->getAuthenticationFinishedEvent()Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

    move-result-object v3

    .line 733
    .local v3, "event":Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->getData()Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    move v9, v10

    .line 770
    :goto_0
    return v9

    .line 738
    :cond_1
    invoke-virtual {v3}, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->getData()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v11}, Lcom/showmax/app/ui/ActivityAuthentication;->parseResultIntent(Landroid/content/Intent;)[Ljava/lang/Object;

    move-result-object v0

    .line 740
    .local v0, "accessData":[Ljava/lang/Object;
    aget-object v1, v0, v10

    check-cast v1, Ljava/lang/String;

    .line 741
    .local v1, "accessToken":Ljava/lang/String;
    aget-object v6, v0, v9

    check-cast v6, Ljava/lang/String;

    .line 742
    .local v6, "secureToken":Ljava/lang/String;
    aget-object v4, v0, v14

    check-cast v4, Ljava/lang/String;

    .line 743
    .local v4, "expiration":Ljava/lang/String;
    aget-object v7, v0, v12

    check-cast v7, Lcom/showmax/lib/api/model/user/UserProfile;

    .line 744
    .local v7, "userProfile":Lcom/showmax/lib/api/model/user/UserProfile;
    const/4 v11, 0x4

    aget-object v8, v0, v11

    check-cast v8, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    .line 745
    .local v8, "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    const/4 v11, 0x5

    aget-object v2, v0, v11

    check-cast v2, Lcom/showmax/lib/api/model/user/BrandingPartner;

    .line 747
    .local v2, "brandingPartner":Lcom/showmax/lib/api/model/user/BrandingPartner;
    const-string v11, "[%s]::[signIn]::[userId: %s]::[accessToken: %s]"

    new-array v12, v12, [Ljava/lang/Object;

    .line 749
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    iget-object v10, v7, Lcom/showmax/lib/api/model/user/UserProfile;->userId:Ljava/lang/String;

    aput-object v10, v12, v9

    aput-object v1, v12, v14

    .line 747
    invoke-static {v11, v12}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1, v6, v4}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserAccessData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v7, Lcom/showmax/lib/api/model/user/UserProfile;->userId:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v7, Lcom/showmax/lib/api/model/user/UserProfile;->email:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v10

    iget-object v11, v7, Lcom/showmax/lib/api/model/user/UserProfile;->subscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    invoke-virtual {v10, v11}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    .line 756
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/showmax/app/ShowMaxApp;->setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V

    .line 758
    iget-object v10, v8, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .line 760
    .local v5, "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V

    goto :goto_1

    .line 763
    .end local v5    # "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    :cond_2
    iput-boolean v9, p0, Lcom/showmax/app/ui/ActivityBase;->mIsSignedIn:Z

    .line 766
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onSignIn(Landroid/content/Context;)V

    .line 768
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->reinitSlidingMenuAuthStatus()V

    .line 769
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->handleAuthStatusChanged()V

    goto/16 :goto_0
.end method

.method private signOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->removeUserAccessData(Landroid/content/Context;)V

    .line 776
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/UserApi;->removeAuthCookies()V

    .line 777
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ShowMaxApp;->setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V

    .line 778
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    .line 779
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->reinitSlidingMenuAuthStatus()V

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mIsSignedIn:Z

    .line 782
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->handleAuthStatusChanged()V

    .line 785
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onSignOut(Landroid/content/Context;)V

    .line 786
    return-void
.end method


# virtual methods
.method public applyLanguage(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V
    .locals 3
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 349
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 350
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 351
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 352
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/showmax/app/util/MauFlurry;->onLanguageSwitch(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method protected abstract getSuccessorLogTag()Ljava/lang/String;
.end method

.method public hideActionBarLogo()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/ActionBarHelper;->hideLogo()V

    .line 530
    :cond_0
    return-void
.end method

.method public hideProgress()V
    .locals 4

    .prologue
    .line 425
    const-string v0, "[%s]::[hideProgress]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->hideProgress()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .line 431
    :cond_0
    return-void
.end method

.method public isAssetBookmarked(Lcom/showmax/lib/api/model/catalogue/Asset;)Z
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 388
    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {p0, v1}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v0

    .line 389
    .local v0, "bookmarks":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->contains(Lcom/showmax/lib/api/model/catalogue/Asset;)Z

    move-result v1

    .line 394
    .end local v0    # "bookmarks":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z
    .locals 4
    .param p1, "fragment"    # Lcom/showmax/app/ui/fragment/FragmentBase;

    .prologue
    const/4 v0, 0x0

    .line 370
    if-eqz p1, :cond_0

    .line 371
    const-string v1, "[%s]::[isFragmentVisible]::[isAdded? %b]::[isInLayout %b]::[isVisible %b]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->isAdded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 372
    invoke-virtual {p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->isInLayout()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->isVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 371
    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->isAdded()Z

    move-result v0

    .line 375
    :cond_0
    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestoringState()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mRestoringState:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mTablet:Z

    return v0
.end method

.method public isUserSignedIn()Z
    .locals 1

    .prologue
    .line 380
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    const/16 v0, 0x93

    if-ne p2, v0, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->signIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->startMyAccountActivity()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->startMyFlixActivity()V

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, "[%s]::[onActivityResult]::[auth failed]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->signOut()V

    goto :goto_0

    .line 255
    :cond_3
    const/16 v0, 0x4b

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa6

    if-ne p2, v0, :cond_0

    .line 257
    :cond_4
    const-string v0, "[%s]::[onActivityResult]::[auth failed]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->signOut()V

    goto :goto_0
.end method

.method public onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 656
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    sget-object v0, Lcom/showmax/app/ui/ActivityBase$2;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type:[I

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 665
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->startAssetDetailActivity(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startTvSeriesDetailActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startTvSeriesDetailActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->toggleMenu()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContactUsClick()V
    .locals 4

    .prologue
    .line 610
    const-string v0, "[%s]::[onContactUsClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    invoke-static {p0}, Lcom/showmax/app/ui/ActivityChat;->startChatActivity(Landroid/content/Context;)V

    .line 612
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const-string v3, "[%s]::[onCreate]::[savedInstanceState: %s]::[%s]"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    if-eqz p1, :cond_0

    const-string v0, "not null"

    :goto_0
    aput-object v0, v4, v1

    const/4 v0, 0x2

    .line 106
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 105
    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mRestoringState:Z

    .line 111
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 112
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->applyLanguage(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V

    .line 114
    invoke-static {p0}, Lcom/showmax/app/util/MauUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mTablet:Z

    .line 115
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mIsSignedIn:Z

    .line 116
    return-void

    .line 105
    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 267
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 196
    const-string v0, "[%s]::[onDestroy]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onHelpClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 585
    const-string v0, "[%s]::[onHelpClick]"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    const/16 v0, 0x3ec

    invoke-static {p0, v0, v4}, Lcom/showmax/app/ui/ActivityTutorial;->startTutorialActivity(Landroid/app/Activity;IZ)V

    .line 587
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 217
    const-string v1, "[%s]::[onKeyUp]::[keyCode: %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->toggleSlidingMenu()V

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuClosed()V
    .locals 4

    .prologue
    .line 641
    const-string v0, "[%s]::[onMenuClosed]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavMenuCollapse(Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method public onMenuOpened()V
    .locals 4

    .prologue
    .line 632
    const-string v0, "[%s]::[onMenuOpened]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavMenuExpand(Landroid/content/Context;)V

    .line 636
    return-void
.end method

.method public onMoviesClick()V
    .locals 4

    .prologue
    .line 556
    const-string v0, "[%s]::[onMoviesClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startAssetGridActivity(Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 558
    return-void
.end method

.method public onMyAccountClick()V
    .locals 4

    .prologue
    .line 617
    const-string v0, "[%s]::[onMyAccountClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->startMyAccountActivity()V

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/app/util/UiUtils;->showNotSignedInToast(Landroid/content/Context;)V

    .line 625
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startSignInActivity(I)V

    goto :goto_0
.end method

.method public onMyFlixClick()V
    .locals 4

    .prologue
    .line 570
    const-string v0, "[%s]::[onMyFlixClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->startMyFlixActivity()V

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/app/util/UiUtils;->showNotSignedInToast(Landroid/content/Context;)V

    .line 578
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startSignInActivity(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 283
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 277
    :sswitch_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->finish()V

    goto :goto_0

    .line 280
    :sswitch_1
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->startSearchActivity()V

    goto :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b01d3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 174
    const-string v0, "[%s]::[onPause]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 176
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->startActivityTransitionTimer()V

    .line 177
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const-string v0, "[%s]::[onPostCreate]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const-string v0, "[%s]::[onRestoreInstanceState]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 135
    const-string v2, "[%s]::[onResume]::[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/app/ui/ActivityBase;->mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 142
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBase;->mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBase;->mCachedLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/ActivityBase;->applyLanguage(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v1

    .line 148
    .local v1, "signedIn":Z
    iget-boolean v2, p0, Lcom/showmax/app/ui/ActivityBase;->mIsSignedIn:Z

    if-eq v1, v2, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->reinitSlidingMenuAuthStatus()V

    .line 151
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->handleAuthStatusChanged()V

    .line 154
    :cond_1
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    .line 155
    .local v0, "sApp":Lcom/showmax/app/ShowMaxApp;
    iget-boolean v2, v0, Lcom/showmax/app/ShowMaxApp;->wasInBackground:Z

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->recheckSubcriptionState()V

    .line 159
    :cond_2
    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->stopActivityTransitionTimer()V

    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 162
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    const-string v0, "[%s]::[onSaveInstanceState]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onSectionItemClick(Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 5
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    const/4 v4, 0x1

    .line 547
    const-string v0, "[%s]::[onSectionItemClick]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-static {p0, p1}, Lcom/showmax/lib/api/utils/UserPrefs;->setCurrentSection(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Section;)V

    .line 549
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Section;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToSection(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/showmax/app/ui/ActivityBase;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    .line 551
    return-void
.end method

.method public onSignInClick()V
    .locals 4

    .prologue
    .line 592
    const-string v0, "[%s]::[onSignInClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavSignIn(Landroid/content/Context;)V

    .line 597
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startSignInActivity(I)V

    .line 598
    return-void
.end method

.method public onSignOutClick()V
    .locals 4

    .prologue
    .line 603
    const-string v0, "[%s]::[onSignOutClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->signOut()V

    .line 605
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 122
    const-string v0, "[%s]::[onStart]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 189
    const-string v0, "[%s]::[onStop]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 191
    return-void
.end method

.method public onTvSeriesClick()V
    .locals 4

    .prologue
    .line 563
    const-string v0, "[%s]::[onTvSeriesClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startAssetGridActivity(Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 565
    return-void
.end method

.method protected recheckSubcriptionState()V
    .locals 5

    .prologue
    .line 790
    iget-boolean v2, p0, Lcom/showmax/app/ui/ActivityBase;->mIsSignedIn:Z

    if-nez v2, :cond_0

    .line 813
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "accessdata":[Ljava/lang/String;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v1

    .line 798
    .local v1, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    new-instance v4, Lcom/showmax/app/ui/ActivityBase$1;

    invoke-direct {v4, p0}, Lcom/showmax/app/ui/ActivityBase$1;-><init>(Lcom/showmax/app/ui/ActivityBase;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/showmax/lib/api/io/UserApi;->loadUserDetail(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public restartApp()V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/showmax/app/io/DataManager;->getInstance()Lcom/showmax/app/io/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/io/DataManager;->clearCache()V

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivitySplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 312
    instance-of v0, p0, Lcom/showmax/app/ui/ActivityPlayer;

    if-eqz v0, :cond_1

    .line 314
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mHasToolbar:Z

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lcom/showmax/app/util/ActionBarHelper;

    invoke-direct {v0}, Lcom/showmax/app/util/ActionBarHelper;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    .line 332
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    iget-boolean v1, p0, Lcom/showmax/app/ui/ActivityBase;->mHasTabs:Z

    invoke-virtual {v0, p0, p1, v1}, Lcom/showmax/app/util/ActionBarHelper;->appendActionBar(Landroid/support/v7/app/AppCompatActivity;IZ)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 340
    :goto_1
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityBase;->mHasSlidingMenu:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->initSlidingMenu()V

    goto :goto_0

    .line 336
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1
.end method

.method public setHasSlidingMenu(Z)V
    .locals 0
    .param p1, "hasSlidingMenu"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/showmax/app/ui/ActivityBase;->mHasSlidingMenu:Z

    .line 298
    return-void
.end method

.method public setHasToolbar(ZZ)V
    .locals 0
    .param p1, "hasToolbar"    # Z
    .param p2, "hasTabs"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/showmax/app/ui/ActivityBase;->mHasToolbar:Z

    .line 306
    iput-boolean p2, p0, Lcom/showmax/app/ui/ActivityBase;->mHasTabs:Z

    .line 307
    return-void
.end method

.method public showProgress(Lcom/showmax/lib/api/io/ApiCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "cancelableCallback":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<*>;"
    const-string v0, "[%s]::[showProgress]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->hideProgress()V

    .line 419
    :cond_0
    invoke-static {}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .line 420
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mProgressDialogHelper:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-virtual {v0, p0, p1}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Lcom/showmax/lib/api/io/ApiCallback;)V

    .line 421
    return-void
.end method

.method public startAssetDetailActivity(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 0
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 488
    invoke-static {p0, p1}, Lcom/showmax/app/ui/ActivityAssetDetail;->startAssetDetailActivity(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 489
    return-void
.end method

.method public startAssetDetailActivity(Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 493
    invoke-static {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAssetDetail;->startAssetDetailActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 494
    return-void
.end method

.method public startAssetGridActivity(Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 446
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne p1, v0, :cond_0

    .line 448
    invoke-static {p0}, Lcom/showmax/app/ui/ActivityAssetList;->startMovieAssetGridActivity(Landroid/content/Context;)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-static {p0}, Lcom/showmax/app/ui/ActivityAssetList;->startTvSeriesAssetGridActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V
    .locals 0
    .param p1, "finish"    # Z
    .param p2, "deeplinkAsset"    # Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    .prologue
    .line 441
    invoke-static {p0, p1, p2}, Lcom/showmax/app/ui/ActivityMain;->startActivityMain(Landroid/support/v4/app/FragmentActivity;ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    .line 442
    return-void
.end method

.method public startMyAccountActivity()V
    .locals 4

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v1

    .line 460
    .local v1, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/showmax/lib/api/io/UserApi;->getMyAccountWebPageUrl(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "myAccountUrl":Ljava/lang/String;
    const/16 v3, 0x93

    invoke-static {v3, p0, v2}, Lcom/showmax/app/ui/ActivityMyAccount;->startMyAccountActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToMyAccount()V

    .line 463
    return-void
.end method

.method public startMyFlixActivity()V
    .locals 1

    .prologue
    .line 467
    invoke-static {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->startMyFlixActivity(Landroid/content/Context;)V

    .line 468
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToMyFlix()V

    .line 469
    return-void
.end method

.method public startSearchActivity()V
    .locals 0

    .prologue
    .line 473
    invoke-static {p0}, Lcom/showmax/app/ui/ActivitySearch;->startSearchActivity(Landroid/content/Context;)V

    .line 474
    return-void
.end method

.method public startSearchActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-static {p0, p1, v0, v0, v0}, Lcom/showmax/app/ui/ActivitySearch;->startSearchActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 479
    return-void
.end method

.method public startSearchActivity(Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p4, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 483
    invoke-static {p0, p1, p2, p3, p4}, Lcom/showmax/app/ui/ActivitySearch;->startSearchActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 484
    return-void
.end method

.method public startSeeAllActivity(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 0
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 508
    invoke-static {p0, p1, p2}, Lcom/showmax/app/ui/ActivitySeeAll;->startSeeAllActivity(Landroid/content/Context;Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 509
    return-void
.end method

.method public startSignInActivity(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/io/UserApi;->getSignInPageUrl(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "authUrl":Ljava/lang/String;
    invoke-static {p1, p0, v0}, Lcom/showmax/app/ui/ActivityAuthentication;->startAuthActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public startTvSeriesDetailActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "tvSeriesId"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/showmax/app/ui/ActivityBase;->startTvSeriesDetailActivity(Ljava/lang/String;I)V

    .line 499
    return-void
.end method

.method public startTvSeriesDetailActivity(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tvSeriesId"    # Ljava/lang/String;
    .param p2, "seasonToShow"    # I

    .prologue
    .line 503
    invoke-static {p0, p1, p2}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->startTvSeriesDetailActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 504
    return-void
.end method

.method public toggleSlidingMenu()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBase;->mSlidingMenuHelper:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->toggleMenu()V

    .line 366
    :cond_0
    return-void
.end method
