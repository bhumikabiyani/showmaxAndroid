.class public interface abstract Lcom/showmax/lib/api/io/serviceinterface/LogService;
.super Ljava/lang/Object;
.source "LogService.java"


# virtual methods
.method public abstract sendEvent(Ljava/util/List;)Lretrofit/client/Response;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/showmax/lib/api/model/log/LogEvent;",
            ">;)",
            "Lretrofit/client/Response;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/m"
    .end annotation
.end method

.method public abstract sendEvent(Ljava/util/List;Lretrofit/Callback;)V
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/showmax/lib/api/model/log/LogEvent;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/m"
    .end annotation
.end method
