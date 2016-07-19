.class public Lorg/chromium/chrome/browser/util/UrlUtilities;
.super Ljava/lang/Object;
.source "UrlUtilities.java"


# static fields
.field private static final ACCEPTED_SCHEMES:Ljava/util/HashSet;

.field private static final ANDROID_COMPONENT_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final DNS_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOWNLOADABLE_SCHEMES:Ljava/util/HashSet;

.field private static final FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;

.field private static final INTERNAL_SCHEMES:Ljava/util/HashSet;

.field private static final JAVA_PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final URL_SCHEME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "about"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "file"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http"

    aput-object v1, v0, v6

    const-string/jumbo v1, "https"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "inline"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "javascript"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->ACCEPTED_SCHEMES:Ljava/util/HashSet;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "filesystem"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http"

    aput-object v1, v0, v5

    const-string/jumbo v1, "https"

    aput-object v1, v0, v6

    const-string/jumbo v1, "blob"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "file"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->DOWNLOADABLE_SCHEMES:Ljava/util/HashSet;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "chrome"

    aput-object v1, v0, v3

    const-string/jumbo v1, "chrome-native"

    aput-object v1, v0, v4

    const-string/jumbo v1, "about"

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->INTERNAL_SCHEMES:Ljava/util/HashSet;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http"

    aput-object v1, v0, v3

    const-string/jumbo v1, "https"

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;

    .line 235
    const-string/jumbo v0, "^[\\w\\.-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->DNS_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 237
    const-string/jumbo v0, "^[\\w\\.-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->JAVA_PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 239
    const-string/jumbo v0, "^[\\w\\./-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->ANDROID_COMPONENT_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const-string/jumbo v0, "^[a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->URL_SCHEME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixupUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeFixupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatUrlForSecurityDisplay(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeFormatUrlForSecurityDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeFormatUrlForSecurityDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatUrlForSecurityDisplay(Ljava/net/URI;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeGetDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isAcceptedScheme(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isAcceptedScheme(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAcceptedScheme(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->ACCEPTED_SCHEMES:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadableScheme(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isDownloadableScheme(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloadableScheme(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->DOWNLOADABLE_SCHEMES:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInternalScheme(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->INTERNAL_SCHEMES:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidForIntentFallbackNavigation(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isValidForIntentFallbackNavigation(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidForIntentFallbackNavigation(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native nativeFixupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeFormatUrlForSecurityDisplay(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeFormatUrlForSecurityDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public static native nativeIsGoogleHomePageUrl(Ljava/lang/String;)Z
.end method

.method public static native nativeIsGoogleSearchUrl(Ljava/lang/String;)Z
.end method

.method private static native nativeSameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private static native nativeSameHost(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeUrlsFragmentsDiffer(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeUrlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 191
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeSameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sameHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 200
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeSameHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static urlsFragmentsDiffer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 230
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeUrlsFragmentsDiffer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 223
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeUrlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static validateIntentUrl(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/16 v4, 0x23

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 253
    :goto_0
    if-nez p0, :cond_1

    .line 389
    :cond_0
    :goto_1
    return v7

    .line 260
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_0

    const-string/jumbo v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_0

    .line 284
    sget-object v3, Lorg/chromium/chrome/browser/util/UrlUtilities;->DNS_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 302
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 306
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string/jumbo v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 324
    array-length v0, v8

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    aget-object v0, v8, v7

    const-string/jumbo v2, "Intent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v8, v0

    const-string/jumbo v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v1

    move v0, v7

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    .line 337
    :goto_2
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_9

    .line 340
    aget-object v9, v8, v6

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 341
    const/4 v10, 0x2

    array-length v11, v9

    if-ne v10, v11, :cond_0

    .line 346
    sget-object v10, Lorg/chromium/chrome/browser/util/UrlUtilities;->JAVA_PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 347
    aget-object v11, v9, v7

    const-string/jumbo v12, "package"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 348
    if-nez v5, :cond_0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    .line 337
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 261
    :catch_0
    move-exception v0

    .line 265
    const-string/jumbo v2, "intent:#Intent;"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 266
    const-string/jumbo v0, "intent:#Intent;"

    const-string/jumbo v2, "intent://foo/#Intent;"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 269
    :cond_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :catch_1
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 353
    :cond_5
    aget-object v11, v9, v7

    const-string/jumbo v12, "action"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 354
    if-nez v4, :cond_0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    .line 358
    goto :goto_3

    .line 359
    :cond_6
    aget-object v11, v9, v7

    const-string/jumbo v12, "category"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 360
    if-nez v3, :cond_0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 364
    goto :goto_3

    .line 365
    :cond_7
    aget-object v10, v9, v7

    const-string/jumbo v11, "component"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 366
    sget-object v10, Lorg/chromium/chrome/browser/util/UrlUtilities;->ANDROID_COMPONENT_NAME_PATTERN:Ljava/util/regex/Pattern;

    aget-object v9, v9, v1

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 367
    if-nez v2, :cond_0

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 372
    goto :goto_3

    :cond_8
    aget-object v10, v9, v7

    const-string/jumbo v11, "scheme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 373
    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lorg/chromium/chrome/browser/util/UrlUtilities;->URL_SCHEME_PATTERN:Ljava/util/regex/Pattern;

    aget-object v9, v9, v1

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 379
    goto/16 :goto_3

    :cond_9
    move v7, v1

    .line 389
    goto/16 :goto_1
.end method
