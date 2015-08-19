.class public Lcom/showmax/lib/api/utils/UserPrefs;
.super Ljava/lang/Object;
.source "UserPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    }
.end annotation


# static fields
.field private static final USERPREFS_KEY_BONUS_FALSE_SHOWN:Ljava/lang/String; = "userprefs.key.bonus.false.shown"

.field private static final USERPREFS_KEY_BONUS_TRUE_SHOWN:Ljava/lang/String; = "userprefs.key.bonus.true.shown"

.field private static final USERPREFS_KEY_CURRENT_LANGUAGE:Ljava/lang/String; = "userprefs.key.current.language"

.field private static final USERPREFS_KEY_CURRENT_SECTION:Ljava/lang/String; = "userprefs.key.current.section"

.field private static final USERPREFS_KEY_FIRST_TIME_LAUNCH:Ljava/lang/String; = "userprefs.key.first.time.launch"

.field private static final USERPREFS_KEY_FIRST_TIME_TUTORIAL:Ljava/lang/String; = "userprefs.key.first.time.tutorial"

.field private static final USERPREFS_KEY_FIRST_TIME_WELCOME_VIDEO:Ljava/lang/String; = "userprefs.key.first.time.welcome.video"

.field private static final USERPREFS_KEY_SORT_OPTION:Ljava/lang/String; = "userprefs.key.sort.option"

.field private static final USERPREFS_KEY_USERLIST_BOOKMARKS:Ljava/lang/String; = "userprefs.key.userlist.bookmarks"

.field private static final USERPREFS_KEY_USERLIST_RECENTLY_WATCHED:Ljava/lang/String; = "userprefs.key.userlist.recently.watched"

.field private static final USERPREFS_KEY_USER_EMAIL:Ljava/lang/String; = "userprefs.key.user.email"

.field private static final USERPREFS_KEY_USER_ID:Ljava/lang/String; = "userprefs.key.user.id"

.field private static final USERPREFS_KEY_USER_SECURE_TOKEN:Ljava/lang/String; = "userprefs.key.user.secure.token"

.field private static final USERPREFS_KEY_USER_TOKEN:Ljava/lang/String; = "userprefs.key.user.token"

.field private static final USERPREFS_KEY_USER_TOKEN_EXPIRATION:Ljava/lang/String; = "userprefs.key.user.token.expiration"

.field private static final USERPREFS_NAME:Ljava/lang/String; = "shared.preferences.userprefs.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 271
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userprefs.key.current.language"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "ordinal":I
    if-eq v0, v3, :cond_0

    .line 274
    invoke-static {v0}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    goto :goto_0
.end method

.method public static getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userprefs.key.current.section"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "serialized":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Section;

    .line 233
    :cond_0
    return-object v1
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shared.preferences.userprefs.name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 243
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 244
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    const-string v3, "userprefs.key.sort.option"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, "ordinal":I
    if-eq v0, v4, :cond_0

    .line 252
    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->fromOrdinal(I)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    goto :goto_0
.end method

.method public static getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 181
    .local v0, "accessData":[Ljava/lang/String;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const-string v3, "userprefs.key.user.token"

    const-string v4, "null"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 187
    const/4 v2, 0x1

    const-string v3, "userprefs.key.user.secure.token"

    const-string v4, "null"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 190
    const/4 v2, 0x2

    const-string v3, "userprefs.key.user.token.expiration"

    const-string v4, "null"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 191
    return-object v0
.end method

.method public static getUserEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.user.email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.user.id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    .prologue
    const/4 v1, 0x0

    .line 335
    sget-object v2, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    if-ne p1, v2, :cond_1

    .line 337
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userprefs.key.userlist.bookmarks"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "serialized":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 340
    invoke-static {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v1

    .line 353
    .end local v0    # "serialized":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :cond_1
    sget-object v2, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    if-ne p1, v2, :cond_0

    .line 346
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userprefs.key.userlist.recently.watched"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0    # "serialized":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v0}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->deserialize(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v1

    goto :goto_0
.end method

.method public static isBonusFalseAlreadyShown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.bonus.false.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBonusTrueAlreadyShown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.bonus.true.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.launch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstTimeTutorial(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.tutorial"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstTimeWelcomeVideo(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.welcome.video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserSignedIn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userprefs.key.user.token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeUserAccessData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.secure.token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.id"

    .line 208
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.token.expiration"

    .line 209
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public static setBonusFalseAlreadyShown(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.bonus.false.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method public static setBonusTrueAlreadyShown(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.bonus.true.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method public static setCurrentLanguage(Landroid/content/Context;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.current.language"

    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method public static setCurrentSection(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 217
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "serialized":Ljava/lang/String;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userprefs.key.current.section"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public static setFirstLaunch(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firstLaunch"    # Z

    .prologue
    .line 91
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.launch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public static setFirstTimeTutorial(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firstTimeTutorial"    # Z

    .prologue
    .line 123
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.tutorial"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public static setFirstTimeWelcomeVideo(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firstTimeWelcomeVideo"    # Z

    .prologue
    .line 107
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.first.time.welcome.video"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public static setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortOption"    # Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .prologue
    .line 238
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.sort.option"

    invoke-virtual {p1}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public static setUserAccessData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "secureToken"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.secure.token"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.token.expiration"

    .line 164
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void
.end method

.method public static setUserEmail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.user.id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    return-void
.end method

.method public static setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userlist"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->getUserlistType()Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    move-result-object v0

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    if-ne v0, v1, :cond_1

    .line 322
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.userlist.bookmarks"

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->getUserlistType()Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    move-result-object v0

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    if-ne v0, v1, :cond_0

    .line 326
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userprefs.key.userlist.recently.watched"

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
