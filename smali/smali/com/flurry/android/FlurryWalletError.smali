.class public Lcom/flurry/android/FlurryWalletError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/flurry/android/FlurryWalletError;->a:I

    .line 13
    iput-object p2, p0, Lcom/flurry/android/FlurryWalletError;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/android/FlurryWalletError;->a:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/FlurryWalletError;->b:Ljava/lang/String;

    return-object v0
.end method
