.class Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;
.super Ljava/lang/Object;
.source "FontSizePrefs.java"


# instance fields
.field private final mFontSizePrefsObserver:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;

.field private final mNativeFontSizePrefsObserverWrapperPtr:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->nativeInitObserverAndroid()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mNativeFontSizePrefsObserverWrapperPtr:J

    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mFontSizePrefsObserver:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;

    .line 55
    return-void
.end method

.method private native nativeDestroyObserverAndroid(J)V
.end method

.method private native nativeInitObserverAndroid()J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mNativeFontSizePrefsObserverWrapperPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->nativeDestroyObserverAndroid(J)V

    .line 63
    return-void
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mNativeFontSizePrefsObserverWrapperPtr:J

    return-wide v0
.end method

.method public onChangeFontSize(F)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mFontSizePrefsObserver:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;->onChangeFontSize(F)V

    .line 68
    return-void
.end method

.method public onChangeForceEnableZoom(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mFontSizePrefsObserver:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;->onChangeForceEnableZoom(Z)V

    .line 73
    return-void
.end method

.method public onChangeUserSetForceEnableZoom(Z)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$FontSizePrefsObserverWrapper;->mFontSizePrefsObserver:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;->onChangeUserSetForceEnableZoom(Z)V

    .line 77
    return-void
.end method
