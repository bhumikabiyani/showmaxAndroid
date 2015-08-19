.class public Lcom/flurry/android/FlurryWalletInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/flurry/android/FlurryWalletInfo;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/flurry/android/FlurryWalletInfo;->b:F

    .line 15
    return-void
.end method


# virtual methods
.method public getCurrencyAmount()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/flurry/android/FlurryWalletInfo;->b:F

    return v0
.end method

.method public getCurrencyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/android/FlurryWalletInfo;->a:Ljava/lang/String;

    return-object v0
.end method
