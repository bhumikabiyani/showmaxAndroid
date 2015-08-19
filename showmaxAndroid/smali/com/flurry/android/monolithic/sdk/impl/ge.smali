.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/gc;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ge;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ge;->a:Lcom/flurry/android/monolithic/sdk/impl/gc;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ge;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectsId=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "objectsId ASC, julianday(timestamp)"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method
