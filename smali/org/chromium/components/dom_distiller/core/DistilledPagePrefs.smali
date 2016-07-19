.class public final Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;
.super Ljava/lang/Object;
.source "DistilledPagePrefs.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mDistilledPagePrefsAndroid:J

.field private mObserverMap:Ljava/util/Map;


# direct methods
.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeInit(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mObserverMap:Ljava/util/Map;

    .line 79
    return-void
.end method

.method private native nativeAddObserver(JJ)V
.end method

.method private native nativeGetFontFamily(J)I
.end method

.method private native nativeGetFontScaling(J)F
.end method

.method private native nativeGetTheme(J)I
.end method

.method private native nativeInit(J)J
.end method

.method private native nativeRemoveObserver(JJ)V
.end method

.method private native nativeSetFontFamily(JI)V
.end method

.method private native nativeSetFontScaling(JF)V
.end method

.method private native nativeSetTheme(JI)V
.end method


# virtual methods
.method public final addObserver(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)Z
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    new-instance v0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;-><init>(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)V

    .line 89
    iget-wide v2, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-virtual {v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeAddObserver(JJ)V

    .line 90
    iget-object v1, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getFontFamily()Lorg/chromium/components/dom_distiller/core/FontFamily;
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeGetFontFamily(J)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/components/dom_distiller/core/FontFamily;->getFontFamilyForValue(I)Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public final getFontScaling()F
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeGetFontScaling(J)F

    move-result v0

    return v0
.end method

.method public final getTheme()Lorg/chromium/components/dom_distiller/core/Theme;
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeGetTheme(J)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/components/dom_distiller/core/Theme;->getThemeForValue(I)Lorg/chromium/components/dom_distiller/core/Theme;

    move-result-object v0

    return-object v0
.end method

.method public final removeObserver(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)Z
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;

    .line 100
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-wide v2, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-virtual {v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeRemoveObserver(JJ)V

    .line 102
    invoke-virtual {v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->destroy()V

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setFontFamily(Lorg/chromium/components/dom_distiller/core/FontFamily;)V
    .locals 3

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-virtual {p1}, Lorg/chromium/components/dom_distiller/core/FontFamily;->asNativeEnum()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeSetFontFamily(JI)V

    .line 108
    return-void
.end method

.method public final setFontScaling(F)V
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeSetFontScaling(JF)V

    .line 124
    return-void
.end method

.method public final setTheme(Lorg/chromium/components/dom_distiller/core/Theme;)V
    .locals 3

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->mDistilledPagePrefsAndroid:J

    invoke-virtual {p1}, Lorg/chromium/components/dom_distiller/core/Theme;->asNativeEnum()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->nativeSetTheme(JI)V

    .line 116
    return-void
.end method
