.class public final enum Lcom/showmax/app/io/HttpRequest$RequestType;
.super Ljava/lang/Enum;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/io/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/io/HttpRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/io/HttpRequest$RequestType;

.field public static final enum DELETE:Lcom/showmax/app/io/HttpRequest$RequestType;

.field public static final enum GET:Lcom/showmax/app/io/HttpRequest$RequestType;

.field public static final enum POST:Lcom/showmax/app/io/HttpRequest$RequestType;

.field public static final enum PUT:Lcom/showmax/app/io/HttpRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/io/HttpRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->GET:Lcom/showmax/app/io/HttpRequest$RequestType;

    new-instance v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/io/HttpRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->POST:Lcom/showmax/app/io/HttpRequest$RequestType;

    new-instance v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/io/HttpRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->PUT:Lcom/showmax/app/io/HttpRequest$RequestType;

    new-instance v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/io/HttpRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->DELETE:Lcom/showmax/app/io/HttpRequest$RequestType;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/app/io/HttpRequest$RequestType;

    sget-object v1, Lcom/showmax/app/io/HttpRequest$RequestType;->GET:Lcom/showmax/app/io/HttpRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/app/io/HttpRequest$RequestType;->POST:Lcom/showmax/app/io/HttpRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/io/HttpRequest$RequestType;->PUT:Lcom/showmax/app/io/HttpRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/io/HttpRequest$RequestType;->DELETE:Lcom/showmax/app/io/HttpRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->$VALUES:[Lcom/showmax/app/io/HttpRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/io/HttpRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/io/HttpRequest$RequestType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->$VALUES:[Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v0}, [Lcom/showmax/app/io/HttpRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/io/HttpRequest$RequestType;

    return-object v0
.end method
