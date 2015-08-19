.class public final Lcom/flurry/android/monolithic/sdk/impl/aac;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/flurry/android/monolithic/sdk/impl/aac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aac;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aac;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aac;->a:Lcom/flurry/android/monolithic/sdk/impl/aac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Number;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(I)V

    .line 149
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aac;->a(Ljava/lang/Number;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method
