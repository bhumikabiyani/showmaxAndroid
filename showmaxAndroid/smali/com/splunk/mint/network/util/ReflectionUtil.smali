.class public final Lcom/splunk/mint/network/util/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# static fields
.field public static final includeObject:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callingClassAnyOf([Ljava/lang/String;)Z
    .locals 6
    .param p0, "classNames"    # [Ljava/lang/String;

    .prologue
    .line 97
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 98
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 99
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/splunk/mint/network/util/ReflectionUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const/4 v5, 0x1

    .line 104
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :goto_1
    return v5

    .line 98
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classes"    # [Ljava/lang/String;

    .prologue
    .line 108
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 109
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const/4 v4, 0x1

    .line 113
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 108
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static extractCallingMethod([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "excludes"    # [Ljava/lang/String;

    .prologue
    .line 86
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 87
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 88
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/splunk/mint/network/util/ReflectionUtil;->inExcluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v5

    .line 87
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static findConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 10
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "expectedParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 36
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 37
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 38
    .local v7, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v7

    array-length v9, p1

    if-ne v8, v9, :cond_2

    .line 39
    const/4 v6, 0x1

    .line 40
    .local v6, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 41
    aget-object v8, v7, v3

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 42
    const/4 v6, 0x0

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    :cond_1
    if-eqz v6, :cond_2

    .line 51
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "i":I
    .end local v6    # "match":Z
    .end local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_2
    return-object v1

    .line 36
    .restart local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getAllMethods(Ljava/lang/Class;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-static {p0}, Lcom/splunk/mint/network/util/ReflectionUtil;->getAllSuperTypes(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 78
    .local v6, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 79
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v5
.end method

.method public static getAllSuperTypes(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz p0, :cond_0

    const-class v5, Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/splunk/mint/network/util/ReflectionUtil;->getAllSuperTypes(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 66
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lcom/splunk/mint/network/util/ReflectionUtil;->getAllSuperTypes(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "i$":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method private static final inExcluded(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "excludes"    # [Ljava/lang/String;

    .prologue
    .line 117
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 118
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    const/4 v4, 0x1

    .line 122
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 117
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
