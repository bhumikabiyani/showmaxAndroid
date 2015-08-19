.class public Lcom/mautilus/lib/common/util/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mautilus/lib/common/util/L$Config;
    }
.end annotation


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I

.field private static volatile instance:Lcom/mautilus/lib/common/util/L;


# instance fields
.field private mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 267
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mautilus/lib/common/util/L;->EOL:Ljava/lang/String;

    .line 269
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mautilus/lib/common/util/L;->_hexcodes:[C

    .line 271
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mautilus/lib/common/util/L;->_shifts:[I

    return-void

    .line 269
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

    .line 271
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

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "mau-log"

    iput-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    return-void
.end method

.method private canWrite(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dump(B)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # B

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 361
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 363
    sget-object v2, Lcom/mautilus/lib/common/util/L;->_hexcodes:[C

    sget-object v3, Lcom/mautilus/lib/common/util/L;->_shifts:[I

    add-int/lit8 v4, v1, 0x6

    aget v3, v3, v4

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dump(J)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 350
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 352
    sget-object v2, Lcom/mautilus/lib/common/util/L;->_hexcodes:[C

    sget-object v3, Lcom/mautilus/lib/common/util/L;->_shifts:[I

    sget-object v4, Lcom/mautilus/lib/common/util/L;->_shifts:[I

    array-length v4, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x8

    aget v3, v3, v4

    shr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static get()Lcom/mautilus/lib/common/util/L;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/mautilus/lib/common/util/L;->instance:Lcom/mautilus/lib/common/util/L;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/mautilus/lib/common/util/L;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/mautilus/lib/common/util/L;->instance:Lcom/mautilus/lib/common/util/L;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/mautilus/lib/common/util/L;

    invoke-direct {v0}, Lcom/mautilus/lib/common/util/L;-><init>()V

    sput-object v0, Lcom/mautilus/lib/common/util/L;->instance:Lcom/mautilus/lib/common/util/L;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/mautilus/lib/common/util/L;->instance:Lcom/mautilus/lib/common/util/L;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mautilus/lib/common/util/L;->d(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 148
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_0
    return-void
.end method

.method public dump([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 280
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mautilus/lib/common/util/L;->dump([BJI)V

    .line 281
    return-void
.end method

.method public dump([BJI)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # J
    .param p4, "index"    # I

    .prologue
    .line 285
    iget-object v7, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_8

    .line 288
    if-ltz p4, :cond_0

    array-length v7, p1

    if-lt p4, v7, :cond_1

    .line 290
    :cond_0
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into array of length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 292
    :cond_1
    int-to-long v8, p4

    add-long v2, p2, v8

    .line 294
    .local v2, "display_offset":J
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0x4a

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 296
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v4, p4

    .local v4, "j":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_8

    .line 298
    array-length v7, p1

    sub-int v1, v7, v4

    .line 299
    .local v1, "chars_read":I
    const/16 v7, 0x10

    if-le v1, v7, :cond_2

    .line 301
    const/16 v1, 0x10

    .line 304
    :cond_2
    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/L;->dump(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    const/16 v7, 0x10

    if-ge v5, v7, :cond_4

    .line 307
    if-ge v5, v1, :cond_3

    .line 309
    add-int v7, v5, v4

    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/mautilus/lib/common/util/L;->dump(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 313
    :cond_3
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 317
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    .line 319
    add-int v7, v5, v4

    aget-byte v7, p1, v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_5

    add-int v7, v5, v4

    aget-byte v7, p1, v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_5

    .line 321
    add-int v7, v5, v4

    aget-byte v7, p1, v7

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 325
    :cond_5
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 329
    :cond_6
    iget-object v7, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_7

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/mautilus/lib/common/util/L;->v(Ljava/lang/String;)V

    .line 335
    .end local v6    # "s":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 336
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 296
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 339
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "chars_read":I
    .end local v2    # "display_offset":J
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_8
    return-void
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msgFormat"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 250
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/mautilus/lib/common/util/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 234
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/mautilus/lib/common/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_0
    return-void
.end method

.method public setConfiguration(Lcom/mautilus/lib/common/util/L$Config;)Lcom/mautilus/lib/common/util/L;
    .locals 2
    .param p1, "config"    # Lcom/mautilus/lib/common/util/L$Config;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Lcom/mautilus/lib/common/util/L$Config;->level:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 81
    iget-object v0, p1, Lcom/mautilus/lib/common/util/L$Config;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public setLevel(I)Lcom/mautilus/lib/common/util/L;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 75
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/mautilus/lib/common/util/L;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, p1, v0}, Lcom/mautilus/lib/common/util/L;->v(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/mautilus/lib/common/util/L;->v(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    return-void
.end method

.method public v(ZLjava/lang/String;)V
    .locals 3
    .param p1, "write"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/mautilus/lib/common/util/L;->v(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public varargs v(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "write"    # Z
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/mautilus/lib/common/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 194
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 215
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :cond_0
    return-void
.end method

.method public w(ZLjava/lang/String;)V
    .locals 3
    .param p1, "write"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/mautilus/lib/common/util/L;->w(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public varargs w(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "write"    # Z
    .param p2, "msgFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mautilus/lib/common/util/L;->canWrite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mautilus/lib/common/util/L;->mTAG:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void
.end method
