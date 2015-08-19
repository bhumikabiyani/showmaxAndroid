.class public Lcom/showmax/app/ui/ActivityTutorial;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ActivityTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;,
        Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARGS_CAN_SKIP:Ljava/lang/String; = "args.can.skip"

.field public static final CODE_REQUEST_TUTORIAL:I = 0x3ec

.field public static final CODE_RESULT_TUTORIAL:I = 0x5

.field public static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

.field private mCanSkip:Z

.field private mCurrentPosition:I

.field private mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSkip:Landroid/widget/Button;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/showmax/app/ui/ActivityTutorial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityTutorial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 101
    new-instance v0, Lcom/showmax/app/ui/ActivityTutorial$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityTutorial$1;-><init>(Lcom/showmax/app/ui/ActivityTutorial;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/showmax/app/ui/ActivityTutorial$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityTutorial$2;-><init>(Lcom/showmax/app/ui/ActivityTutorial;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityTutorial;I)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityTutorial;->setResultAndFinish(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityTutorial;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 35
    iget v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/ActivityTutorial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivityTutorial;)Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mAdapter:Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityTutorial;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCanSkip:Z

    return v0
.end method

.method private setResultAndFinish(I)V
    .locals 0
    .param p1, "codeResult"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityTutorial;->setResult(I)V

    .line 185
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial;->finish()V

    .line 186
    return-void
.end method

.method public static startTutorialActivity(Landroid/app/Activity;IZ)V
    .locals 2
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "canSkip"    # Z

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityTutorial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "args.can.skip"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 151
    iget v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 69
    const-string v1, "[%s]::[onCreate]"

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/showmax/app/ui/ActivityTutorial;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 84
    :cond_0
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->setContentView(I)V

    .line 86
    const v1, 0x7f0b00b8

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 87
    const v1, 0x7f0b00b9

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 88
    const v1, 0x7f0b00ba

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;

    .line 90
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTutorial;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "args.can.skip"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCanSkip:Z

    .line 93
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mCanSkip:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    new-instance v1, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

    invoke-static {p0}, Lcom/showmax/app/util/MauUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTutorial;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;-><init>(ZLandroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mAdapter:Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

    .line 96
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTutorial;->mAdapter:Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 98
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTutorial;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 99
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method
