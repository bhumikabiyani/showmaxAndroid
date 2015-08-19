.class public Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
.super Ljava/lang/Object;
.source "SimpleDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;,
        Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    }
.end annotation


# static fields
.field public static final SIMPLE_DIALOG_CONTACT_US:I = 0x3e

.field public static final SIMPLE_DIALOG_PREFLIGHT_CHECK_ERROR:I = 0x38

.field public static final SIMPLE_DIALOG_RESUME_PLAYBACK:I = 0x37

.field public static final SIMPLE_DIALOG_RETRY_APP_PREFLIGHT:I = 0x3a

.field public static final SIMPLE_DIALOG_RETRY_INIT_TASK:I = 0x3b

.field public static final SIMPLE_DIALOG_RETRY_WELCOME_VIDEO:I = 0x39

.field public static final SIMPLE_DIALOG_VERIFY_APP:I = 0x3d

.field public static final SIMPLE_DIALOG_WELCOME_VIDEO_ERROR:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;


# instance fields
.field private mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

.field private mDialogType:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;-><init>(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 106
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;-><init>(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 120
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;-><init>(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    .param p1, "x1"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    iget v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I

    return v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    sput-object p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    return-object p0
.end method

.method static synthetic access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private static getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    invoke-direct {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;-><init>()V

    sput-object v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .line 69
    :cond_0
    sget-object v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    return-object v0
.end method
