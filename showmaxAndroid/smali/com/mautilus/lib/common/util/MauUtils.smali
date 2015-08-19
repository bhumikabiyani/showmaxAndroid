.class public Lcom/mautilus/lib/common/util/MauUtils;
.super Ljava/lang/Object;
.source "MauUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs notNull([Ljava/lang/Object;)Z
    .locals 6
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 42
    const/4 v1, 0x1

    .line 44
    .local v1, "result":Z
    if-eqz p0, :cond_1

    .line 46
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p0, v4

    .line 48
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v1, v2

    .line 46
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 48
    goto :goto_1

    .line 52
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public static readLibraryFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 20
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 21
    .local v3, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    .local v0, "buffreader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v5, "text":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
