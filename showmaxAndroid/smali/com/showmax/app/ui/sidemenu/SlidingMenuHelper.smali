.class public Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field public static final RES_DIMEN_MENU_WIDTH:I = 0x7f0a00e5

.field public static final RES_DRAWABLE_MENU_BG_PHONE:I = 0x7f020047

.field public static final RES_DRAWABLE_MENU_BG_TABLET:I = 0x7f020050

.field public static final RES_LAYOUT_MENU:I = 0x7f030084

.field public static final RES_VIEW_MENU_INFO:I = 0x7f0b018e


# instance fields
.field private mInfoTv:Landroid/widget/TextView;

.field private mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

.field private mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field private mMenuItemContactUs:Landroid/view/View;

.field private mMenuItemHelp:Landroid/view/View;

.field private mMenuItemMovies:Landroid/view/View;

.field private mMenuItemMyAccount:Landroid/view/View;

.field private mMenuItemSeries:Landroid/view/View;

.field private mMenuItemSignIn:Landroid/view/View;

.field private mMenuItemSignOut:Landroid/view/View;

.field private mMenuItemWatchlist:Landroid/view/View;

.field private mOnCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

.field private mOnClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mOnOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

.field private mOnSectionItemClickListener:Landroid/view/View$OnClickListener;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionsContainer:Landroid/widget/LinearLayout;

.field private mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnSectionItemClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 110
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 111
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 113
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidthRes(I)V

    .line 114
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 115
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030084

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 116
    invoke-static {p1}, Lcom/showmax/app/util/MauUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBackgroundResource(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b0185

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b0186

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemMovies:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSeries:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemWatchlist:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemMyAccount:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemHelp:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignIn:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignOut:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemContactUs:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mInfoTv:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mInfoTv:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/showmax/app/util/MauUtils;->setVersionNumber(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 137
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initListeners()V

    .line 138
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;
    .param p1, "x1"    # Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setSectionItemChecked(Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    return-object v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    return-object p1
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    return-object v0
.end method

.method private inflateSectionItem(Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    .locals 7
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    const/4 v6, 0x0

    .line 198
    iget-object v3, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030056

    iget-object v5, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    .line 201
    .local v0, "menuItem":Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    const v3, 0x7f0b0151

    invoke-virtual {v0, v3}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    .local v2, "tvIcon":Landroid/widget/TextView;
    const v3, 0x7f0b0152

    invoke-virtual {v0, v3}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, "title":Landroid/widget/TextView;
    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/app/util/StringUtils;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-object v0
.end method

.method private initListeners()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnOpenedListener()V

    .line 282
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnOpenListener()V

    .line 283
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnClosedListener()V

    .line 284
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnCloseListener()V

    .line 285
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnMenuItemClickListener()V

    .line 286
    return-void
.end method

.method private initOnCloseListener()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$6;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$6;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .line 335
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V

    .line 336
    return-void
.end method

.method private initOnClosedListener()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$5;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$5;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .line 323
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 324
    return-void
.end method

.method private initOnMenuItemClickListener()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemMovies:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSeries:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemWatchlist:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemMyAccount:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemHelp:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignIn:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignOut:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemContactUs:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method

.method private initOnOpenListener()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$4;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 310
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V

    .line 311
    return-void
.end method

.method private initOnOpenedListener()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$3;-><init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .line 298
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 299
    return-void
.end method

.method private setSectionItemChecked(Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V
    .locals 3
    .param p1, "checkedItem"    # Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    .line 225
    .local v1, "item":Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "item":Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 228
    return-void
.end method

.method private showSignIn()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignIn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignOut:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private showSignOut()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignIn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenuItemSignOut:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public isMenuShown()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    return v0
.end method

.method public setMenuItems(Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Section;ZLcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;)V
    .locals 4
    .param p2, "initialSection"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p3, "signedIn"    # Z
    .param p4, "listener"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Z",
            "Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "availableSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    iput-object p4, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    .line 147
    iput-object p1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSections:Ljava/util/ArrayList;

    .line 148
    iput-object p2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 150
    iget-object v2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    iget-object v2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSections:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 153
    const-string v2, "[SlidingMenuHelper]::[setMenuItems]::[mSections = null]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Section;

    .line 158
    .local v0, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-direct {p0, v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->inflateSectionItem(Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    move-result-object v1

    .line 159
    .local v1, "sectionItem":Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3, v0}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 160
    iget-object v3, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mOnSectionItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/model/catalogue/Section;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-direct {p0, v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setSectionItemChecked(Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSectionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 167
    .end local v0    # "section":Lcom/showmax/lib/api/model/catalogue/Section;
    .end local v1    # "sectionItem":Lcom/showmax/app/ui/widget/CheckableLinearLayout;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setSignedIn(Z)V

    goto :goto_0
.end method

.method public setSignedIn(Z)V
    .locals 0
    .param p1, "signedIn"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->showSignOut()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->showSignIn()V

    goto :goto_0
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 173
    return-void
.end method
