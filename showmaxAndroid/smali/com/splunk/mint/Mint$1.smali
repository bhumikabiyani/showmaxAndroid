.class final Lcom/splunk/mint/Mint$1;
.super Ljava/lang/Object;
.source "Mint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splunk/mint/Mint;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/splunk/mint/Mint$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/splunk/mint/Mint$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/splunk/mint/Mint$1;->val$apiKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/splunk/mint/Mint$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/splunk/mint/Properties;->initialize(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/splunk/mint/MintUrls;

    iget-object v1, p0, Lcom/splunk/mint/Mint$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/splunk/mint/Mint$1;->val$apiKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/splunk/mint/MintUrls;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    # invokes: Lcom/splunk/mint/Mint;->installExceptionHandler()V
    invoke-static {}, Lcom/splunk/mint/Mint;->access$000()V

    .line 93
    sget-boolean v0, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z

    if-nez v0, :cond_0

    .line 94
    # invokes: Lcom/splunk/mint/Mint;->initializeNetworkMonitoring()V
    invoke-static {}, Lcom/splunk/mint/Mint;->access$100()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/splunk/mint/Mint$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/splunk/mint/Mint;->startSession(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/splunk/mint/Mint;->flush()V

    .line 102
    return-void
.end method
