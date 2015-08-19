.class public final Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;
.super Ljava/io/InputStream;
.source "InputStreamMonitorKitKat.java"


# static fields
.field private static final IN_POSTFIX:Ljava/lang/String; = "-bytes-in"

.field private static final MAX_POSSIBLE_HEADER_LENGTH:I = 0x32


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

.field contentLengthFound:Z

.field private final counter:Lcom/splunk/mint/network/Counter;

.field private finishedReadingHeaders:Z

.field headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field monSocIm:Lcom/splunk/mint/network/socket/MonitoringSocketImpl;

.field private final original:Ljava/io/InputStream;

.field statusCodeFound:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/InputStream;Lcom/splunk/mint/network/socket/MonitoringSocketImpl;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;
    .param p3, "original"    # Ljava/io/InputStream;
    .param p4, "monSocIm"    # Lcom/splunk/mint/network/socket/MonitoringSocketImpl;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    .line 132
    iput-boolean v3, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->statusCodeFound:Z

    .line 133
    iput-boolean v3, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->contentLengthFound:Z

    .line 135
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->headers:Ljava/util/HashMap;

    .line 34
    iput-object p3, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->original:Ljava/io/InputStream;

    .line 35
    new-instance v0, Lcom/splunk/mint/network/Counter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-bytes-in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/splunk/mint/network/Counter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->counter:Lcom/splunk/mint/network/Counter;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->body:Ljava/lang/StringBuffer;

    .line 40
    iput-object p4, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->monSocIm:Lcom/splunk/mint/network/socket/MonitoringSocketImpl;

    .line 42
    iput-boolean v3, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    .line 44
    iget-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->counter:Lcom/splunk/mint/network/Counter;

    invoke-virtual {p2, v0}, Lcom/splunk/mint/network/MonitorRegistry;->add(Lcom/splunk/mint/network/Metric;)V

    .line 45
    return-void
.end method

.method private updateBody()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [B

    .line 115
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 119
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->body:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    .line 123
    invoke-virtual {p0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->tryToReadHeaders()V

    .line 126
    :cond_1
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
    .line 194
    iget-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->original:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    return-void
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
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
    .line 198
    iget-object v0, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->original:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 50
    .local v0, "value":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->counter:Lcom/splunk/mint/network/Counter;

    invoke-virtual {v1}, Lcom/splunk/mint/network/Counter;->inc()V

    .line 54
    :cond_0
    iget-boolean v1, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    if-nez v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-direct {p0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->updateBody()V

    .line 65
    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->original:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 71
    .local v1, "value":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->counter:Lcom/splunk/mint/network/Counter;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/splunk/mint/network/Counter;->inc(J)V

    .line 75
    :cond_0
    iget-boolean v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    if-nez v2, :cond_2

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    aget-byte v3, p1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->updateBody()V

    .line 87
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->original:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 93
    .local v1, "value":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->counter:Lcom/splunk/mint/network/Counter;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/splunk/mint/network/Counter;->inc(J)V

    .line 97
    :cond_0
    iget-boolean v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->finishedReadingHeaders:Z

    if-nez v2, :cond_2

    .line 98
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 99
    iget-object v2, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->chars:Ljava/util/List;

    aget-byte v3, p1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->updateBody()V

    .line 109
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public tryToReadHeaders()V
    .locals 11

    .prologue
    const/16 v10, 0x32

    .line 139
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 143
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 145
    iget-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->statusCodeFound:Z

    if-nez v7, :cond_1

    const-string v7, "HTTP/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ge v7, v10, :cond_1

    .line 147
    :try_start_1
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "parts":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 149
    .local v0, "array":[Ljava/lang/String;
    iget-object v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->headers:Ljava/util/HashMap;

    const-string v8, "splk-statuscode"

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->statusCodeFound:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .end local v0    # "array":[Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->contentLengthFound:Z

    if-nez v7, :cond_2

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v10, :cond_2

    .line 157
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 159
    .local v6, "start":I
    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "name":Ljava/lang/String;
    const-string v7, "Content-Length"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    const/4 v7, 0x1

    :try_start_3
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 167
    .restart local v0    # "array":[Ljava/lang/String;
    iget-object v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->headers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->contentLengthFound:Z
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    .end local v0    # "array":[Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "start":I
    :cond_2
    :goto_1
    :try_start_4
    iget-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->statusCodeFound:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->contentLengthFound:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v7, :cond_0

    .line 186
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->monSocIm:Lcom/splunk/mint/network/socket/MonitoringSocketImpl;

    if-eqz v7, :cond_4

    .line 187
    iget-object v7, p0, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->monSocIm:Lcom/splunk/mint/network/socket/MonitoringSocketImpl;

    invoke-virtual {v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->readingDone()V

    .line 190
    :cond_4
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "start":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 151
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "start":I
    :catch_2
    move-exception v7

    goto :goto_0
.end method
