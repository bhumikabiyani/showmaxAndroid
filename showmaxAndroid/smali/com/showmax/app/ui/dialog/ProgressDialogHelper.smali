.class public Lcom/showmax/app/ui/dialog/ProgressDialogHelper;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;


# instance fields
.field private mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;Lcom/showmax/lib/api/io/ApiCallback;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/ProgressDialogHelper;
    .param p1, "x1"    # Lcom/showmax/lib/api/io/ApiCallback;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object p1
.end method

.method static synthetic access$202(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/ProgressDialogHelper;
    .param p1, "x1"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)Lcom/showmax/app/ui/dialog/ProgressDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .prologue
    .line 12
    sput-object p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    return-object p0
.end method

.method public static getInstance()Lcom/showmax/app/ui/dialog/ProgressDialogHelper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;-><init>()V

    sput-object v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    return-object v0
.end method


# virtual methods
.method public hideProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    const-string v0, "[%s]::[hideProgress]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->hide()V

    .line 106
    iput-object v4, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 108
    :cond_0
    iput-object v4, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 109
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;Lcom/showmax/lib/api/io/ApiCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "cancelableCallback":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<*>;"
    const v1, 0x7f0d00be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "defaultMessage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/io/ApiCallback;)V

    .line 98
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/io/ApiCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "cancelableCallback":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<*>;"
    iput-object p4, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 50
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {v0, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 57
    :cond_0
    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 62
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 63
    new-instance v1, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;-><init>(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 77
    new-instance v1, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$2;-><init>(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 91
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 92
    return-void
.end method
