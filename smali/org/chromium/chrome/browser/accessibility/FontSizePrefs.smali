.class public Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;
.super Ljava/lang/Object;
.source "FontSizePrefs.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final PREF_FORCE_ENABLE_ZOOM:Ljava/lang/String; = "force_enable_zoom"

.field public static final PREF_TEXT_SCALE:Ljava/lang/String; = "text_scale"

.field public static final PREF_USER_SET_FORCE_ENABLE_ZOOM:Ljava/lang/String; = "user_set_force_enable_zoom"

.field private static sFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;


# instance fields
.field private final mFontSizePrefsAndroidPtr:J

.field private final mObserverMap:Ljava/util/Map;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    invoke-direct {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mObserverMap:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 99
    sget-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->sFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->sFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 102
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->sFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    return-object v0
.end method

.method private native nativeAddObserver(JJ)V
.end method

.method private native nativeGetFontScaleFactor(J)F
.end method

.method private native nativeGetForceEnableZoom(J)Z
.end method

.method private native nativeInit()J
.end method

.method private native nativeRemoveObserver(JJ)V
.end method

.method private native nativeSetFontScaleFactor(JF)V
.end method

.method private native nativeSetForceEnableZoom(JZ)V
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 111
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;-><init>(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)V

    .line 113
    iget-wide v2, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeAddObserver(JJ)V

    .line 114
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontScaleFactor()F
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeGetFontScaleFactor(J)F

    move-result v0

    return v0
.end method

.method public getForceEnableZoom()Z
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeGetForceEnableZoom(J)Z

    move-result v0

    return v0
.end method

.method public getUserSetForceEnableZoom()Z
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_set_force_enable_zoom"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v0, "user_set_force_enable_zoom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;

    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getUserSetForceEnableZoom()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->onChangeUserSetForceEnableZoom(Z)V

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;

    .line 124
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeRemoveObserver(JJ)V

    .line 126
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->destroy()V

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFontScaleFactor(F)V
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeSetFontScaleFactor(JF)V

    .line 150
    return-void
.end method

.method public setForceEnableZoom(Z)V
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mFontSizePrefsAndroidPtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->nativeSetForceEnableZoom(JZ)V

    .line 167
    return-void
.end method

.method public setUserSetForceEnableZoom(Z)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "user_set_force_enable_zoom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method
