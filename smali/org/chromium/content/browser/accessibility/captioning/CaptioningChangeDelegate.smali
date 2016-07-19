.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
.super Ljava/lang/Object;
.source "CaptioningChangeDelegate.java"


# static fields
.field public static final DEFAULT_CAPTIONING_PREF_VALUE:Ljava/lang/String; = ""


# instance fields
.field private final mListeners:Ljava/util/Map;

.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;

.field private mTextTracksEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public static androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 277
    if-nez p0, :cond_0

    .line 278
    const-string/jumbo v0, ""

    .line 284
    :goto_0
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#.##"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string/jumbo v1, "rgba(%s, %s, %s, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static androidFontScaleToPercentage(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#%"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifySettingsChanged()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    .line 300
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public hasActiveListener()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 9

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTracksEnabled:Z

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTracksEnabled:Z

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    iget-object v8, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-interface {p1, v0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;->onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    invoke-direct {v0}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>()V

    invoke-interface {p1, v0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;->onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    goto :goto_0
.end method

.method public onEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTracksEnabled:Z

    .line 54
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    .line 55
    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidFontScaleToPercentage(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    .line 63
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getForegroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->fromSystemEdgeAttribute(Ljava/lang/Integer;Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->getTextShadow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->fromSystemFont(Landroid/graphics/Typeface;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "italic"

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    .line 95
    :goto_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    .line 98
    return-void

    .line 92
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method
