.class public Lcom/showmax/app/ui/ActivityAuthentication;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityAuthentication.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# static fields
.field public static final BUNDLE_AUTH_URL:Ljava/lang/String; = "bundle.auth.url"

.field public static final BUNDLE_PROGRESSBAR_VISIBLE:Ljava/lang/String; = "bundle.progressbar.visible"

.field public static final BUNDLE_RESULT_ACCESS_TOKEN:Ljava/lang/String; = "bundle.result.access.token"

.field public static final BUNDLE_RESULT_BONUS:Ljava/lang/String; = "bundle.result.bonus"

.field public static final BUNDLE_RESULT_BRANDING_PARTNER:Ljava/lang/String; = "bundle.result.branding.partner"

.field public static final BUNDLE_RESULT_EXPIRATION:Ljava/lang/String; = "bundle.result.expiration"

.field public static final BUNDLE_RESULT_SECURE_TOKEN:Ljava/lang/String; = "bundle.result.secure.token"

.field public static final BUNDLE_RESULT_USER_LIST:Ljava/lang/String; = "bundle.result.user.list"

.field public static final BUNDLE_RESULT_USER_PROFILE:Ljava/lang/String; = "bundle.result.user.profile"

.field public static final CODE_REQUEST_AUTH:I = 0x9c

.field public static final CODE_RESULT_AUTH_CANCELED:I = 0xa6

.field public static final CODE_RESULT_AUTH_FAILED:I = 0x4b

.field public static final CODE_RESULT_AUTH_SUCCESS:I = 0x93

.field public static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;

.field private static sStartEnterAnim:I

.field private static sStartExitAnim:I

.field private static sStopEnterAnim:I

.field private static sStopExitAnim:I


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAuthUrl:Ljava/lang/String;

.field private mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

.field private mAuthWebViewListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

.field private mBonus:Ljava/lang/Boolean;

.field private mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

.field private mExpiresIn:Ljava/lang/String;

.field private mLoadBrandingPartnerCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/BrandingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadUserListCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadUserProfileCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field private mSecureToken:Ljava/lang/String;

.field private mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;

.field private mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    const-class v0, Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityAuthentication;->TAG:Ljava/lang/String;

    .line 92
    sput v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStartEnterAnim:I

    .line 93
    sput v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStartExitAnim:I

    .line 94
    sput v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    .line 95
    sput v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 349
    new-instance v0, Lcom/showmax/app/ui/ActivityAuthentication$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAuthentication$1;-><init>(Lcom/showmax/app/ui/ActivityAuthentication;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebViewListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    .line 452
    new-instance v0, Lcom/showmax/app/ui/ActivityAuthentication$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAuthentication$2;-><init>(Lcom/showmax/app/ui/ActivityAuthentication;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadUserProfileCallback:Lretrofit/Callback;

    .line 474
    new-instance v0, Lcom/showmax/app/ui/ActivityAuthentication$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAuthentication$3;-><init>(Lcom/showmax/app/ui/ActivityAuthentication;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadUserListCallback:Lretrofit/Callback;

    .line 506
    new-instance v0, Lcom/showmax/app/ui/ActivityAuthentication$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAuthentication$4;-><init>(Lcom/showmax/app/ui/ActivityAuthentication;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadBrandingPartnerCallback:Lretrofit/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/showmax/app/ui/ActivityAuthentication;ILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAuthentication;->setResultAndFinish(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->loadBrandingPartner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/ui/widget/AuthWebView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/BrandingPartner;)Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/user/BrandingPartner;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

    return-object p1
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivityAuthentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->loadUserProfile()V

    return-void
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/UserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;

    return-object v0
.end method

.method static synthetic access$602(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/UserProfile;)Lcom/showmax/lib/api/model/user/UserProfile;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/user/UserProfile;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;

    return-object p1
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/ActivityAuthentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->loadUserLists()V

    return-void
.end method

.method static synthetic access$800(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAuthentication;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Boolean;
    .param p5, "x5"    # Lcom/showmax/lib/api/model/user/UserProfile;
    .param p6, "x6"    # Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .param p7, "x7"    # Lcom/showmax/lib/api/model/user/BrandingPartner;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/showmax/app/ui/ActivityAuthentication;->makeResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 346
    :cond_0
    const-string v0, "bundle.auth.url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthUrl:Ljava/lang/String;

    .line 347
    return-void
.end method

.method private initViews(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    const v1, 0x7f0b00a0

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/ui/widget/AuthWebView;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    .line 328
    const v1, 0x7f0b009f

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 329
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebViewListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->setAuthWebViewListener(Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;)V

    .line 331
    if-eqz p1, :cond_0

    .line 333
    const-string v1, "bundle.progressbar.visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 334
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 337
    .end local v0    # "visible":Z
    :cond_0
    return-void

    .line 334
    .restart local v0    # "visible":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private loadBrandingPartner(Ljava/lang/String;)V
    .locals 3
    .param p1, "partnerId"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 448
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 449
    .local v0, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadBrandingPartnerCallback:Lretrofit/Callback;

    invoke-virtual {v1, p1, v0, v2}, Lcom/showmax/lib/api/io/UserApi;->loadBrandingPartner(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 450
    return-void
.end method

.method private loadUserLists()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 442
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;

    iget-object v2, v2, Lcom/showmax/lib/api/model/user/UserProfile;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadUserListCallback:Lretrofit/Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/lib/api/io/UserApi;->loadUserlistsV2(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 443
    return-void
.end method

.method private loadUserProfile()V
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 435
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 436
    .local v0, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mLoadUserProfileCallback:Lretrofit/Callback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/UserApi;->loadUserDetail(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 437
    return-void
.end method

.method private makeResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;
    .locals 4
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "secureToken"    # Ljava/lang/String;
    .param p3, "expiresIn"    # Ljava/lang/String;
    .param p4, "bonus"    # Ljava/lang/Boolean;
    .param p5, "userProfile"    # Lcom/showmax/lib/api/model/user/UserProfile;
    .param p6, "list"    # Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .param p7, "partner"    # Lcom/showmax/lib/api/model/user/BrandingPartner;

    .prologue
    .line 401
    const-string v2, "[ActivityAuthentication]::[makeResultIntent]::[0]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle.result.access.token"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "bundle.result.secure.token"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v2, "bundle.result.expiration"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "bundle.result.user.profile"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 407
    const-string v2, "bundle.result.user.list"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    const-string v2, "bundle.result.branding.partner"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    if-nez p4, :cond_0

    .line 412
    const-string v2, "bundle.result.bonus"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v1, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    return-object v1

    .line 414
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    const-string v2, "bundle.result.bonus"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 422
    :cond_1
    const-string v2, "bundle.result.bonus"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static parseResultIntent(Landroid/content/Intent;)[Ljava/lang/Object;
    .locals 9
    .param p0, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 279
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 281
    .local v1, "data":Landroid/os/Bundle;
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/Object;

    .line 284
    .local v0, "accessData":[Ljava/lang/Object;
    const-string v3, "bundle.result.access.token"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 287
    const-string v3, "bundle.result.secure.token"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 290
    const/4 v3, 0x2

    const-string v4, "bundle.result.expiration"

    const-string v5, "null"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 293
    const/4 v4, 0x3

    const-string v3, "bundle.result.user.profile"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/user/UserProfile;

    aput-object v3, v0, v4

    .line 296
    const/4 v4, 0x4

    const-string v3, "bundle.result.user.list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    aput-object v3, v0, v4

    .line 299
    const/4 v4, 0x5

    const-string v3, "bundle.result.branding.partner"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/user/BrandingPartner;

    aput-object v3, v0, v4

    .line 302
    const-string v3, "bundle.result.bonus"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 303
    .local v2, "rawBonus":I
    if-nez v2, :cond_0

    .line 305
    const/4 v3, 0x0

    aput-object v3, v0, v7

    .line 316
    :goto_0
    return-object v0

    .line 306
    :cond_0
    if-ne v2, v6, :cond_1

    .line 309
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v7

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v7

    goto :goto_0
.end method

.method private setResultAndFinish(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "codeResult"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 547
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

    invoke-direct {v1, p1, p2}, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->setResult(I)V

    .line 549
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    .line 550
    return-void
.end method

.method public static startAuthActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "authWebPageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 230
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/showmax/app/ui/ActivityAuthentication;->startAuthActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V

    .line 231
    return-void
.end method

.method public static startAuthActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "authWebPageUrl"    # Ljava/lang/String;
    .param p3, "startEnterAnim"    # I
    .param p4, "startExitAnim"    # I
    .param p5, "stopEnterAnim"    # I
    .param p6, "stopExitAnim"    # I

    .prologue
    const/4 v2, -0x1

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bundle.auth.url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    if-le p3, v2, :cond_0

    if-le p4, v2, :cond_0

    if-le p5, v2, :cond_0

    if-le p6, v2, :cond_0

    .line 253
    sput p3, Lcom/showmax/app/ui/ActivityAuthentication;->sStartEnterAnim:I

    .line 254
    sput p4, Lcom/showmax/app/ui/ActivityAuthentication;->sStartExitAnim:I

    .line 255
    sput p5, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    .line 256
    sput p6, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    .line 257
    sget v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStartEnterAnim:I

    sget v2, Lcom/showmax/app/ui/ActivityAuthentication;->sStartExitAnim:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 152
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->finish()V

    .line 154
    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 156
    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->overridePendingTransition(II)V

    .line 158
    :cond_0
    return-void
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/showmax/app/ui/ActivityAuthentication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 141
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onBackPressed()V

    .line 143
    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 145
    sget v0, Lcom/showmax/app/ui/ActivityAuthentication;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityAuthentication;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->overridePendingTransition(II)V

    .line 147
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 104
    const-string v0, "[ActivityAuthentication]::[onCreate]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/showmax/app/ui/ActivityAuthentication;->setHasSlidingMenu(Z)V

    .line 108
    invoke-virtual {p0, v3, v4}, Lcom/showmax/app/ui/ActivityAuthentication;->setHasToolbar(ZZ)V

    .line 109
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAuthentication;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->hideActionBarLogo()V

    .line 112
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->initData(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->initViews(Landroid/os/Bundle;)V

    .line 115
    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    const/4 v1, 0x2

    .line 118
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->setGACookie(IIZLjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->load(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->goBack()V

    .line 202
    :goto_0
    const/4 v0, 0x1

    .line 205
    :goto_1
    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    const-string v0, "[ActivityAuthentication]::[onOptionsItemSelected]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->goBack()V

    .line 182
    :goto_0
    const/4 v0, 0x1

    .line 184
    :goto_1
    return v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v0, "[ActivityAuthentication]::[onSaveInstanceState]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 132
    const-string v0, "bundle.auth.url"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "bundle.progressbar.visible"

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;

    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 135
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
