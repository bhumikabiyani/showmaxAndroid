.class public Lcom/showmax/lib/api/io/exception/HttpUnauthorizedException;
.super Lcom/showmax/lib/api/io/exception/HttpClientErrorException;
.source "HttpUnauthorizedException.java"


# static fields
.field public static final HTTP_RETURN_CODE_UNAUTHORIZED:I = 0x191

.field private static final serialVersionUID:J = 0x43785faab5650d49L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lretrofit/client/Response;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 26
    const/16 v0, 0x191

    invoke-direct {p0, p1, v0, p2}, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;-><init>(Ljava/lang/String;ILretrofit/client/Response;)V

    .line 27
    return-void
.end method
