.class public Lorg/chromium/components/safejson/JsonSanitizer;
.super Ljava/lang/Object;
.source "JsonSanitizer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static checkString(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    .line 140
    :goto_0
    if-ge v1, v3, :cond_5

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 166
    :goto_1
    return v0

    .line 148
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_1

    move v0, v2

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 154
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v2

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 164
    :cond_3
    invoke-static {v0}, Lorg/chromium/components/safejson/JsonSanitizer;->isUnicodeCharacter(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_1

    .line 140
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isUnicodeCharacter(I)Z
    .locals 2

    .prologue
    const v1, 0xfffe

    .line 171
    const v0, 0xd800

    if-lt p0, v0, :cond_1

    const v0, 0xe000

    if-lt p0, v0, :cond_0

    const v0, 0xfdd0

    if-lt p0, v0, :cond_1

    :cond_0
    const v0, 0xfdef

    if-le p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    and-int v0, p0, v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeOnError(JLjava/lang/String;)V
.end method

.method private static native nativeOnSuccess(JLjava/lang/String;)V
.end method

.method public static sanitize(JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 39
    new-instance v1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 40
    new-instance v2, Ljava/io/StringWriter;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 41
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    new-instance v4, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;-><init>(Lorg/chromium/components/safejson/JsonSanitizer$1;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-nez v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    .line 47
    sget-object v6, Lorg/chromium/components/safejson/JsonSanitizer$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v5}, Landroid/util/JsonToken;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-virtual {v4}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->increaseAndCheck()V

    .line 50
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 51
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/components/safejson/JsonSanitizer;->nativeOnError(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 105
    :goto_2
    return-void

    .line 54
    :pswitch_1
    :try_start_2
    invoke-virtual {v4}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->decrease()V

    .line 55
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    .line 56
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    goto :goto_1

    .line 59
    :pswitch_2
    invoke-virtual {v4}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->increaseAndCheck()V

    .line 60
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 61
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 64
    :pswitch_3
    :try_start_3
    invoke-virtual {v4}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->decrease()V

    .line 65
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 66
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/components/safejson/JsonSanitizer;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 72
    :pswitch_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/components/safejson/JsonSanitizer;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 77
    :pswitch_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 79
    :try_start_4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 81
    :catch_2
    move-exception v6

    :try_start_5
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    goto :goto_0

    .line 86
    :pswitch_7
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto/16 :goto_0

    .line 89
    :pswitch_8
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextNull()V

    .line 90
    invoke-virtual {v3}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 93
    :pswitch_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 101
    :cond_0
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/components/safejson/JsonSanitizer;->nativeOnSuccess(JLjava/lang/String;)V

    goto :goto_2

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-static {p0}, Lorg/chromium/components/safejson/JsonSanitizer;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/util/MalformedJsonException;

    const-string/jumbo v1, "Invalid escape sequence"

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-object p0
.end method
