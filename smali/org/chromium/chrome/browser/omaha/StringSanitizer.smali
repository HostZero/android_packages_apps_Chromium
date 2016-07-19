.class public Lorg/chromium/chrome/browser/omaha/StringSanitizer;
.super Ljava/lang/Object;
.source "StringSanitizer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CHARS_TO_REMOVE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/chrome/browser/omaha/StringSanitizer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->$assertionsDisabled:Z

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->CHARS_TO_REMOVE:[C

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :array_0
    .array-data 2
        0x3bs
        0x2cs
        0x22s
        0x27s
        0xas
        0xds
        0x9s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    sget-object v2, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->CHARS_TO_REMOVE:[C

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v4, v2, v1

    .line 18
    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p0

    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    const-string/jumbo v1, "  *"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 27
    return-object v0

    .line 23
    :catch_0
    move-exception v1

    sget-boolean v1, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
