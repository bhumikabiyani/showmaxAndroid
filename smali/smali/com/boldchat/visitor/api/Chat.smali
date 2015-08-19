.class public Lcom/boldchat/visitor/api/Chat;
.super Ljava/lang/Object;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/visitor/api/Chat$MethodRetry;,
        Lcom/boldchat/visitor/api/Chat$OSSListener;,
        Lcom/boldchat/visitor/api/Chat$StartChatResultListener;
    }
.end annotation


# instance fields
.field private account:Lcom/boldchat/visitor/api/Account;

.field private activeAssist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/boldchat/visitor/api/ActiveAssistSession;",
            ">;"
        }
    .end annotation
.end field

.field private activeAssistListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/boldchat/visitor/api/ActiveAssistListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

.field private answerTimeout:I

.field private answered:Ljava/util/Date;

.field private brandings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chatHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/visitor/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field private chatID:J

.field private chatKey:Ljava/lang/String;

.field private chatListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/boldchat/visitor/api/ChatListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private chatMessageListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/boldchat/visitor/api/ChatMessageListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private chatQueueListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/boldchat/visitor/api/ChatQueueListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private chatTyperListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/boldchat/visitor/api/ChatTyperListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private clientID:J

.field private clientTimeout:I

.field private ended:Ljava/util/Date;

.field private endedReason:Lcom/boldchat/visitor/api/EndedReason;

.field private language:Ljava/lang/String;

.field private lastHeartbeat:J

.field private longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

.field private longPollURL:Ljava/lang/String;

.field private oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

.field private rand:Ljava/util/Random;

.field private retryQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/visitor/api/internal/RPCMethod;",
            ">;"
        }
    .end annotation
.end field

.field private retrySleep:J

.field private retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;

.field private started:Ljava/util/Date;

.field private typers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/boldchat/visitor/api/Typer;",
            ">;"
        }
    .end annotation
.end field

.field private visitorID:J

.field private visitorName:Ljava/lang/String;

.field visitorTyping:Z

.field private webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

.field private webSocketURL:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/json/JSONObject;Ljava/util/Map;)V
    .locals 3
    .param p1, "account"    # Lcom/boldchat/visitor/api/Account;
    .param p2, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boldchat/visitor/api/Account;",
            "Lcom/boldchat/visitor/api/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    .line 39
    const/16 v0, 0x78

    iput v0, p0, Lcom/boldchat/visitor/api/Chat;->clientTimeout:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/boldchat/visitor/api/Chat;->answerTimeout:I

    .line 41
    sget-object v0, Lcom/boldchat/visitor/api/EndedReason;->Unknown:Lcom/boldchat/visitor/api/EndedReason;

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->endedReason:Lcom/boldchat/visitor/api/EndedReason;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->rand:Ljava/util/Random;

    .line 50
    const-string v0, "Visitor"

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->visitorName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssist:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/Chat;->visitorTyping:Z

    .line 54
    iput-object v2, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 55
    iput-object v2, p0, Lcom/boldchat/visitor/api/Chat;->brandings:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatHistory:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->lastHeartbeat:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    .line 61
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->retrySleep:J

    .line 64
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    .line 65
    iput-object p3, p0, Lcom/boldchat/visitor/api/Chat;->brandings:Ljava/util/Map;

    .line 66
    invoke-direct {p0, p2}, Lcom/boldchat/visitor/api/Chat;->updateChatValues(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/boldchat/visitor/api/Chat;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->connectSockets()V

    return-void
.end method

.method static synthetic access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/Chat;->updateChatValues(Lcom/boldchat/visitor/api/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/boldchat/visitor/api/Chat;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->connectWebSocket()V

    return-void
.end method

.method static synthetic access$1502(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->longPollURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/boldchat/visitor/api/Chat;J)J
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/boldchat/visitor/api/Chat;)J
    .locals 2
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->chatID:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat$MethodRetry;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$MethodRetry;)Lcom/boldchat/visitor/api/Chat$MethodRetry;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/Chat$MethodRetry;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/boldchat/visitor/api/Chat;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/boldchat/visitor/api/Chat;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/EndedReason;)Lcom/boldchat/visitor/api/EndedReason;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/EndedReason;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->endedReason:Lcom/boldchat/visitor/api/EndedReason;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssist:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/boldchat/visitor/api/Chat;J)J
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Chat;->lastHeartbeat:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/boldchat/visitor/api/Chat;)J
    .locals 2
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->retrySleep:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/boldchat/visitor/api/Chat;J)J
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Chat;->retrySleep:J

    return-wide p1
.end method

.method static synthetic access$2908(Lcom/boldchat/visitor/api/Chat;)J
    .locals 4
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->retrySleep:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/boldchat/visitor/api/Chat;->retrySleep:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Lcom/boldchat/visitor/api/internal/ResultListener;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    return-void
.end method

.method static synthetic access$402(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$OSSListener;)Lcom/boldchat/visitor/api/Chat$OSSListener;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/Chat$OSSListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Account;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boldchat/visitor/api/Chat;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->brandings:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boldchat/visitor/api/Chat;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->connectLongPoll()V

    return-void
.end method

.method static synthetic access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    return-object v0
.end method

.method static synthetic access$902(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorLongPoll;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p1, "x1"    # Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    return-object p1
.end method

.method private callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/boldchat/visitor/api/internal/ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boldchat/visitor/api/internal/ResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 709
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;Z)V

    .line 710
    return-void
.end method

.method private callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;Z)V
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/boldchat/visitor/api/internal/ResultListener;
    .param p4, "forceREST"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boldchat/visitor/api/internal/ResultListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p4, :cond_0

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/boldchat/visitor/api/Chat;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    instance-of v1, v1, Lcom/boldchat/visitor/api/internal/RPCSender;

    if-nez v1, :cond_1

    .line 714
    :cond_0
    new-instance v0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Account;->getTimeout()I

    move-result v1

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/Account;->getAccountID()J

    move-result-wide v2

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Account;->getApiAccessKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/Account;->getServerSet()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/boldchat/visitor/api/internal/RestAPIRequest;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 715
    .local v0, "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 723
    .end local v0    # "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    :goto_0
    return-void

    .line 718
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    check-cast v1, Lcom/boldchat/visitor/api/internal/RPCSender;

    invoke-interface {v1, p1, p2, p3}, Lcom/boldchat/visitor/api/internal/RPCSender;->sendRPC(Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v10

    .line 720
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;Z)V

    goto :goto_0
.end method

.method private connectLongPoll()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lcom/boldchat/visitor/api/Chat$OSSListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/boldchat/visitor/api/Chat$OSSListener;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 644
    :cond_0
    new-instance v0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->longPollURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;-><init>(Ljava/lang/String;Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageListener;)V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    .line 645
    return-void
.end method

.method private connectSockets()V
    .locals 2

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->connectWebSocket()V

    .line 619
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/boldchat/visitor/api/Chat$8;

    invoke-direct {v1, p0}, Lcom/boldchat/visitor/api/Chat$8;-><init>(Lcom/boldchat/visitor/api/Chat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 633
    return-void
.end method

.method private connectWebSocket()V
    .locals 4

    .prologue
    .line 636
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/boldchat/visitor/api/Chat$OSSListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/boldchat/visitor/api/Chat$OSSListener;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 638
    :cond_0
    new-instance v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;-><init>(Ljava/lang/String;Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageListener;)V

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .line 639
    return-void
.end method

.method private getParamBase()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 653
    .local v0, "params":Ljava/util/HashMap;
    const-string v1, "ChatKey"

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->chatKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-object v0
.end method

.method private updateChatValues(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 24
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 658
    const-string v20, "VisitorID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 659
    .local v16, "visitorID":J
    const-string v20, "ChatID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 660
    .local v6, "chatID":J
    const-string v20, "ChatKey"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, "chatKey":Ljava/lang/String;
    const-string v20, "ClientID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 662
    .local v10, "clientID":J
    const-string v20, "WebSocketURL"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 663
    .local v19, "webSocketURL":Ljava/lang/String;
    const-string v20, "LongPollURL"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 665
    .local v15, "longPollURL":Ljava/lang/String;
    const-string v20, "Answered"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "answered":Ljava/lang/String;
    const-string v20, "Ended"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 667
    .local v12, "ended":Ljava/lang/String;
    const-string v20, "EndedReason"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 668
    .local v13, "endedReason":Ljava/lang/String;
    const-string v20, "ClientTimeout"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 669
    .local v9, "clientTimeout":I
    const-string v20, "Name"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 670
    .local v18, "visitorName":Ljava/lang/String;
    const-string v20, "Language"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 671
    .local v14, "language":Ljava/lang/String;
    const-string v20, "AnswerTimeout"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 673
    .local v4, "answerTimeout":I
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_0

    .line 674
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/boldchat/visitor/api/Chat;->visitorID:J

    .line 675
    :cond_0
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_1

    .line 676
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/boldchat/visitor/api/Chat;->chatID:J

    .line 677
    :cond_1
    if-eqz v8, :cond_2

    .line 678
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/boldchat/visitor/api/Chat;->chatKey:Ljava/lang/String;

    .line 679
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_3

    .line 680
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    .line 681
    :cond_3
    if-eqz v19, :cond_4

    .line 682
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat;->started:Ljava/util/Date;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 684
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->started:Ljava/util/Date;

    .line 687
    :cond_4
    if-eqz v15, :cond_5

    .line 688
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/boldchat/visitor/api/Chat;->longPollURL:Ljava/lang/String;

    .line 692
    :cond_5
    if-eqz v5, :cond_6

    .line 693
    invoke-static {v5}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->answered:Ljava/util/Date;

    .line 694
    :cond_6
    if-eqz v12, :cond_7

    .line 695
    invoke-static {v12}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;

    .line 696
    :cond_7
    if-eqz v13, :cond_8

    .line 697
    invoke-static {v13}, Lcom/boldchat/visitor/api/EndedReason;->getEndedReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/EndedReason;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->endedReason:Lcom/boldchat/visitor/api/EndedReason;

    .line 698
    :cond_8
    if-lez v9, :cond_9

    .line 699
    move-object/from16 v0, p0

    iput v9, v0, Lcom/boldchat/visitor/api/Chat;->clientTimeout:I

    .line 700
    :cond_9
    if-eqz v18, :cond_a

    .line 701
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boldchat/visitor/api/Chat;->visitorName:Ljava/lang/String;

    .line 702
    :cond_a
    if-eqz v14, :cond_b

    .line 703
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/boldchat/visitor/api/Chat;->language:Ljava/lang/String;

    .line 704
    :cond_b
    if-lez v4, :cond_c

    .line 705
    move-object/from16 v0, p0

    iput v4, v0, Lcom/boldchat/visitor/api/Chat;->answerTimeout:I

    .line 706
    :cond_c
    return-void
.end method


# virtual methods
.method public acceptActiveAssist(Lcom/boldchat/visitor/api/ActiveAssistSession;)V
    .locals 4
    .param p1, "activeAssistSession"    # Lcom/boldchat/visitor/api/ActiveAssistSession;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 507
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ClientID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "ActiveAssistID"

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/ActiveAssistSession;->getActiveAssistID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v1, "acceptActiveAssist"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 510
    return-void
.end method

.method public addActiveAssistListener(Lcom/boldchat/visitor/api/ActiveAssistListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ActiveAssistListener;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addChatListener(Lcom/boldchat/visitor/api/ChatListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatListener;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMessageListener(Lcom/boldchat/visitor/api/ChatMessageListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatMessageListener;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addQueueListener(Lcom/boldchat/visitor/api/ChatQueueListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatQueueListener;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTyperListener(Lcom/boldchat/visitor/api/ChatTyperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatTyperListener;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelActiveAssist(Lcom/boldchat/visitor/api/ActiveAssistSession;)V
    .locals 3
    .param p1, "activeAssistSession"    # Lcom/boldchat/visitor/api/ActiveAssistSession;

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 518
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ActiveAssistID"

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/ActiveAssistSession;->getActiveAssistID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v1, "cancelActiveAssist"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 520
    return-void
.end method

.method public changeLanguage(Ljava/lang/String;Lcom/boldchat/visitor/api/LanguageChangeListener;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "languageChangeListener"    # Lcom/boldchat/visitor/api/LanguageChangeListener;

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 555
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Language"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "changeLanguage"

    new-instance v2, Lcom/boldchat/visitor/api/Chat$7;

    invoke-direct {v2, p0, p2}, Lcom/boldchat/visitor/api/Chat$7;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/LanguageChangeListener;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 573
    return-void
.end method

.method public emailChatHistory(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 544
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EmailAddress"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "emailChatHistory"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 546
    return-void
.end method

.method public finishChat(Lcom/boldchat/visitor/api/ChatFinishedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatFinishedListener;

    .prologue
    const/4 v4, 0x1

    .line 405
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 406
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ClientID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v1, v4}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->setCloseExpected(Z)V

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    invoke-virtual {v1, v4}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->setCloseExpected(Z)V

    .line 411
    :cond_1
    const-string v1, "finishChat"

    new-instance v2, Lcom/boldchat/visitor/api/Chat$4;

    invoke-direct {v2, p0, p1}, Lcom/boldchat/visitor/api/Chat$4;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatFinishedListener;)V

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;Z)V

    .line 434
    return-void
.end method

.method public getAccount()Lcom/boldchat/visitor/api/Account;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;

    return-object v0
.end method

.method public getAnswerTimeout()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/boldchat/visitor/api/Chat;->answerTimeout:I

    return v0
.end method

.method public getAnswered()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->answered:Ljava/util/Date;

    return-object v0
.end method

.method public getBrandings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->brandings:Ljava/util/Map;

    return-object v0
.end method

.method public getChatHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boldchat/visitor/api/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClientTimeout()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/boldchat/visitor/api/Chat;->clientTimeout:I

    return v0
.end method

.method public getEnded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;

    return-object v0
.end method

.method public getEndedReason()Lcom/boldchat/visitor/api/EndedReason;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->endedReason:Lcom/boldchat/visitor/api/EndedReason;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getStarted()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->started:Ljava/util/Date;

    return-object v0
.end method

.method public getTypers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/boldchat/visitor/api/Typer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUnavailableForm(Lcom/boldchat/visitor/api/ChatUnavailableListener;)V
    .locals 4
    .param p1, "chatUnavailableListener"    # Lcom/boldchat/visitor/api/ChatUnavailableListener;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 367
    .local v0, "params":Ljava/util/HashMap;
    const-string v1, "ClientID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "getUnavailableForm"

    new-instance v2, Lcom/boldchat/visitor/api/Chat$3;

    invoke-direct {v2, p0, p1}, Lcom/boldchat/visitor/api/Chat$3;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatUnavailableListener;)V

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;Z)V

    .line 389
    return-void
.end method

.method public getVisitorID()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->visitorID:J

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boldchat/visitor/api/Chat;->isTimedOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/Chat;->getEnded()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimedOut()Z
    .locals 8

    .prologue
    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 535
    .local v0, "current":J
    iget v2, p0, Lcom/boldchat/visitor/api/Chat;->clientTimeout:I

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/boldchat/visitor/api/Chat;->lastHeartbeat:J

    iget v6, p0, Lcom/boldchat/visitor/api/Chat;->clientTimeout:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pingChat(ZLcom/boldchat/visitor/api/ChatRecaptureListener;)V
    .locals 3
    .param p1, "chatClosed"    # Z
    .param p2, "recaptureListener"    # Lcom/boldchat/visitor/api/ChatRecaptureListener;

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 480
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Closed"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "pingChat"

    new-instance v2, Lcom/boldchat/visitor/api/Chat$6;

    invoke-direct {v2, p0, p2}, Lcom/boldchat/visitor/api/Chat$6;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatRecaptureListener;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 499
    return-void
.end method

.method public removeActiveAssistListener(Lcom/boldchat/visitor/api/ActiveAssistListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ActiveAssistListener;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeChatListener(Lcom/boldchat/visitor/api/ChatListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatListener;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessageListener(Lcom/boldchat/visitor/api/ChatMessageListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatMessageListener;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeQueueListener(Lcom/boldchat/visitor/api/ChatQueueListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatQueueListener;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeTyperListener(Lcom/boldchat/visitor/api/ChatTyperListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatTyperListener;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendMessage(Ljava/lang/String;)J
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 314
    .local v0, "messageID":J
    invoke-virtual {p0, p1, v0, v1}, Lcom/boldchat/visitor/api/Chat;->sendMessage(Ljava/lang/String;J)V

    .line 315
    return-wide v0
.end method

.method public sendMessage(Ljava/lang/String;J)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageID"    # J

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v10

    .line 327
    .local v10, "params":Ljava/util/HashMap;
    const-string v1, "ChatMessageID"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "Name"

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->visitorName:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "Message"

    invoke-virtual {v10, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/boldchat/visitor/api/Message;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sget-object v5, Lcom/boldchat/visitor/api/PersonType;->Visitor:Lcom/boldchat/visitor/api/PersonType;

    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat;->visitorName:Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/boldchat/visitor/api/Message;-><init>(Ljava/lang/String;JLjava/util/Date;Lcom/boldchat/visitor/api/PersonType;Ljava/lang/String;)V

    .line 333
    .local v0, "m":Lcom/boldchat/visitor/api/Message;
    const-string v1, "sendMessage"

    new-instance v2, Lcom/boldchat/visitor/api/Chat$2;

    invoke-direct {v2, p0, v10}, Lcom/boldchat/visitor/api/Chat$2;-><init>(Lcom/boldchat/visitor/api/Chat;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v10, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 356
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 357
    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 358
    .local v9, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/boldchat/visitor/api/ChatMessageListener;

    .line 359
    .local v8, "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    invoke-interface {v8, v0}, Lcom/boldchat/visitor/api/ChatMessageListener;->onPreliminaryMessageAdded(Lcom/boldchat/visitor/api/Message;)V

    goto :goto_0

    .line 361
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    .end local v9    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    return-void
.end method

.method public setVisitorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "visitorName"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat;->visitorName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setVisitorTyping(Z)V
    .locals 3
    .param p1, "visitorTyping"    # Z

    .prologue
    .line 290
    iget-boolean v1, p0, Lcom/boldchat/visitor/api/Chat;->visitorTyping:Z

    if-eq v1, p1, :cond_0

    .line 291
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/Chat;->visitorTyping:Z

    .line 292
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v0

    .line 293
    .local v0, "params":Ljava/util/HashMap;
    const-string v1, "IsTyping"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "visitorTyping"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 296
    .end local v0    # "params":Ljava/util/HashMap;
    :cond_0
    return-void
.end method

.method public startChat(Lcom/boldchat/visitor/api/ChatStartListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/boldchat/visitor/api/ChatStartListener;

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Chat;->clientID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/boldchat/visitor/api/Chat$1;

    invoke-direct {v1, p0}, Lcom/boldchat/visitor/api/Chat$1;-><init>(Lcom/boldchat/visitor/api/Chat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Lcom/boldchat/visitor/api/ChatStartListener;->onChatStarted()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "startChat"

    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;

    invoke-direct {v2, p0, p1}, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatStartListener;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    goto :goto_0
.end method

.method public submitPostChat(Lcom/boldchat/visitor/api/Form;Lcom/boldchat/visitor/api/PostChatSubmitListener;)V
    .locals 8
    .param p1, "postChat"    # Lcom/boldchat/visitor/api/Form;
    .param p2, "submitListener"    # Lcom/boldchat/visitor/api/PostChatSubmitListener;

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v4

    .line 442
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 443
    .local v0, "data":Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/FormField;

    .line 444
    .local v1, "field":Lcom/boldchat/visitor/api/FormField;
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 447
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 450
    .end local v1    # "field":Lcom/boldchat/visitor/api/FormField;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string v6, "Data"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v6, "submitPostChat"

    new-instance v7, Lcom/boldchat/visitor/api/Chat$5;

    invoke-direct {v7, p0, p2, p1}, Lcom/boldchat/visitor/api/Chat$5;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/PostChatSubmitListener;Lcom/boldchat/visitor/api/Form;)V

    invoke-direct {p0, v6, v4, v7}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 471
    return-void
.end method

.method public submitPreChat(Lcom/boldchat/visitor/api/Form;Lcom/boldchat/visitor/api/ChatStartListener;)V
    .locals 8
    .param p1, "formData"    # Lcom/boldchat/visitor/api/Form;
    .param p2, "listener"    # Lcom/boldchat/visitor/api/ChatStartListener;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v4

    .line 234
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 235
    .local v0, "data":Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/FormField;

    .line 236
    .local v1, "field":Lcom/boldchat/visitor/api/FormField;
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 242
    .end local v1    # "field":Lcom/boldchat/visitor/api/FormField;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string v6, "Data"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v6, "submitPreChat"

    new-instance v7, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;

    invoke-direct {v7, p0, p2}, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatStartListener;)V

    invoke-direct {p0, v6, v4, v7}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 244
    return-void
.end method

.method public submitUnavailableEmail(Lcom/boldchat/visitor/api/Form;)V
    .locals 5
    .param p1, "formData"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Chat;->getParamBase()Ljava/util/HashMap;

    move-result-object v2

    .line 273
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/FormField;

    .line 274
    .local v0, "field":Lcom/boldchat/visitor/api/FormField;
    const-string v3, "email"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v3, "From"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_1
    const-string v3, "subject"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    const-string v3, "Subject"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_2
    const-string v3, "body"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "Body"

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v0    # "field":Lcom/boldchat/visitor/api/FormField;
    :cond_3
    const-string v3, "submitUnavailableEmail"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 283
    return-void
.end method
