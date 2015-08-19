.class Lcom/splunk/mint/StacktraceHash;
.super Ljava/lang/Object;
.source "StacktraceHash.java"


# static fields
.field private static guidRegex:Ljava/lang/String;

.field private static hexRegex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[34][0-9a-fA-F]{3}-[89ab][0-9a-fA-F]{3}-[0-9a-fA-F]{12}"

    sput-object v0, Lcom/splunk/mint/StacktraceHash;->guidRegex:Ljava/lang/String;

    .line 139
    const-string v0, "0[xX][0-9a-fA-F]+"

    sput-object v0, Lcom/splunk/mint/StacktraceHash;->hexRegex:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final manipulateStacktrace(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 22
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 17
    :cond_0
    const/4 v12, 0x0

    .line 134
    :goto_0
    return-object v12

    .line 19
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 22
    .local v8, "klass":Ljava/lang/String;
    const/16 v18, 0x0

    .line 23
    .local v18, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .line 24
    .local v10, "library":Ljava/lang/String;
    const/4 v4, 0x0

    .line 25
    .local v4, "errorHash":Ljava/lang/String;
    const/4 v13, 0x0

    .line 27
    .local v13, "message":Ljava/lang/String;
    const-string v19, "\n\t"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 29
    .local v15, "stackArray":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 30
    const-string v19, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 34
    :cond_2
    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Lcom/splunk/mint/StacktraceHash;->removeFirstDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 37
    const/16 v19, 0x0

    :try_start_0
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 43
    :goto_1
    const-string v19, "\n"

    const-string v20, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 45
    const-string v19, "Caused by:"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 47
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v19, "klass"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v19, "."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 53
    const-string v19, "\\."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 54
    .local v14, "packageParts":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 55
    const/16 v19, 0x0

    aget-object p0, v14, v19

    .line 62
    .end local v14    # "packageParts":[Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v16, "stringForHash":Ljava/lang/StringBuilder;
    move-object v2, v15

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v9, :cond_6

    aget-object v11, v2, v7

    .line 66
    .local v11, "line":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v19, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 38
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "line":Ljava/lang/String;
    .end local v16    # "stringForHash":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/lang/Exception;
    move-object v8, v13

    goto/16 :goto_1

    .line 57
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v14    # "packageParts":[Ljava/lang/String;
    :cond_5
    const/16 v19, 0x1

    aget-object p0, v14, v19

    goto :goto_2

    .line 76
    .end local v14    # "packageParts":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v16    # "stringForHash":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-nez v19, :cond_8

    .line 77
    move-object v2, v15

    array-length v9, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_8

    aget-object v11, v2, v7

    .line 80
    .restart local v11    # "line":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "..."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, ".java."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "android"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "org.apache"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "org.acra"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "dalvik"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, ".acra."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v19, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 90
    .end local v11    # "line":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-nez v19, :cond_b

    .line 91
    move-object v2, v15

    array-length v9, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_b

    aget-object v11, v2, v7

    .line 92
    .restart local v11    # "line":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, ".java"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "Unknown"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 93
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v19, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 99
    .end local v11    # "line":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v6, v19, v20

    .line 102
    .local v6, "firstline":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 103
    const-string v19, "\\."

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v10, v19, v20

    .line 106
    :cond_c
    const-string v19, "library"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object/from16 v18, v6

    .line 109
    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 110
    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    const-string v20, ")"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 115
    :goto_6
    const-string v19, "where"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "@\\w+"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/splunk/mint/StacktraceHash;->hexRegex:Ljava/lang/String;

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/splunk/mint/StacktraceHash;->guidRegex:Ljava/lang/String;

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "$\\w+"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 124
    .local v17, "stringToHash":Ljava/lang/String;
    const-string v19, ".java:"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 126
    const-string v19, "\\d+"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "escapedFirstLine":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 130
    .end local v5    # "escapedFirstLine":Ljava/lang/String;
    :cond_d
    invoke-static/range {v17 .. v17}, Lcom/splunk/mint/StacktraceHash;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    const-string v19, "errorHash"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 112
    .end local v17    # "stringToHash":Ljava/lang/String;
    :cond_e
    const-string v18, "Unknown"

    goto :goto_6
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringToHash"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 146
    .local v4, "m":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 148
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 149
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 150
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "hashtext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 157
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "hashtext":Ljava/lang/String;
    .end local v4    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 160
    const-string v3, ""

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v3
.end method

.method private static removeFirstDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "parts":[Ljava/lang/String;
    const-string v3, "[\\d]{2}:[\\d]{2}:[\\d]{2}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 170
    .local v1, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 171
    .local v2, "regexMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const/4 v3, 0x1

    aget-object p0, v0, v3

    .line 176
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "regex":Ljava/util/regex/Pattern;
    .end local v2    # "regexMatcher":Ljava/util/regex/Matcher;
    :cond_0
    return-object p0
.end method
