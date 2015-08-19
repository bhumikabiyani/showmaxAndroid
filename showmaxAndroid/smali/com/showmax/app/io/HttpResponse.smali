.class public Lcom/showmax/app/io/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field public static final RESULT_CODE_200_OK:I = 0xc8

.field public static final RESULT_CODE_201_CREATED:I = 0xc9

.field public static final RESULT_CODE_400_BAD_REQUEST:I = 0x190

.field public static final RESULT_CODE_401_UNAUTHORIZED:I = 0x191

.field public static final RESULT_CODE_402_PAYMENT_REQUIRED:I = 0x192

.field public static final RESULT_CODE_403_FORBIDDEN:I = 0x193

.field public static final RESULT_CODE_404_NOT_FOUND:I = 0x194

.field public static final RESULT_CODE_408_TIMEOUT:I = 0x198

.field public static final RESULT_CODE_500_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final RESULT_CODE_666_UNKNOWN_ERROR:I = 0x29a

.field public static final RESULT_CODE_DEFAULT:I = -0x1


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/showmax/app/io/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lcom/showmax/app/io/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/io/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/showmax/app/io/HttpResponse;->mResultCode:I

    .line 55
    iput-object p2, p0, Lcom/showmax/app/io/HttpResponse;->mResponse:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/showmax/app/io/HttpResponse;->mErrorMessage:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/showmax/app/io/HttpResponse;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRespond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/showmax/app/io/HttpResponse;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/showmax/app/io/HttpResponse;->mResultCode:I

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/showmax/app/io/HttpResponse;->mErrorMessage:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/showmax/app/io/HttpResponse;->mResponse:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/showmax/app/io/HttpResponse;->mResultCode:I

    .line 66
    return-void
.end method
