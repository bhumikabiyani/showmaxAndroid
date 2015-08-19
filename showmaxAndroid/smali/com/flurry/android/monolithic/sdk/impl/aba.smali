.class public Lcom/flurry/android/monolithic/sdk/impl/aba;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/flurry/android/monolithic/sdk/impl/aba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aba;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aba;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aba;->a:Lcom/flurry/android/monolithic/sdk/impl/aba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aba;->a(Ljava/util/Calendar;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public a(Ljava/util/Calendar;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(JLcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 34
    return-void
.end method
