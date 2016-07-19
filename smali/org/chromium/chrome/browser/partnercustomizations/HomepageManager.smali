.class public Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
.super Ljava/lang/Object;
.source "HomepageManager.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;


# instance fields
.field private final mHomepageStateListeners:Lorg/chromium/base/ObserverList;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mHomepageStateListeners:Lorg/chromium/base/ObserverList;

    .line 43
    return-void
.end method

.method public static getHomepageUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {p0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageUseDefaultUri()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->getHomePageUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageCustomUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->sInstance:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->sInstance:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    .line 53
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->sInstance:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    return-object v0
.end method

.method public static isHomepageEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->isHomepageProviderAvailableAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHomepageSetting()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->isHomepageProviderAvailableAndEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mHomepageStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public getPrefHomepageCustomUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "homepage_custom_uri"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHomepageEnabled()Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "homepage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefHomepageUseDefaultUri()Z
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "homepage_partner_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public notifyHomepageUpdated()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mHomepageStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

    .line 76
    invoke-interface {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;->onHomepageStateUpdated()V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public removeListener(Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mHomepageStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public setPrefHomepageCustomUri(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "homepage_custom_uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method

.method public setPrefHomepageEnabled(Z)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "homepage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->notifyHomepageUpdated()V

    .line 126
    return-void
.end method

.method public setPrefHomepageUseDefaultUri(Z)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "homepage_partner_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method
