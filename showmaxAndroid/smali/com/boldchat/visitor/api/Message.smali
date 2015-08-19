.class public Lcom/boldchat/visitor/api/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private created:Ljava/util/Date;

.field private messageID:J

.field private name:Ljava/lang/String;

.field private personID:J

.field private personType:Lcom/boldchat/visitor/api/PersonType;

.field private text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 3
    .param p1, "messageID"    # J
    .param p3, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Message;->messageID:J

    .line 32
    const-string v0, "Created"

    invoke-virtual {p3, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/Message;->created:Ljava/util/Date;

    .line 33
    const-string v0, "Text"

    invoke-virtual {p3, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/Message;->text:Ljava/lang/String;

    .line 34
    const-string v0, "PersonID"

    invoke-virtual {p3, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/boldchat/visitor/api/Message;->personID:J

    .line 35
    const-string v0, "PersonType"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boldchat/visitor/api/PersonType;->getPersonType(Ljava/lang/String;)Lcom/boldchat/visitor/api/PersonType;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/Message;->personType:Lcom/boldchat/visitor/api/PersonType;

    .line 36
    const-string v0, "Name"

    invoke-virtual {p3, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/Message;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLjava/util/Date;Lcom/boldchat/visitor/api/PersonType;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "messageID"    # J
    .param p4, "created"    # Ljava/util/Date;
    .param p5, "personType"    # Lcom/boldchat/visitor/api/PersonType;
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/boldchat/visitor/api/Message;->text:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/boldchat/visitor/api/Message;->messageID:J

    .line 25
    iput-object p4, p0, Lcom/boldchat/visitor/api/Message;->created:Ljava/util/Date;

    .line 26
    iput-object p5, p0, Lcom/boldchat/visitor/api/Message;->personType:Lcom/boldchat/visitor/api/PersonType;

    .line 27
    iput-object p6, p0, Lcom/boldchat/visitor/api/Message;->name:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boldchat/visitor/api/Message;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getMessageID()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Message;->messageID:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boldchat/visitor/api/Message;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonID()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Message;->personID:J

    return-wide v0
.end method

.method public getPersonType()Lcom/boldchat/visitor/api/PersonType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boldchat/visitor/api/Message;->personType:Lcom/boldchat/visitor/api/PersonType;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boldchat/visitor/api/Message;->text:Ljava/lang/String;

    return-object v0
.end method
