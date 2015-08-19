.class public Lcom/flurry/android/monolithic/sdk/impl/gh;
.super Lcom/flurry/android/monolithic/sdk/impl/gf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/gf;-><init>()V

    .line 15
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/gd;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/gc;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gh;->a:Lcom/flurry/android/monolithic/sdk/impl/gc;

    .line 16
    const-string v0, "CacheServerOperationsDB"

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gh;->c:Ljava/lang/String;

    .line 17
    const-string v0, "serverDataTable"

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gh;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hk;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 22
    .line 24
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gh;->a:Lcom/flurry/android/monolithic/sdk/impl/gc;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gh;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    const-string v0, "objectsId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 38
    const-string v0, "objectsLocalId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 39
    const-string v0, "collectionName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 40
    const-string v0, "key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 41
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object v0, v2

    .line 44
    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 48
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 51
    :cond_1
    if-nez v0, :cond_2

    .line 53
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hk;

    invoke-direct {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/hk;-><init>(Ljava/lang/String;)V

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {v0, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    return-object v0

    .line 57
    :cond_4
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hk;

    invoke-direct {v0, v2, v9}, Lcom/flurry/android/monolithic/sdk/impl/hk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method
