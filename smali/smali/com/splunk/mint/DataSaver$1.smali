.class Lcom/splunk/mint/DataSaver$1;
.super Ljava/lang/Object;
.source "DataSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splunk/mint/DataSaver;->save(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splunk/mint/DataSaver;

.field final synthetic val$jsonData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/splunk/mint/DataSaver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/splunk/mint/DataSaver$1;->this$0:Lcom/splunk/mint/DataSaver;

    iput-object p2, p0, Lcom/splunk/mint/DataSaver$1;->val$jsonData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 25
    const/4 v4, 0x0

    .line 27
    .local v4, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/splunk/mint/DataSaver$1;->this$0:Lcom/splunk/mint/DataSaver;

    # invokes: Lcom/splunk/mint/DataSaver;->getLastSavedName()Ljava/lang/String;
    invoke-static {v6}, Lcom/splunk/mint/DataSaver;->access$000(Lcom/splunk/mint/DataSaver;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "lastName":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 29
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-static {}, Lcom/splunk/mint/SplunkFileFilter;->createNewFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v4    # "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x222e0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 35
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-static {}, Lcom/splunk/mint/SplunkFileFilter;->createNewFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .restart local v4    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Lcom/splunk/mint/DataSaverResponse;

    iget-object v6, p0, Lcom/splunk/mint/DataSaver$1;->val$jsonData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/splunk/mint/DataSaverResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v2, "dsr":Lcom/splunk/mint/DataSaverResponse;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 51
    .local v0, "bWritter":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v0    # "bWritter":Ljava/io/BufferedWriter;
    .local v1, "bWritter":Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v6, p0, Lcom/splunk/mint/DataSaver$1;->val$jsonData:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 53
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 54
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 55
    iget-object v6, p0, Lcom/splunk/mint/DataSaver$1;->this$0:Lcom/splunk/mint/DataSaver;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/splunk/mint/DataSaver;->saveLastSavedName(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/splunk/mint/DataSaver;->access$100(Lcom/splunk/mint/DataSaver;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    if-eqz v1, :cond_2

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 74
    :cond_2
    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/splunk/mint/DataSaverResponse;->setSavedSuccessfully(Ljava/lang/Boolean;)V

    .line 75
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v6, :cond_9

    .line 76
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v6, v2}, Lcom/splunk/mint/MintCallback;->dataSaverResponse(Lcom/splunk/mint/DataSaverResponse;)V

    move-object v0, v1

    .line 80
    .end local v1    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v0    # "bWritter":Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    return-void

    .line 31
    .end local v0    # "bWritter":Ljava/io/BufferedWriter;
    .end local v2    # "dsr":Lcom/splunk/mint/DataSaverResponse;
    :cond_4
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "file":Ljava/io/File;
    goto :goto_0

    .line 43
    .restart local v2    # "dsr":Lcom/splunk/mint/DataSaverResponse;
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bWritter":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v3

    .line 70
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    .end local v1    # "bWritter":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bWritter":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v3

    .line 57
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    invoke-virtual {v2, v3}, Lcom/splunk/mint/DataSaverResponse;->setException(Ljava/lang/Exception;)V

    .line 59
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/splunk/mint/DataSaverResponse;->setSavedSuccessfully(Ljava/lang/Boolean;)V

    .line 60
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v6, :cond_5

    .line 61
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v6, v2}, Lcom/splunk/mint/MintCallback;->dataSaverResponse(Lcom/splunk/mint/DataSaverResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :cond_5
    if-eqz v0, :cond_6

    .line 68
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 74
    :cond_6
    :goto_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/splunk/mint/DataSaverResponse;->setSavedSuccessfully(Ljava/lang/Boolean;)V

    .line 75
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v6, :cond_3

    .line 76
    sget-object v6, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v6, v2}, Lcom/splunk/mint/MintCallback;->dataSaverResponse(Lcom/splunk/mint/DataSaverResponse;)V

    goto :goto_3

    .line 69
    :catch_3
    move-exception v3

    .line 70
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_7

    .line 68
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 74
    :cond_7
    :goto_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/splunk/mint/DataSaverResponse;->setSavedSuccessfully(Ljava/lang/Boolean;)V

    .line 75
    sget-object v7, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v7, :cond_8

    .line 76
    sget-object v7, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    invoke-interface {v7, v2}, Lcom/splunk/mint/MintCallback;->dataSaverResponse(Lcom/splunk/mint/DataSaverResponse;)V

    :cond_8
    throw v6

    .line 69
    :catch_4
    move-exception v3

    .line 70
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 66
    .end local v0    # "bWritter":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bWritter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v0    # "bWritter":Ljava/io/BufferedWriter;
    goto :goto_6

    .line 56
    .end local v0    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v1    # "bWritter":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v0    # "bWritter":Ljava/io/BufferedWriter;
    goto :goto_4

    .end local v0    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v1    # "bWritter":Ljava/io/BufferedWriter;
    :cond_9
    move-object v0, v1

    .end local v1    # "bWritter":Ljava/io/BufferedWriter;
    .restart local v0    # "bWritter":Ljava/io/BufferedWriter;
    goto :goto_3
.end method
