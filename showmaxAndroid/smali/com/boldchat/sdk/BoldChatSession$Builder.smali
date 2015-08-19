.class public Lcom/boldchat/sdk/BoldChatSession$Builder;
.super Ljava/lang/Object;
.source "BoldChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountID:J

.field private mBusyView:Landroid/view/ViewGroup;

.field private mExtraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

.field private mFormView:Landroid/view/ViewGroup;

.field private mLanguage:Ljava/lang/String;

.field private mListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

.field private mMainView:Landroid/view/ViewGroup;

.field private mServerSet:Ljava/lang/String;

.field private mSession:Lcom/boldchat/sdk/BoldChatSession;

.field private mSkipPreChat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountID"    # J
    .param p4, "chatAPIAccessKey"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSkipPreChat:Z

    .line 686
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;-><init>(Lcom/boldchat/sdk/BoldChatSession$1;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    .line 687
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->access$302(Lcom/boldchat/sdk/BoldChatSession;Landroid/content/Context;)Landroid/content/Context;

    .line 688
    iput-wide p2, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mAccountID:J

    .line 689
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/boldchat/sdk/BoldChatSession;->access$802(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3a

    .line 673
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/boldchat/sdk/BoldChatSession$Builder;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 676
    return-void

    .line 673
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/boldchat/sdk/BoldChatView;)V
    .locals 1
    .param p1, "boldChatView"    # Lcom/boldchat/sdk/BoldChatView;

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatView;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/boldchat/sdk/BoldChatSession$Builder;-><init>(Lcom/boldchat/sdk/BoldChatView;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public constructor <init>(Lcom/boldchat/sdk/BoldChatView;Ljava/lang/String;)V
    .locals 3
    .param p1, "boldChatView"    # Lcom/boldchat/sdk/BoldChatView;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/boldchat/sdk/BoldChatSession$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatView;->getBusyView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatView;->getFormView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatView;->getMainChatView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/boldchat/sdk/BoldChatSession$Builder;->setViewContainers(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lcom/boldchat/sdk/BoldChatSession$Builder;

    .line 663
    return-void
.end method


# virtual methods
.method public build()Lcom/boldchat/sdk/BoldChatSession;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$800(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No API Key configured"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_0
    const/4 v11, 0x0

    .line 828
    .local v11, "size":Landroid/graphics/Point;
    const/4 v9, 0x0

    .line 829
    .local v9, "dpi":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    .line 831
    .local v15, "wm":Landroid/view/WindowManager;
    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 832
    .local v8, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    .end local v11    # "size":Landroid/graphics/Point;
    .local v12, "size":Landroid/graphics/Point;
    :try_start_1
    invoke-virtual {v8, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    move-object v11, v12

    .line 836
    .end local v8    # "display":Landroid/view/Display;
    .end local v12    # "size":Landroid/graphics/Point;
    .end local v15    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "size":Landroid/graphics/Point;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getVersion()Ljava/lang/String;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$1300(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v11, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "dpi)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boldchat/visitor/api/internal/RequestUtil;->setAdditionalInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 841
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->setChatFormListener(Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v2, Lcom/boldchat/visitor/api/Account;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mAccountID:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mApiKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$800(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lcom/boldchat/visitor/api/Account;-><init>(JLjava/lang/String;)V

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1402(Lcom/boldchat/visitor/api/Account;)Lcom/boldchat/visitor/api/Account;

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1400()Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mServerSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/boldchat/visitor/api/Account;->setServerSet(Ljava/lang/String;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1400()Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mExtraData:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/boldchat/visitor/api/Account;->setExtraData(Ljava/util/Map;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1400()Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSkipPreChat:Z

    invoke-virtual {v2, v3}, Lcom/boldchat/visitor/api/Account;->setSkipPreChat(Z)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mLanguage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1400()Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/boldchat/visitor/api/Account;->setLanguage(Ljava/lang/String;)V

    .line 852
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mMainView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 853
    const/4 v7, 0x0

    .line 854
    .local v7, "persistedText":Ljava/lang/String;
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v2, v3, :cond_3

    .line 855
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1600()Ljava/lang/String;

    move-result-object v7

    .line 857
    :cond_3
    const/4 v2, 0x0

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sPersistedMessageText:Ljava/lang/String;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    move-object/from16 v16, v0

    new-instance v2, Lcom/boldchat/sdk/BoldChatViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mBusyView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mFormView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mMainView:Landroid/view/ViewGroup;

    invoke-direct/range {v2 .. v7}, Lcom/boldchat/sdk/BoldChatViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;)V

    move-object/from16 v0, v16

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$502(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatViewManager;)Lcom/boldchat/sdk/BoldChatViewManager;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    sget v3, Lcom/boldchat/sdk/R$id;->bc_send_button:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->setMainViewClickListener(ILandroid/view/View$OnClickListener;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    sget v3, Lcom/boldchat/sdk/R$id;->bc_close_button:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->setMainViewClickListener(ILandroid/view/View$OnClickListener;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    sget v3, Lcom/boldchat/sdk/R$id;->bc_end_chat:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->setMainViewClickListener(ILandroid/view/View$OnClickListener;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    sget v3, Lcom/boldchat/sdk/R$id;->bc_email_transcript:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->setMainViewClickListener(ILandroid/view/View$OnClickListener;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v13

    .line 866
    .local v13, "textInput":Landroid/widget/TextView;
    if-eqz v13, :cond_4

    .line 867
    new-instance v14, Lcom/boldchat/sdk/BoldChatSession$TypingListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lcom/boldchat/sdk/BoldChatSession$TypingListener;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V

    .line 868
    .local v14, "typeListener":Lcom/boldchat/sdk/BoldChatSession$TypingListener;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 869
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 870
    new-instance v2, Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 873
    .end local v14    # "typeListener":Lcom/boldchat/sdk/BoldChatSession$TypingListener;
    :cond_4
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatViewManager;->setBrandings(Ljava/util/Map;)V

    .line 878
    .end local v7    # "persistedText":Ljava/lang/String;
    .end local v13    # "textInput":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1100(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_6

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$1102(Lcom/boldchat/sdk/BoldChatSession;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 881
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$1100(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getVisitorKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$2100(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J
    invoke-static {v2, v4, v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2002(Lcom/boldchat/sdk/BoldChatSession;J)J

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sAccount:Lcom/boldchat/visitor/api/Account;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1400()Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2000(Lcom/boldchat/sdk/BoldChatSession;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/boldchat/visitor/api/Account;->setVisitorID(J)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatHistory;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatHistory;

    move-result-object v2

    instance-of v2, v2, Lcom/boldchat/sdk/BoldChatWebHistory;

    if-eqz v2, :cond_a

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatHistory;

    move-result-object v2

    check-cast v2, Lcom/boldchat/sdk/BoldChatWebHistory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatWebHistory;->setHistoryPageLoadedListener(Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;)V

    .line 890
    :goto_2
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v2

    if-eqz v2, :cond_c

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v2, v3, :cond_7

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v2, v3, :cond_c

    .line 891
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 892
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v2, v3, :cond_b

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/Chat;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 897
    :goto_3
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v2

    sget-object v3, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v2, v3, :cond_8

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/Chat;->isEnded()Z

    move-result v2

    if-nez v2, :cond_8

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v3, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Chat;)V

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2202(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$ChatPinger;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    .line 899
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 902
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatUpdated(Lcom/boldchat/visitor/api/Chat;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v3, Landroid/text/SpannableString;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2300(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;)V

    .line 908
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    return-object v2

    .line 836
    :cond_9
    :try_start_3
    const-string v2, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 837
    :catch_0
    move-exception v10

    .line 838
    .local v10, "e":Ljava/lang/Exception;
    :goto_5
    const-string v2, "BOLD"

    const-string v3, "Failed to add some extra info to user agent string (non critical)"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 887
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->historyPageLoaded()V

    goto/16 :goto_2

    .line 895
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    goto/16 :goto_3

    .line 905
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v2, 0x0

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$402(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat;

    goto :goto_4

    .line 837
    .end local v11    # "size":Landroid/graphics/Point;
    .restart local v8    # "display":Landroid/view/Display;
    .restart local v12    # "size":Landroid/graphics/Point;
    .restart local v15    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "size":Landroid/graphics/Point;
    .restart local v11    # "size":Landroid/graphics/Point;
    goto :goto_5
.end method

.method public setChatFormListener(Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 0
    .param p1, "chatFormListener"    # Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    .line 709
    return-object p0
.end method

.method public setExtraData(Ljava/util/Map;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/boldchat/sdk/BoldChatSession$Builder;"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mExtraData:Ljava/util/Map;

    .line 795
    if-eqz p1, :cond_0

    .line 796
    const-string v1, "language"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, "language":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mLanguage:Ljava/lang/String;

    .line 801
    .end local v0    # "language":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public setHideKeyboardOnSend(Z)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 1
    .param p1, "hideKeyboardOnSend"    # Z

    .prologue
    .line 729
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mHideKeyboardOnSend:Z
    invoke-static {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->access$902(Lcom/boldchat/sdk/BoldChatSession;Z)Z

    .line 730
    return-object p0
.end method

.method public setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 0
    .param p1, "boldChatSessionListener"    # Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    .line 719
    return-object p0
.end method

.method public setServerSet(Ljava/lang/String;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 0
    .param p1, "serverSet"    # Ljava/lang/String;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mServerSet:Ljava/lang/String;

    .line 697
    return-object p0
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 1
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->access$1102(Lcom/boldchat/sdk/BoldChatSession;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 751
    return-object p0
.end method

.method public setSkipPreChat(Z)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 0
    .param p1, "skipPreChat"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSkipPreChat:Z

    .line 813
    return-object p0
.end method

.method public setTimeFormat(Ljava/text/DateFormat;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 1
    .param p1, "timeFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mTimeFormat:Ljava/text/DateFormat;
    invoke-static {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->access$1002(Lcom/boldchat/sdk/BoldChatSession;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 741
    return-object p0
.end method

.method public setViewContainers(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lcom/boldchat/sdk/BoldChatSession$Builder;
    .locals 3
    .param p1, "busyView"    # Landroid/view/ViewGroup;
    .param p2, "formView"    # Landroid/view/ViewGroup;
    .param p3, "mainChatView"    # Landroid/view/ViewGroup;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mBusyView:Landroid/view/ViewGroup;

    .line 765
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mFormView:Landroid/view/ViewGroup;

    .line 766
    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mMainView:Landroid/view/ViewGroup;

    .line 767
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mSession:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$Builder;->mMainView:Landroid/view/ViewGroup;

    sget v2, Lcom/boldchat/sdk/R$id;->bc_chat_history:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boldchat/sdk/BoldChatHistory;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;
    invoke-static {v1, v0}, Lcom/boldchat/sdk/BoldChatSession;->access$1202(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatHistory;)Lcom/boldchat/sdk/BoldChatHistory;

    .line 768
    return-object p0
.end method
