.class public Lcom/flurry/android/monolithic/sdk/impl/aeb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 25
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aec;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aec;-><init>(Ljava/lang/Object;I)V

    return-object v1
.end method
