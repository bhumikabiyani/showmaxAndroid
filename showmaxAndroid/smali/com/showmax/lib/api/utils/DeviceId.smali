.class public Lcom/showmax/lib/api/utils/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# static fields
.field public static final LOG:Z = true

.field private static final SHARED_PREFS_KEY_DEVICE_ID:Ljava/lang/String; = "shared.prefs.key.device.id"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "shared.prefs.name.device.id"

.field private static sId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "deviceId":Ljava/lang/String;
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    const-string v2, "phone"

    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 95
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    .line 100
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 101
    .local v1, "tmpRand":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 105
    .end local v1    # "tmpRand":Ljava/util/Random;
    :cond_1
    invoke-static {v0}, Lcom/showmax/lib/api/utils/DeviceId;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "stringToHash"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    const/4 v3, 0x0

    .line 124
    .local v3, "result":[B
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 130
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v7, v3

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_0

    aget-byte v0, v3, v5

    .line 134
    .local v0, "b":B
    const-string v8, "%02X"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 115
    .end local v0    # "b":B
    .end local v3    # "result":[B
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "[DeviceId]::[NoSuchAlgorithmException]::[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "result":[B
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[DeviceId]::[UnsupportedEncodingException]::[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/showmax/lib/api/utils/DeviceId;->loadStoredId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 61
    invoke-static {p0}, Lcom/showmax/lib/api/utils/DeviceId;->generateId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/showmax/lib/api/utils/DeviceId;->saveStoredId(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_1
    sget-object v0, Lcom/showmax/lib/api/utils/DeviceId;->sId:Ljava/lang/String;

    return-object v0
.end method

.method private static loadStoredId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v1, "shared.prefs.name.device.id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "shared.prefs.key.device.id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static saveStoredId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v1, "shared.prefs.name.device.id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared.prefs.key.device.id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method
