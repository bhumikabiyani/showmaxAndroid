.class public Lcom/showmax/app/io/UserlistTaskV2;
.super Landroid/os/AsyncTask;
.source "UserlistTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;,
        Lcom/showmax/app/io/UserlistTaskV2$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field private mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mEndTime:J

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeTime:Ljava/lang/Integer;

.field private mStartTime:J

.field private mToken:Ljava/lang/String;

.field private mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

.field private mUserId:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    return-void
.end method

.method public static execute(Lcom/showmax/app/io/UserlistTaskV2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "task"    # Lcom/showmax/app/io/UserlistTaskV2;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/showmax/app/io/UserlistTaskV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    :cond_0
    return-void
.end method

.method public static newAddToBookmarksTask(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;
    .locals 5
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "listener"    # Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2;

    invoke-direct {v0}, Lcom/showmax/app/io/UserlistTaskV2;-><init>()V

    .line 70
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    iput-object p0, v0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 71
    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mResumeTime:Ljava/lang/Integer;

    .line 72
    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mVideoId:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    .line 74
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    .line 75
    const-string v1, "[UserlistTask]::[newAddToBookmarksTask]::[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-object v0
.end method

.method public static newAddToRecentlyWatchedTask(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;ILcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;
    .locals 5
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "resumeTime"    # I
    .param p3, "listener"    # Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    .prologue
    .line 93
    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2;

    invoke-direct {v0}, Lcom/showmax/app/io/UserlistTaskV2;-><init>()V

    .line 94
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    iput-object p0, v0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 95
    iput-object p1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mVideoId:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_RECENTLY_WATCHED:Lcom/showmax/app/io/UserlistTaskV2$Type;

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mResumeTime:Ljava/lang/Integer;

    .line 98
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    .line 99
    const-string v1, "[UserlistTask]::[newAddToRecentlyWatchedTask]::[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-object v0
.end method

.method public static newRemoveFromBookmarksTask(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;
    .locals 5
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1, "listener"    # Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2;

    invoke-direct {v0}, Lcom/showmax/app/io/UserlistTaskV2;-><init>()V

    .line 82
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    iput-object p0, v0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 83
    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mResumeTime:Ljava/lang/Integer;

    .line 84
    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mVideoId:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->REMOVE_FROM_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    .line 86
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    .line 87
    const-string v1, "[UserlistTask]::[newRemoveFromBookmarksTask]::[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-object v0
.end method

.method public static newSyncUserlistsTask(Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;
    .locals 2
    .param p0, "listener"    # Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    .prologue
    .line 105
    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2;

    invoke-direct {v0}, Lcom/showmax/app/io/UserlistTaskV2;-><init>()V

    .line 106
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    .line 107
    const-string v1, "[UserlistTask]::[newSyncUserlistsTask]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mStartTime:J

    .line 125
    const-string v0, "[UserlistTask]::[doInBackground]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v11, :cond_1

    .line 128
    :cond_0
    const-string v0, "[UserlistTask]::[doInBackground]::[params is null or less than 2]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 129
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 132
    :cond_1
    aget-object v0, p1, v12

    iput-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mToken:Ljava/lang/String;

    .line 133
    aget-object v0, p1, v10

    iput-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mUserId:Ljava/lang/String;

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    if-ne v0, v1, :cond_4

    .line 139
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/UserlistTaskV2;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/io/UserlistTaskV2;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    iget-object v4, p0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/showmax/lib/api/io/UserApi;->addItemToUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit/client/Response;

    .line 150
    :cond_2
    :goto_1
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/UserlistTaskV2;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/io/UserlistTaskV2;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/showmax/lib/api/io/UserApi;->loadUserlistsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v9

    .line 151
    .local v9, "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    const-string v0, "[UserlistTask]::[doInBackground]::[userlists fetched]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 152
    iget-object v0, v9, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .line 154
    .local v8, "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-interface {v0, v8}, Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;->syncUserlist(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    .end local v8    # "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .end local v9    # "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    :catch_0
    move-exception v7

    .line 163
    .local v7, "error":Lretrofit/RetrofitError;
    const-string v0, "[UserlistTask]::[doInBackground]::[network error]::[%s]"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-direct {v1, v7}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 165
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 141
    .end local v7    # "error":Lretrofit/RetrofitError;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_RECENTLY_WATCHED:Lcom/showmax/app/io/UserlistTaskV2$Type;

    if-ne v0, v1, :cond_5

    .line 143
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/UserlistTaskV2;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/io/UserlistTaskV2;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    iget-object v4, p0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/showmax/app/io/UserlistTaskV2;->mVideoId:Ljava/lang/String;

    iget-object v6, p0, Lcom/showmax/app/io/UserlistTaskV2;->mResumeTime:Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v6}, Lcom/showmax/lib/api/io/UserApi;->addItemToUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit/client/Response;

    goto :goto_1

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->REMOVE_FROM_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    if-ne v0, v1, :cond_2

    .line 147
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/UserlistTaskV2;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/io/UserlistTaskV2;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    iget-object v4, p0, Lcom/showmax/app/io/UserlistTaskV2;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/showmax/lib/api/io/UserApi;->removeItemFromUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;)Lretrofit/client/Response;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 168
    .restart local v9    # "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/showmax/app/io/UserlistTaskV2;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mEndTime:J

    .line 176
    const-string v0, "[UserlistTask]::[onPostExecute]::[%d]::[%d ms]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/showmax/app/io/UserlistTaskV2;->mEndTime:J

    iget-wide v6, p0, Lcom/showmax/app/io/UserlistTaskV2;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/showmax/app/io/UserlistTaskV2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    iget-object v1, p0, Lcom/showmax/app/io/UserlistTaskV2;->mType:Lcom/showmax/app/io/UserlistTaskV2$Type;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;->onUserlistTaskFinished(Lcom/showmax/app/io/UserlistTaskV2$Type;I)V

    .line 182
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/showmax/app/io/UserlistTaskV2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
