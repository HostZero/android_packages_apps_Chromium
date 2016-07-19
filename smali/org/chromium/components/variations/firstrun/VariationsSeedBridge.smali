.class public Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;
.super Ljava/lang/Object;
.source "VariationsSeedBridge.java"


# static fields
.field protected static final VARIATIONS_FIRST_RUN_SEED_BASE64:Ljava/lang/String; = "variations_seed_base64"

.field protected static final VARIATIONS_FIRST_RUN_SEED_COUNTRY:Ljava/lang/String; = "variations_seed_country"

.field protected static final VARIATIONS_FIRST_RUN_SEED_DATE:Ljava/lang/String; = "variations_seed_date"

.field protected static final VARIATIONS_FIRST_RUN_SEED_IS_GZIP_COMPRESSED:Ljava/lang/String; = "variations_seed_is_gzip_compressed"

.field protected static final VARIATIONS_FIRST_RUN_SEED_NATIVE_STORED:Ljava/lang/String; = "variations_seed_native_stored"

.field protected static final VARIATIONS_FIRST_RUN_SEED_SIGNATURE:Ljava/lang/String; = "variations_seed_signature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearFirstRunPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_base64"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_signature"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_country"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_is_gzip_compressed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method private static getVariationsFirstRunSeedCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "variations_seed_country"

    invoke-static {p0, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->getVariationsFirstRunSeedPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariationsFirstRunSeedData(Landroid/content/Context;)[B
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "variations_seed_base64"

    invoke-static {p0, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->getVariationsFirstRunSeedPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getVariationsFirstRunSeedDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "variations_seed_date"

    invoke-static {p0, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->getVariationsFirstRunSeedPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariationsFirstRunSeedIsGzipCompressed(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_is_gzip_compressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static getVariationsFirstRunSeedPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariationsFirstRunSeedSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "variations_seed_signature"

    invoke-static {p0, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->getVariationsFirstRunSeedPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasJavaPref(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_base64"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNativePref(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_native_stored"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static markVariationsSeedAsStored(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_native_stored"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public static setVariationsFirstRunSeed(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_base64"

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_signature"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_country"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_date"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "variations_seed_is_gzip_compressed"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method
