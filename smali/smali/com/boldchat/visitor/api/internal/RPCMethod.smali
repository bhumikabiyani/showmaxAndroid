.class public Lcom/boldchat/visitor/api/internal/RPCMethod;
.super Ljava/lang/Object;
.source "RPCMethod.java"


# instance fields
.field private listener:Lcom/boldchat/visitor/api/internal/ResultListener;

.field private method:Ljava/lang/String;

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 0
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
    .line 16
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->method:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->params:Ljava/util/HashMap;

    .line 19
    iput-object p3, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    .line 20
    return-void
.end method


# virtual methods
.method public getListener()Lcom/boldchat/visitor/api/internal/ResultListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
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
    .line 27
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/RPCMethod;->params:Ljava/util/HashMap;

    return-object v0
.end method
