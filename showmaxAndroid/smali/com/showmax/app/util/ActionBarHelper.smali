.class public Lcom/showmax/app/util/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# static fields
.field private static final AB_IC_BACK_RES_ID:I = 0x7f020081

.field private static final AB_IC_NAVIGATION_DRAWER_RES_ID:I = 0x7f020083

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mDebugStrip:Landroid/view/View;

.field private mHasTabs:Z

.field private mLogo:Landroid/widget/ImageView;

.field private mSearchView:Lcom/showmax/app/ui/widget/SearchView;

.field private mTablet:Z

.field private mTabs:Landroid/support/design/widget/TabLayout;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/ActionBarHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public appendActionBar(Landroid/support/v7/app/AppCompatActivity;IZ)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "layoutResId"    # I
    .param p3, "hasTabs"    # Z

    .prologue
    const v7, 0x7f0900ab

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-static {p1}, Lcom/showmax/app/util/MauUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mTablet:Z

    .line 59
    iput-boolean p3, p0, Lcom/showmax/app/util/ActionBarHelper;->mHasTabs:Z

    .line 61
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 62
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mHasTabs:Z

    if-eqz v3, :cond_1

    const v3, 0x7f030026

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 63
    .local v2, "rootWrapper":Landroid/view/ViewGroup;
    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v1, p2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    const v3, 0x7f0b00b7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mTabs:Landroid/support/design/widget/TabLayout;

    .line 67
    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 68
    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mLogo:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/showmax/app/ui/widget/SearchView;

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    .line 70
    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mDebugStrip:Landroid/view/View;

    .line 72
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 74
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    instance-of v3, p1, Lcom/showmax/app/ui/ActivityMain;

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v3

    iget-boolean v3, v3, Lcom/showmax/app/Build;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mDebugStrip:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_2
    return-object v2

    .line 62
    .end local v0    # "content":Landroid/view/ViewGroup;
    .end local v2    # "rootWrapper":Landroid/view/ViewGroup;
    :cond_1
    const v3, 0x7f030025

    goto/16 :goto_0

    .line 83
    .restart local v0    # "content":Landroid/view/ViewGroup;
    .restart local v2    # "rootWrapper":Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v4, 0x7f020081

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/showmax/app/util/ActionBarHelper;->mDebugStrip:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public getTabs()Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mTabs:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method public hideLogo()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 111
    return-void
.end method

.method public setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V
    .locals 0
    .param p1, "brandingPartner"    # Lcom/showmax/lib/api/model/user/BrandingPartner;

    .prologue
    .line 130
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/showmax/app/util/ActionBarHelper;->hideLogo()V

    .line 123
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 125
    return-void
.end method

.method public showSearch()Lcom/showmax/app/ui/widget/SearchView;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/showmax/app/util/ActionBarHelper;->hideLogo()V

    .line 116
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/SearchView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/showmax/app/util/ActionBarHelper;->mSearchView:Lcom/showmax/app/ui/widget/SearchView;

    return-object v0
.end method
