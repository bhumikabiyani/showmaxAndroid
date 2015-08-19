.class final Lcom/flurry/android/monolithic/sdk/impl/ap;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/an;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/an;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ap;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/an;Lcom/flurry/android/monolithic/sdk/impl/ao;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ap;-><init>(Lcom/flurry/android/monolithic/sdk/impl/an;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ap;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->a(Lcom/flurry/android/monolithic/sdk/impl/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ap;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->c(Lcom/flurry/android/monolithic/sdk/impl/an;)V

    .line 149
    :cond_0
    return-void
.end method
