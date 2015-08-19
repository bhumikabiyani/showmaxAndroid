.class public final Lcom/flurry/android/monolithic/sdk/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/j;->a:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->c()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/j;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x1

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 38
    const/4 v0, 0x7

    .line 41
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/pm/ActivityInfo;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 132
    if-nez p0, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 137
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 138
    or-int/lit16 v0, v0, 0xc00

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find info for activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;IZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 57
    if-nez p0, :cond_1

    move v1, v2

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/j;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 67
    invoke-static {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/j;->b(Landroid/app/Activity;I)I

    move-result v0

    .line 69
    if-ne v3, v0, :cond_2

    .line 70
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set requested orientation without restarting activity, requestedOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 76
    goto :goto_0

    :cond_2
    move p1, v0

    move p2, v1

    .line 80
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 81
    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static b()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 49
    const/4 v0, 0x6

    .line 52
    :cond_0
    return v0
.end method

.method public static b(Landroid/app/Activity;I)I
    .locals 3

    .prologue
    .line 147
    const/4 v1, -0x1

    .line 148
    if-nez p0, :cond_0

    .line 158
    :goto_0
    return v1

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 153
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_1
    move v1, v0

    .line 158
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 119
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 163
    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->d()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const/4 v1, 0x2

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->e()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    return-object v0
.end method

.method private static d()Landroid/util/SparseIntArray;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x7

    .line 170
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->a()I

    move-result v0

    .line 172
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 173
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    return-object v1
.end method

.method private static e()Landroid/util/SparseIntArray;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 191
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/j;->b()I

    move-result v0

    .line 193
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 194
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    return-object v1
.end method
