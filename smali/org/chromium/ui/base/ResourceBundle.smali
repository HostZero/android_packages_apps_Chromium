.class public Lorg/chromium/ui/base/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/ui/base/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/ResourceBundle;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveLocaleResources()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    return-object v0
.end method

.method private static getLocalePakResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".pak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    sget-object v3, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 84
    iget-object v6, v5, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    iget-object v0, v5, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->pathWithinApk:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static initializeLocalePaks(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 53
    sget-boolean v1, Lorg/chromium/ui/base/ResourceBundle;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 57
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 58
    new-array v4, v3, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    sput-object v4, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .line 59
    :goto_0
    if-ge v0, v3, :cond_1

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 61
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v6}, Lorg/chromium/ui/base/ResourceBundle;->toChromeLocaleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    sget-object v7, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    new-instance v8, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-direct {v8, v4, v5, v6}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static toChromeLocaleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    const-string/jumbo v0, ".lpak"

    const-string/jumbo v1, ".pak"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    array-length v2, v1

    if-le v2, v5, :cond_0

    .line 35
    aget-object v0, v1, v5

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    return-object v0
.end method
