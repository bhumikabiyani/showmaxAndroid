.class public Lcom/boldchat/visitor/api/Typer;
.super Ljava/lang/Object;
.source "Typer.java"


# instance fields
.field public imageURL:Ljava/lang/String;

.field public isTyping:Z

.field public name:Ljava/lang/String;

.field public personID:J

.field public personType:Lcom/boldchat/visitor/api/PersonType;


# direct methods
.method protected constructor <init>(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 1
    .param p1, "personID"    # J
    .param p3, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/boldchat/visitor/api/Typer;->personID:J

    .line 20
    invoke-virtual {p0, p3}, Lcom/boldchat/visitor/api/Typer;->update(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boldchat/visitor/api/Typer;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boldchat/visitor/api/Typer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonID()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/boldchat/visitor/api/Typer;->personID:J

    return-wide v0
.end method

.method public getPersonType()Lcom/boldchat/visitor/api/PersonType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boldchat/visitor/api/Typer;->personType:Lcom/boldchat/visitor/api/PersonType;

    return-object v0
.end method

.method public isTyping()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/Typer;->isTyping:Z

    return v0
.end method

.method protected update(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 24
    const-string v4, "Name"

    invoke-virtual {p1, v4, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "name":Ljava/lang/String;
    const-string v4, "PersonType"

    invoke-virtual {p1, v4, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "personType":Ljava/lang/String;
    const-string v4, "IsTyping"

    invoke-virtual {p1, v4, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "isTyping":Ljava/lang/String;
    const-string v4, "ImageURL"

    invoke-virtual {p1, v4, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "imageURL":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 30
    iput-object v2, p0, Lcom/boldchat/visitor/api/Typer;->name:Ljava/lang/String;

    .line 31
    :cond_0
    if-eqz v3, :cond_1

    .line 32
    invoke-static {v3}, Lcom/boldchat/visitor/api/PersonType;->getPersonType(Ljava/lang/String;)Lcom/boldchat/visitor/api/PersonType;

    move-result-object v4

    iput-object v4, p0, Lcom/boldchat/visitor/api/Typer;->personType:Lcom/boldchat/visitor/api/PersonType;

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/boldchat/visitor/api/Typer;->isTyping:Z

    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    iput-object v0, p0, Lcom/boldchat/visitor/api/Typer;->imageURL:Ljava/lang/String;

    .line 37
    :cond_3
    return-void
.end method
