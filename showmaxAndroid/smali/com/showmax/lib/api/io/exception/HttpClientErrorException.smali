.class public Lcom/showmax/lib/api/io/exception/HttpClientErrorException;
.super Ljava/lang/Exception;
.source "HttpClientErrorException.java"


# static fields
.field private static final serialVersionUID:J = 0x68f128fb2beff550L


# instance fields
.field private mResponse:Lretrofit/client/Response;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILretrofit/client/Response;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "response"    # Lretrofit/client/Response;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput p2, p0, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;->mStatusCode:I

    .line 30
    iput-object p3, p0, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;->mResponse:Lretrofit/client/Response;

    .line 31
    return-void
.end method


# virtual methods
.method public getResponse()Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;->mResponse:Lretrofit/client/Response;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;->mStatusCode:I

    return v0
.end method
