.class public Lcom/boldchat/visitor/api/Account;
.super Ljava/lang/Object;
.source "Account.java"


# static fields
.field private static final AVAILABILITY_MAX:I = 0xea60

.field private static lastAvailabilityCheck:J

.field private static lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;


# instance fields
.field private accountID:J

.field private apiAccessKey:Ljava/lang/String;

.field private chatWindowID:J

.field private departmentID:J

.field private extraData:Ljava/util/Map;
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

.field private language:Ljava/lang/String;

.field private serverSet:Ljava/lang/String;

.field private skipPreChat:Z

.field private timeout:I

.field private visitorID:J

.field private websiteDefinitionID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/boldchat/visitor/api/Account;->lastAvailabilityCheck:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "accountID"    # J
    .param p3, "apiAccessKey"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/Account;->skipPreChat:Z

    .line 36
    const/16 v0, 0x7530

    iput v0, p0, Lcom/boldchat/visitor/api/Account;->timeout:I

    .line 45
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Account;->accountID:J

    .line 46
    iput-object p3, p0, Lcom/boldchat/visitor/api/Account;->apiAccessKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/boldchat/visitor/api/json/JSONObject;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 22
    sput-object p0, Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;

    return-object p0
.end method

.method private getParamBase()Ljava/util/HashMap;
    .locals 6
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
    const-wide/16 v4, 0x0

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v0, "params":Ljava/util/HashMap;
    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->visitorID:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 284
    const-string v1, "VisitorID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->visitorID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->departmentID:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 286
    const-string v1, "DepartmentID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->departmentID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_1
    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->chatWindowID:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 288
    const-string v1, "ChatWindowID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->chatWindowID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2
    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->websiteDefinitionID:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 290
    const-string v1, "WebsiteID"

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->websiteDefinitionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/boldchat/visitor/api/Account;->extraData:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 292
    const-string v1, "Data"

    new-instance v2, Lcom/boldchat/visitor/api/json/JSONObject;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Account;->extraData:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_4
    const-string v1, "SkipPreChat"

    iget-boolean v2, p0, Lcom/boldchat/visitor/api/Account;->skipPreChat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object v0
.end method


# virtual methods
.method public createChat(Lcom/boldchat/visitor/api/CreateChatListener;)V
    .locals 1
    .param p1, "createChatListener"    # Lcom/boldchat/visitor/api/CreateChatListener;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/Account;->createChat(Lcom/boldchat/visitor/api/CreateChatListener;Z)V

    .line 117
    return-void
.end method

.method public createChat(Lcom/boldchat/visitor/api/CreateChatListener;Z)V
    .locals 11
    .param p1, "createChatListener"    # Lcom/boldchat/visitor/api/CreateChatListener;
    .param p2, "includeBrandingValues"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Account;->getParamBase()Ljava/util/HashMap;

    move-result-object v8

    .line 129
    .local v8, "params":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 131
    .local v10, "locale":Ljava/util/Locale;
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    .line 140
    .end local v10    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "Language"

    iget-object v2, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    const-string v1, "IncludeBrandingValues"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;

    iget v1, p0, Lcom/boldchat/visitor/api/Account;->timeout:I

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->accountID:J

    iget-object v4, p0, Lcom/boldchat/visitor/api/Account;->apiAccessKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/boldchat/visitor/api/Account;->serverSet:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "createChat"

    new-instance v9, Lcom/boldchat/visitor/api/Account$1;

    invoke-direct {v9, p0, p1}, Lcom/boldchat/visitor/api/Account$1;-><init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/CreateChatListener;)V

    invoke-direct/range {v0 .. v9}, Lcom/boldchat/visitor/api/internal/RestAPIRequest;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 173
    .local v0, "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 174
    return-void

    .line 135
    .end local v0    # "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    .restart local v10    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccountID()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Account;->accountID:J

    return-wide v0
.end method

.method public getApiAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/boldchat/visitor/api/Account;->apiAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChatAvailability(Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V
    .locals 10
    .param p1, "availabilityListener"    # Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/boldchat/visitor/api/Account;->getParamBase()Ljava/util/HashMap;

    move-result-object v8

    .line 183
    .local v8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Lcom/boldchat/visitor/api/Account$2;

    invoke-direct {v9, p0, p1}, Lcom/boldchat/visitor/api/Account$2;-><init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V

    .line 207
    .local v9, "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    sget-object v1, Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/boldchat/visitor/api/Account;->lastAvailabilityCheck:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 208
    :cond_0
    new-instance v0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;

    iget v1, p0, Lcom/boldchat/visitor/api/Account;->timeout:I

    iget-wide v2, p0, Lcom/boldchat/visitor/api/Account;->accountID:J

    iget-object v4, p0, Lcom/boldchat/visitor/api/Account;->apiAccessKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/boldchat/visitor/api/Account;->serverSet:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getChatAvailability"

    invoke-direct/range {v0 .. v9}, Lcom/boldchat/visitor/api/internal/RestAPIRequest;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 209
    .local v0, "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/boldchat/visitor/api/Account;->lastAvailabilityCheck:J

    .line 210
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 215
    .end local v0    # "request":Lcom/boldchat/visitor/api/internal/RestAPIRequest;
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using cached result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-interface {v9, v1}, Lcom/boldchat/visitor/api/internal/ResultListener;->success(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_0
.end method

.method protected getServerSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/boldchat/visitor/api/Account;->serverSet:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/boldchat/visitor/api/Account;->timeout:I

    return v0
.end method

.method public setChatWindowID(J)V
    .locals 1
    .param p1, "chatWindowID"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Account;->chatWindowID:J

    .line 77
    return-void
.end method

.method public setDepartmentID(J)V
    .locals 1
    .param p1, "departmentID"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Account;->departmentID:J

    .line 68
    return-void
.end method

.method public setExtraData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/boldchat/visitor/api/Account;->extraData:Ljava/util/Map;

    .line 266
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/boldchat/visitor/api/Account;->language:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setServerSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSet"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/boldchat/visitor/api/Account;->serverSet:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSkipPreChat(Z)V
    .locals 0
    .param p1, "skipPreChat"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/Account;->skipPreChat:Z

    .line 274
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/boldchat/visitor/api/Account;->timeout:I

    .line 106
    return-void
.end method

.method public setVisitorID(J)V
    .locals 1
    .param p1, "visitorID"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Account;->visitorID:J

    .line 58
    return-void
.end method

.method public setWebsiteDefinitionID(J)V
    .locals 1
    .param p1, "websiteDefinitionID"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Account;->websiteDefinitionID:J

    .line 86
    return-void
.end method
