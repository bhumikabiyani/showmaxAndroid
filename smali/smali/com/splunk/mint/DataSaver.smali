.class Lcom/splunk/mint/DataSaver;
.super Lcom/splunk/mint/BaseExecutor;
.source "DataSaver.java"

# interfaces
.implements Lcom/splunk/mint/InterfaceExecutor;


# static fields
.field private static final LAST_SAVED_NAME:Ljava/lang/String; = "/Mint-lastsavedfile"

.field private static final MAX_FILE_SIZE:I = 0x222e0


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/splunk/mint/BaseExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/splunk/mint/DataSaver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/splunk/mint/DataSaver;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/splunk/mint/DataSaver;->getLastSavedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/splunk/mint/DataSaver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/splunk/mint/DataSaver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/splunk/mint/DataSaver;->saveLastSavedName(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getLastSavedName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Mint-lastsavedfile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v1, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/splunk/mint/Utils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 96
    :goto_0
    monitor-exit p0

    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized saveLastSavedName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Mint-lastsavedfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 115
    .local v0, "bos":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    .end local v0    # "bos":Ljava/io/BufferedWriter;
    .local v1, "bos":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    if-eqz v1, :cond_4

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 132
    .end local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v0    # "bos":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "bos":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 127
    .restart local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 129
    .end local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v0    # "bos":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 120
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    const-string v4, "There was a problem saving the last saved file name"

    invoke-static {v4}, Lcom/splunk/mint/Logger;->logWarning(Ljava/lang/String;)V

    .line 121
    sget-boolean v4, Lcom/splunk/mint/Mint;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    :cond_2
    if-eqz v0, :cond_1

    .line 126
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 127
    :catch_3
    move-exception v2

    .line 128
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 124
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v0, :cond_3

    .line 126
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 129
    :cond_3
    :goto_4
    :try_start_b
    throw v4

    .line 127
    :catch_4
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 124
    .end local v0    # "bos":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v0    # "bos":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 119
    .end local v0    # "bos":Ljava/io/BufferedWriter;
    .restart local v1    # "bos":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v0    # "bos":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedWriter;
    .restart local v1    # "bos":Ljava/io/BufferedWriter;
    :cond_4
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedWriter;
    .restart local v0    # "bos":Ljava/io/BufferedWriter;
    goto :goto_1
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/splunk/mint/DataSaver;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/splunk/mint/DataSaver;->executor:Ljava/util/concurrent/ExecutorService;

    .line 138
    :cond_0
    sget-object v0, Lcom/splunk/mint/DataSaver;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized save(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/splunk/mint/LowPriorityThreadFactory;

    invoke-direct {v1}, Lcom/splunk/mint/LowPriorityThreadFactory;-><init>()V

    new-instance v2, Lcom/splunk/mint/DataSaver$1;

    invoke-direct {v2, p0, p1}, Lcom/splunk/mint/DataSaver$1;-><init>(Lcom/splunk/mint/DataSaver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/splunk/mint/LowPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 84
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/splunk/mint/DataSaver;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/splunk/mint/DataSaver;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 19
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
