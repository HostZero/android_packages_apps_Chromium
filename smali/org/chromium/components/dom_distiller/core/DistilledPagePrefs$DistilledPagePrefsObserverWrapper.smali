.class Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;
.super Ljava/lang/Object;
.source "DistilledPagePrefs.java"


# instance fields
.field private final mDistilledPagePrefsObserver:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;

.field private final mNativeDistilledPagePrefsObserverAndroidPtr:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->nativeInitObserverAndroid()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mNativeDistilledPagePrefsObserverAndroidPtr:J

    .line 41
    iput-object p1, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mDistilledPagePrefsObserver:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;

    .line 42
    return-void
.end method

.method private native nativeDestroyObserverAndroid(J)V
.end method

.method private native nativeInitObserverAndroid()J
.end method

.method private onChangeFontFamily(I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mDistilledPagePrefsObserver:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;

    invoke-static {p1}, Lorg/chromium/components/dom_distiller/core/FontFamily;->getFontFamilyForValue(I)Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;->onChangeFontFamily(Lorg/chromium/components/dom_distiller/core/FontFamily;)V

    .line 48
    return-void
.end method

.method private onChangeFontScaling(F)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mDistilledPagePrefsObserver:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;->onChangeFontScaling(F)V

    .line 58
    return-void
.end method

.method private onChangeTheme(I)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mDistilledPagePrefsObserver:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;

    invoke-static {p1}, Lorg/chromium/components/dom_distiller/core/Theme;->getThemeForValue(I)Lorg/chromium/components/dom_distiller/core/Theme;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;->onChangeTheme(Lorg/chromium/components/dom_distiller/core/Theme;)V

    .line 53
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mNativeDistilledPagePrefsObserverAndroidPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->nativeDestroyObserverAndroid(J)V

    .line 62
    return-void
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->mNativeDistilledPagePrefsObserverAndroidPtr:J

    return-wide v0
.end method
