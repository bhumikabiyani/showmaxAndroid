.class final enum Lretrofit/RequestInterceptorTape$Command$3;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
