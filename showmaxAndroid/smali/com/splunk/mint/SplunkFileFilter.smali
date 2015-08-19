.class public Lcom/splunk/mint/SplunkFileFilter;
.super Ljava/lang/Object;
.source "SplunkFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static final POSTFIX:Ljava/lang/String; = ".json"

.field private static final PREFIX:Ljava/lang/String; = "MintSavedData-1-"

.field private static final VERSION:Ljava/lang/String; = "1"

.field private static fileFilterSingleton:Lcom/splunk/mint/SplunkFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/splunk/mint/SplunkFileFilter;->fileFilterSingleton:Lcom/splunk/mint/SplunkFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewFile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MintSavedData-1-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/splunk/mint/SplunkFileFilter;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/splunk/mint/SplunkFileFilter;->fileFilterSingleton:Lcom/splunk/mint/SplunkFileFilter;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/splunk/mint/SplunkFileFilter;

    invoke-direct {v0}, Lcom/splunk/mint/SplunkFileFilter;-><init>()V

    sput-object v0, Lcom/splunk/mint/SplunkFileFilter;->fileFilterSingleton:Lcom/splunk/mint/SplunkFileFilter;

    .line 33
    :cond_0
    sget-object v0, Lcom/splunk/mint/SplunkFileFilter;->fileFilterSingleton:Lcom/splunk/mint/SplunkFileFilter;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "filename"    # Ljava/io/File;

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MintSavedData-1-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
