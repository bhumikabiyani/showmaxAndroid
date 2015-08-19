.class Lcom/splunk/mint/DataFlusher$1;
.super Ljava/lang/Object;
.source "DataFlusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splunk/mint/DataFlusher;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splunk/mint/DataFlusher;


# direct methods
.method constructor <init>(Lcom/splunk/mint/DataFlusher;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/splunk/mint/DataFlusher$1;->this$0:Lcom/splunk/mint/DataFlusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 19
    sget-object v10, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 20
    const-string v10, "Files path is not set yet, will not flush!"

    invoke-static {v10}, Lcom/splunk/mint/Logger;->logError(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance v4, Ljava/io/File;

    sget-object v10, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v4, "filesPath":Ljava/io/File;
    invoke-static {}, Lcom/splunk/mint/SplunkFileFilter;->getInstance()Lcom/splunk/mint/SplunkFileFilter;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 28
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 29
    .local v2, "file":Ljava/io/File;
    new-instance v8, Lcom/splunk/mint/NetSenderResponse;

    invoke-static {}, Lcom/splunk/mint/MintUrls;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v13}, Lcom/splunk/mint/NetSenderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v8, "nsr":Lcom/splunk/mint/NetSenderResponse;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 31
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "There is no data to be sent. This is not an error."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/splunk/mint/NetSenderResponse;->setException(Ljava/lang/Exception;)V

    .line 32
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/splunk/mint/NetSenderResponse;->setSentSuccessfully(Ljava/lang/Boolean;)V

    .line 28
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    :cond_3
    const/4 v6, 0x0

    .line 37
    .local v6, "jsonData":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/splunk/mint/Utils;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 47
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    .line 49
    :cond_5
    sget-object v10, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v10, :cond_2

    .line 50
    sget-object v10, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v10, v8}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V

    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v1}, Lcom/splunk/mint/NetSenderResponse;->setException(Ljava/lang/Exception;)V

    .line 40
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/splunk/mint/NetSenderResponse;->setSentSuccessfully(Ljava/lang/Boolean;)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    sget-object v10, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v10, :cond_4

    .line 43
    sget-object v10, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v10, v8}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V

    goto :goto_2

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v10, Lcom/splunk/mint/NetSender;

    invoke-direct {v10}, Lcom/splunk/mint/NetSender;-><init>()V

    invoke-virtual {v10, v13, v6, v12}, Lcom/splunk/mint/NetSender;->sendBlocking(Ljava/lang/String;Ljava/lang/String;Z)Lcom/splunk/mint/NetSenderResponse;

    move-result-object v9

    .line 55
    .local v9, "sendResult":Lcom/splunk/mint/NetSenderResponse;
    invoke-virtual {v9}, Lcom/splunk/mint/NetSenderResponse;->getSentSuccessfully()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
