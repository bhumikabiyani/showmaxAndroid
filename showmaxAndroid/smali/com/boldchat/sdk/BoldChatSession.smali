.class public Lcom/boldchat/sdk/BoldChatSession;
.super Ljava/lang/Object;
.source "BoldChatSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatSession$8;,
        Lcom/boldchat/sdk/BoldChatSession$ChatPinger;,
        Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;,
        Lcom/boldchat/sdk/BoldChatSession$TypingListener;,
        Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;,
        Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;,
        Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;,
        Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;,
        Lcom/boldchat/sdk/BoldChatSession$Builder;,
        Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;,
        Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    }
.end annotation


# static fields
.field private static sAccount:Lcom/boldchat/visitor/api/Account;

.field private static sChat:Lcom/boldchat/visitor/api/Chat;

.field private static sCurrentState:Lcom/boldchat/sdk/BoldChatState;

.field private static sPersistedChat:Lcom/boldchat/sdk/utils/PersistedChat;

.field private static sPersistedMessageText:Ljava/lang/String;

.field private static sStatus:Ljava/lang/String;


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

.field private mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

.field private mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

.field private mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

.field private mContext:Landroid/content/Context;

.field private mHideKeyboardOnSend:Z

.field private mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

.field private mPageIsLoaded:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

.field private mVisitorID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sput-object v1, Lcom/boldchat/sdk/BoldChatSession;->sPersistedChat:Lcom/boldchat/sdk/utils/PersistedChat;

    .line 85
    sput-object v1, Lcom/boldchat/sdk/BoldChatSession;->sStatus:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/boldchat/sdk/BoldChatState;->Idle:Lcom/boldchat/sdk/BoldChatState;

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    .line 87
    sput-object v1, Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J

    .line 90
    iput-object v2, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    .line 97
    iput-boolean v3, p0, Lcom/boldchat/sdk/BoldChatSession;->mHideKeyboardOnSend:Z

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mTimeFormat:Ljava/text/DateFormat;

    .line 99
    iput-object v2, p0, Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 100
    iput-boolean v3, p0, Lcom/boldchat/sdk/BoldChatSession;->mPageIsLoaded:Z

    .line 107
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-direct {v0, p0, v2}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatSession$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/boldchat/sdk/BoldChatSession;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/text/DateFormat;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mTimeFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/boldchat/sdk/BoldChatSession;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatHistory;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatHistory;)Lcom/boldchat/sdk/BoldChatHistory;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatHistory;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/boldchat/visitor/api/Account;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/boldchat/visitor/api/Account;)Lcom/boldchat/visitor/api/Account;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Account;

    .prologue
    .line 80
    sput-object p0, Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/boldchat/sdk/BoldChatState;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/boldchat/sdk/BoldChatState;)Lcom/boldchat/sdk/BoldChatState;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatState;

    .prologue
    .line 80
    sput-object p0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    sput-object p0, Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boldchat/sdk/BoldChatSession;)J
    .locals 2
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/boldchat/sdk/BoldChatSession;J)J
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->getVisitorKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$ChatPinger;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Landroid/text/Spanned;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/boldchat/visitor/api/Form;
    .param p7, "x7"    # Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    .prologue
    .line 80
    invoke-direct/range {p0 .. p7}, Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession;->fatalError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/boldchat/visitor/api/Form;
    .param p5, "x5"    # Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->updateTypingLabel()V

    return-void
.end method

.method static synthetic access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Message;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/Message;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatSession;->addMessage(Lcom/boldchat/visitor/api/Message;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/boldchat/sdk/BoldChatSession;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->send()V

    return-void
.end method

.method static synthetic access$3200(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->showEmailTranscriptForm()V

    return-void
.end method

.method static synthetic access$3402(Lcom/boldchat/sdk/BoldChatSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mPageIsLoaded:Z

    return p1
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/boldchat/visitor/api/Chat;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 80
    sput-object p0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    return-object p0
.end method

.method static synthetic access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatViewManager;)Lcom/boldchat/sdk/BoldChatViewManager;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/boldchat/sdk/BoldChatSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mHideKeyboardOnSend:Z

    return v0
.end method

.method static synthetic access$902(Lcom/boldchat/sdk/BoldChatSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mHideKeyboardOnSend:Z

    return p1
.end method

.method private addMessage(Lcom/boldchat/visitor/api/Message;Z)V
    .locals 9
    .param p1, "message"    # Lcom/boldchat/visitor/api/Message;
    .param p2, "htmlEncodeText"    # Z

    .prologue
    .line 369
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getText()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "messageText":Ljava/lang/String;
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getCreated()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "time":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "sender":Ljava/lang/String;
    const/4 v8, 0x0

    .line 374
    .local v8, "senderAvatar":Ljava/lang/String;
    sget-object v1, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getTypers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getPersonID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/Typer;

    .line 375
    .local v0, "typer":Lcom/boldchat/visitor/api/Typer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Typer;->getImageURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Typer;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 378
    :cond_0
    if-eqz p2, :cond_1

    .line 379
    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\n<br />"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getPersonType()Lcom/boldchat/visitor/api/PersonType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getMessageID()J

    move-result-wide v4

    invoke-interface/range {v1 .. v8}, Lcom/boldchat/sdk/BoldChatHistory;->addMessage(Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v0    # "typer":Lcom/boldchat/visitor/api/Typer;
    .end local v2    # "messageText":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "sender":Ljava/lang/String;
    .end local v8    # "senderAvatar":Ljava/lang/String;
    :cond_2
    return-void

    .line 371
    .restart local v2    # "messageText":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getCreated()Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method private fatalError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$7;

    invoke-direct {v0, p0, p1}, Lcom/boldchat/sdk/BoldChatSession$7;-><init>(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method private getBranding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "branding"    # Ljava/lang/String;

    .prologue
    .line 392
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "branding"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 405
    .local v2, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 409
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 410
    move-object v1, p0

    .line 411
    .local v1, "key":Ljava/lang/String;
    const/16 v3, 0x23

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 413
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 419
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "branding":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 414
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "branding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BOLD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing string resource for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    move-object p0, v2

    .line 419
    goto :goto_0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 465
    const-string v2, "0"

    .line 467
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 468
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BOLD"

    const-string v4, "Name not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getVisitorKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bc_VisitorID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInternetPermissionAvailable()Z
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runMain(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method protected static runMain(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 349
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method private send()V
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    invoke-virtual {v2}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v0

    .line 325
    .local v0, "textInput":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "value":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    sget-object v2, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v2, :cond_0

    .line 329
    sget-object v2, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v2, v1}, Lcom/boldchat/visitor/api/Chat;->sendMessage(Ljava/lang/String;)J

    .line 332
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static setCurrentState(Lcom/boldchat/sdk/BoldChatState;)V
    .locals 0
    .param p0, "state"    # Lcom/boldchat/sdk/BoldChatState;

    .prologue
    .line 275
    sput-object p0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    .line 276
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 357
    sput-object p1, Lcom/boldchat/sdk/BoldChatSession;->sStatus:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mPageIsLoaded:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    invoke-interface {v0, p1}, Lcom/boldchat/sdk/BoldChatHistory;->setStatus(Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method

.method private setTypingText(Landroid/text/Spanned;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 517
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatViewManager;->getTypingTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 519
    .local v0, "typingView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 520
    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/boldchat/sdk/BoldChatSession$6;-><init>(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;Landroid/widget/TextView;)V

    invoke-direct {p0, v1}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 534
    .end local v0    # "typingView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showEmailTranscriptForm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 428
    sget-object v2, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v2, :cond_0

    .line 429
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 430
    .local v1, "input":Landroid/widget/EditText;
    const v2, 0x80021

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 431
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "api#chat#email"

    invoke-direct {p0, v3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "api#generic#ok"

    invoke-direct {p0, v3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "api#generic#cancel"

    invoke-direct {p0, v3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 436
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/boldchat/sdk/BoldChatSession$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/boldchat/sdk/BoldChatSession$4;-><init>(Lcom/boldchat/sdk/BoldChatSession;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 458
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method private showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    .locals 8
    .param p1, "state"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "submit"    # Ljava/lang/String;
    .param p4, "form"    # Lcom/boldchat/visitor/api/Form;
    .param p5, "submitListener"    # Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    .prologue
    const/4 v3, 0x0

    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 288
    return-void
.end method

.method private showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    .locals 9
    .param p1, "state"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "titleKey"    # Ljava/lang/String;
    .param p4, "submit"    # Ljava/lang/String;
    .param p5, "submitKey"    # Ljava/lang/String;
    .param p6, "form"    # Lcom/boldchat/visitor/api/Form;
    .param p7, "submitListener"    # Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    .prologue
    .line 301
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$3;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/boldchat/sdk/BoldChatSession$3;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Form;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;Lcom/boldchat/sdk/BoldChatState;)V

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private updateTypingLabel()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 480
    sget-object v6, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v6}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, "showHide":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v2, "message":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 484
    .local v1, "last":Ljava/lang/String;
    sget-object v6, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v6}, Lcom/boldchat/visitor/api/Chat;->getTypers()Ljava/util/Map;

    move-result-object v5

    .line 485
    .local v5, "typers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/boldchat/visitor/api/Typer;>;"
    monitor-enter v5

    .line 486
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boldchat/visitor/api/Typer;

    .line 487
    .local v4, "typer":Lcom/boldchat/visitor/api/Typer;
    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Typer;->getPersonType()Lcom/boldchat/visitor/api/PersonType;

    move-result-object v6

    sget-object v7, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    if-ne v6, v7, :cond_0

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Typer;->isTyping()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    if-eqz v1, :cond_1

    .line 489
    if-le v3, v8, :cond_2

    const-string v6, ", "

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_1
    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Typer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Typer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 490
    :cond_3
    const-string v6, "api#chat#operator"

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 494
    .end local v4    # "typer":Lcom/boldchat/visitor/api/Typer;
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    if-eqz v1, :cond_5

    .line 496
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    if-le v3, v8, :cond_8

    const-string v6, "api#chat#and_conjuction"

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_5
    if-lez v3, :cond_6

    .line 499
    const/4 v6, 0x0

    const-string v7, "<b>"

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v6, "</b> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-le v3, v8, :cond_9

    const-string v6, "api#chat#are_typing"

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    if-eqz v6, :cond_6

    .line 503
    new-instance v6, Lcom/boldchat/sdk/BoldChatSession$5;

    invoke-direct {v6, p0}, Lcom/boldchat/sdk/BoldChatSession$5;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 512
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V

    .line 514
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "last":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .end local v3    # "showHide":I
    .end local v5    # "typers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/boldchat/visitor/api/Typer;>;"
    :cond_7
    return-void

    .line 494
    .restart local v1    # "last":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/StringBuilder;
    .restart local v3    # "showHide":I
    .restart local v5    # "typers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/boldchat/visitor/api/Typer;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 496
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v6, ""

    goto :goto_3

    .line 500
    :cond_9
    const-string v6, "api#chat#is_typing"

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method


# virtual methods
.method public addMenuItems(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/boldchat/sdk/BoldChatViewManager;->addMenuItems(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 117
    return-void
.end method

.method public closeChat()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    .line 197
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    .line 198
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$2;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatSession$2;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 206
    :cond_1
    return-void
.end method

.method public endChat(Z)V
    .locals 2
    .param p1, "manuallyEnded"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_3

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatEnding:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 172
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->finishChat(Lcom/boldchat/visitor/api/ChatFinishedListener;)V

    .line 180
    :cond_2
    :goto_0
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$1;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatSession$1;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V

    .line 188
    return-void

    .line 173
    :cond_3
    if-nez p1, :cond_2

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    goto :goto_0

    .line 177
    :cond_4
    sget-object v0, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    goto :goto_0
.end method

.method public getChatAvailability(Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V
    .locals 2
    .param p1, "availabilityListener"    # Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    .prologue
    .line 213
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    invoke-direct {v1, p0, p1}, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Account;->getChatAvailability(Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V

    .line 214
    return-void
.end method

.method public isChatActive()Z
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/boldchat/sdk/R$id;->bc_end_chat:I

    if-ne v1, v2, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/boldchat/sdk/R$id;->bc_email_transcript:I

    if-ne v1, v2, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->showEmailTranscriptForm()V

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    .line 257
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->removeChatListener(Lcom/boldchat/visitor/api/ChatListener;)V

    .line 259
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->removeTyperListener(Lcom/boldchat/visitor/api/ChatTyperListener;)V

    .line 260
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->removeMessageListener(Lcom/boldchat/visitor/api/ChatMessageListener;)V

    .line 261
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->removeQueueListener(Lcom/boldchat/visitor/api/ChatQueueListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;

    .line 267
    :cond_1
    return-void
.end method

.method public setChatFormListener(Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;)V
    .locals 0
    .param p1, "chatFormListener"    # Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    .line 232
    return-void
.end method

.method public setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)V
    .locals 2
    .param p1, "boldChatSessionListener"    # Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    .line 242
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->addChatListener(Lcom/boldchat/visitor/api/ChatListener;)V

    .line 244
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->addTyperListener(Lcom/boldchat/visitor/api/ChatTyperListener;)V

    .line 245
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->addMessageListener(Lcom/boldchat/visitor/api/ChatMessageListener;)V

    .line 246
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->addQueueListener(Lcom/boldchat/visitor/api/ChatQueueListener;)V

    .line 248
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatSession;->isInternetPermissionAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;

    sget v2, Lcom/boldchat/sdk/R$string;->bc_no_internet_permission:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PreChat:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PostChat:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v0, v1, :cond_4

    .line 150
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->InitialLoading:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    .line 152
    iget-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mPageIsLoaded:Z

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;

    invoke-interface {v0}, Lcom/boldchat/sdk/BoldChatHistory;->clearChatHistory()V

    .line 155
    :cond_3
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, v1, v3}, Lcom/boldchat/visitor/api/Account;->createChat(Lcom/boldchat/visitor/api/CreateChatListener;Z)V

    goto :goto_0

    .line 156
    :cond_4
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "api#chat#ended"

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    goto :goto_0
.end method
