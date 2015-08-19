.class public Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
.super Ljava/lang/Object;
.source "LanguagesDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    }
.end annotation


# static fields
.field public static final LANGUAGE_DIALOG_AUDIO_LANGUAGE_MAIN_VIDEO:I = 0x19

.field public static final LANGUAGE_DIALOG_AUDIO_LANGUAGE_TRAILER:I = 0x1a

.field public static final LANGUAGE_DIALOG_SUBTITLE_LANGUAGE:I = 0x1b

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;


# instance fields
.field private mLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    .param p1, "x1"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .prologue
    .line 16
    iget v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I

    return v0
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I

    return p1
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .prologue
    .line 16
    sput-object p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    return-object p0
.end method

.method public static getInstance()Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    invoke-direct {v0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;-><init>()V

    sput-object v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .line 63
    :cond_0
    sget-object v0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    return-object v0
.end method

.method private toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 159
    .local v1, "result":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Language;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    .end local v1    # "result":[Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "titleResId"    # I
    .param p5, "languagesDialogListener"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;",
            "Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "audioLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V

    .line 69
    return-void
.end method

.method public showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "titleResId"    # I
    .param p5, "selectedLanguage"    # Lcom/showmax/lib/api/model/catalogue/Language;
    .param p6, "languagesDialogListener"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            "Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p4, "audioLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    iput p2, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I

    .line 74
    iput-object p4, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;

    .line 75
    iput-object p6, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .line 77
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    invoke-virtual {v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 79
    invoke-direct {p0, p4}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 81
    if-eqz p5, :cond_0

    .line 83
    iget-object v2, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 84
    .local v1, "selectedIndex":I
    new-instance v2, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;-><init>(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 118
    .end local v1    # "selectedIndex":I
    :goto_0
    new-instance v2, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;-><init>(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 132
    new-instance v2, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;-><init>(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 147
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 148
    return-void

    .line 102
    :cond_0
    new-instance v2, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$2;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$2;-><init>(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    goto :goto_0
.end method
