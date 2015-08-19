.class public Lcom/boldchat/visitor/api/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lcom/boldchat/visitor/api/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 102
    const/16 v0, 0x69

    iput-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    .line 103
    const/16 v0, 0xc8

    new-array v0, v0, [Lcom/boldchat/visitor/api/json/JSONObject;

    iput-object v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->stack:[Lcom/boldchat/visitor/api/json/JSONObject;

    .line 104
    iput v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    .line 105
    iput-object p1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    .line 106
    return-void
.end method

.method private append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6f

    const/16 v2, 0x61

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-eq v1, v3, :cond_1

    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_4

    .line 121
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_2

    .line 122
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-ne v1, v3, :cond_3

    .line 129
    const/16 v1, 0x6b

    iput-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    .line 131
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 132
    return-object p0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v1, v0}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Value out of sequence."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private end(CC)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 3
    .param p1, "mode"    # C
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-eq v1, p1, :cond_1

    .line 167
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    const/16 v1, 0x61

    if-ne p1, v1, :cond_0

    const-string v1, "Misplaced endArray."

    :goto_0
    invoke-direct {v2, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v1, "Misplaced endObject."

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/json/JSONWriter;->pop(C)V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 178
    return-object p0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v1, v0}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6b

    const/16 v1, 0x61

    .line 267
    iget v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    if-gtz v3, :cond_0

    .line 268
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->stack:[Lcom/boldchat/visitor/api/json/JSONObject;

    iget v4, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    move v0, v1

    .line 271
    .local v0, "m":C
    :goto_0
    if-eq v0, p1, :cond_2

    .line 272
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "m":C
    :cond_1
    move v0, v2

    .line 270
    goto :goto_0

    .line 274
    .restart local v0    # "m":C
    :cond_2
    iget v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    .line 275
    iget v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    if-nez v3, :cond_4

    const/16 v1, 0x64

    :cond_3
    :goto_1
    iput-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    .line 280
    return-void

    .line 275
    :cond_4
    iget-object v3, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->stack:[Lcom/boldchat/visitor/api/json/JSONObject;

    iget v4, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method private push(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lcom/boldchat/visitor/api/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    iget v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 290
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->stack:[Lcom/boldchat/visitor/api/json/JSONObject;

    iget v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    .line 293
    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    .line 294
    iget v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    .line 295
    return-void

    .line 293
    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->push(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 150
    const-string v0, "["

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 152
    return-object p0

    .line 154
    :cond_1
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lcom/boldchat/visitor/api/json/JSONWriter;->end(CC)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lcom/boldchat/visitor/api/json/JSONWriter;->end(CC)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    iget-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->stack:[Lcom/boldchat/visitor/api/json/JSONObject;

    iget v2, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->top:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 219
    iget-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 225
    const/16 v1, 0x6f

    iput-char v1, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-object p0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v1, v0}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Misplaced key."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public object()Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 246
    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 247
    iput-char v2, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    .line 249
    :cond_0
    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 250
    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;

    .line 251
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->push(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/json/JSONWriter;->comma:Z

    .line 253
    return-object p0

    .line 255
    :cond_2
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lcom/boldchat/visitor/api/json/JSONWriter;
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONWriter;->append(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
