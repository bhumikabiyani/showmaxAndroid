.class public Lcom/flurry/android/monolithic/sdk/impl/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hy;->a:I

    .line 9
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hy;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hy;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hy;->b:Ljava/lang/String;

    return-object v0
.end method
