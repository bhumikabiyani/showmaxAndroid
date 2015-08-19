.class public final Lcom/splunk/mint/network/io/OutputStreamMonitor;
.super Ljava/io/OutputStream;
.source "OutputStreamMonitor.java"


# static fields
.field private static final MAX_POSSIBLE_HEADER_LENGTH:I = 0x32

.field public static final OUT_POSTFIX:Ljava/lang/String; = "-bytes-out"


# instance fields
.field private body:Ljava/lang/StringBuffer;

.field private chars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final counter:Lcom/splunk/mint/network/Counter;

.field private final original:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;
    .param p3, "original"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->original:Ljava/io/OutputStream;

    .line 26
    new-instance v0, Lcom/splunk/mint/network/Counter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-bytes-out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/splunk/mint/network/Counter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->counter:Lcom/splunk/mint/network/Counter;

    .line 27
    iget-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->counter:Lcom/splunk/mint/network/Counter;

    invoke-virtual {p2, v0}, Lcom/splunk/mint/network/MonitorRegistry;->add(Lcom/splunk/mint/network/Metric;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    .line 30
    return-void
.end method

.method private updateBody()V
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [B

    .line 62
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    iget-object v2, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->original:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 73
    return-void
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x32

    const/4 v10, 0x1

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v10, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_4

    .line 83
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/StringReader;

    iget-object v11, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v5, "in":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 85
    .local v6, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "host1Found":Z
    const/4 v4, 0x0

    .line 87
    .local v4, "host2Found":Z
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 89
    if-nez v3, :cond_1

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v13, :cond_1

    .line 90
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 92
    .local v9, "start":I
    const/4 v10, -0x1

    if-le v9, v10, :cond_1

    .line 93
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "name":Ljava/lang/String;
    const-string v10, "Host"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 98
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 99
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v3, 0x1

    .line 105
    .end local v0    # "array":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "start":I
    :cond_1
    if-nez v4, :cond_3

    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    :cond_2
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "parts":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 108
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v10, "splk-host2"

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v4, 0x1

    .line 113
    .end local v0    # "array":[Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 126
    .end local v3    # "host1Found":Z
    .end local v4    # "host2Found":Z
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->counter:Lcom/splunk/mint/network/Counter;

    invoke-virtual {v0}, Lcom/splunk/mint/network/Counter;->inc()V

    .line 35
    iget-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->original:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 36
    iget-object v0, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    int-to-byte v1, p1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->updateBody()V

    .line 38
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->counter:Lcom/splunk/mint/network/Counter;

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/splunk/mint/network/Counter;->inc(J)V

    .line 43
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->original:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    aget-byte v2, p1, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->updateBody()V

    .line 48
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->counter:Lcom/splunk/mint/network/Counter;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/splunk/mint/network/Counter;->inc(J)V

    .line 53
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->original:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 55
    iget-object v1, p0, Lcom/splunk/mint/network/io/OutputStreamMonitor;->chars:Ljava/util/List;

    aget-byte v2, p1, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->updateBody()V

    .line 58
    return-void
.end method
