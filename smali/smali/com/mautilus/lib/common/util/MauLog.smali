.class public Lcom/mautilus/lib/common/util/MauLog;
.super Ljava/lang/Object;
.source "MauLog.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field public static final LEVEL:I = 0x2

.field public static final LOG_DEBUG_TAG:Ljava/lang/String; = "showmax"

.field public static final LOG_IS_DEBUG:Z = true

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 140
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mautilus/lib/common/util/MauLog;->EOL:Ljava/lang/String;

    .line 142
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mautilus/lib/common/util/MauLog;->_hexcodes:[C

    .line 147
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mautilus/lib/common/util/MauLog;->_shifts:[I

    return-void

    .line 142
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0x3c
        0x38
        0x34
        0x30
        0x2c
        0x28
        0x24
        0x20
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "showmax"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    const-string v0, "showmax"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    const-string v0, "showmax"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return-void
.end method

.method private static dump(B)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # B

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 249
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 251
    sget-object v2, Lcom/mautilus/lib/common/util/MauLog;->_hexcodes:[C

    sget-object v3, Lcom/mautilus/lib/common/util/MauLog;->_shifts:[I

    add-int/lit8 v4, v1, 0x6

    aget v3, v3, v4

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dump(J)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 238
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 240
    sget-object v2, Lcom/mautilus/lib/common/util/MauLog;->_hexcodes:[C

    sget-object v3, Lcom/mautilus/lib/common/util/MauLog;->_shifts:[I

    sget-object v4, Lcom/mautilus/lib/common/util/MauLog;->_shifts:[I

    array-length v4, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x8

    aget v3, v3, v4

    shr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "dataOrg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 260
    const-string v5, "\\s+"

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x50

    add-int/lit8 v3, v5, 0x2

    .line 263
    .local v3, "rowDataLng":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-int v2, v5, v3

    .line 264
    .local v2, "rowCount":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v4, v5, v3

    .line 266
    .local v4, "rowMod":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 268
    new-array v5, v9, [Ljava/lang/Object;

    mul-int v6, v1, v3

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    if-lez v4, :cond_1

    .line 273
    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_1
    return-void
.end method

.method public static dump([B)V
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->dump([BJI)V

    .line 169
    return-void
.end method

.method public static dump([BJI)V
    .locals 15
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "index"    # I

    .prologue
    const/16 v13, 0x10

    const/16 v12, 0x20

    .line 176
    if-ltz p3, :cond_0

    array-length v9, p0

    move/from16 v0, p3

    if-lt v0, v9, :cond_1

    .line 178
    :cond_0
    new-instance v9, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " into array of length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 180
    :cond_1
    move/from16 v0, p3

    int-to-long v10, v0

    add-long v4, p1, v10

    .line 182
    .local v4, "display_offset":J
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v9, 0x4a

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move/from16 v6, p3

    .local v6, "j":I
    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_7

    .line 186
    array-length v9, p0

    sub-int v3, v9, v6

    .line 187
    .local v3, "chars_read":I
    if-le v3, v13, :cond_2

    .line 189
    const/16 v3, 0x10

    .line 192
    :cond_2
    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->dump(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v7, v13, :cond_4

    .line 195
    if-ge v7, v3, :cond_3

    .line 197
    add-int v9, v7, v6

    aget-byte v9, p0, v9

    invoke-static {v9}, Lcom/mautilus/lib/common/util/MauLog;->dump(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :goto_2
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 201
    :cond_3
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 205
    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_6

    .line 207
    add-int v9, v7, v6

    aget-byte v9, p0, v9

    if-lt v9, v12, :cond_5

    add-int v9, v7, v6

    aget-byte v9, p0, v9

    const/16 v10, 0x7f

    if-ge v9, v10, :cond_5

    .line 209
    add-int v9, v7, v6

    aget-byte v9, p0, v9

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 213
    :cond_5
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 219
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 223
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 224
    int-to-long v10, v3

    add-long/2addr v4, v10

    .line 184
    add-int/lit8 v6, v6, 0x10

    goto :goto_0

    .line 227
    .end local v3    # "chars_read":I
    .end local v7    # "k":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "msgFormat"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "showmax"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return-void
.end method

.method public static varargs e(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    const-string v0, "showmax"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "showmax"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    const-string v0, "showmax"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    const-string v0, "showmax"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "showmax"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 43
    const-string v0, "showmax"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    const-string v0, "showmax"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void
.end method

.method public static varargs v(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "log"    # Z
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 59
    invoke-static {p1, p2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    const-string v0, "showmax"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
