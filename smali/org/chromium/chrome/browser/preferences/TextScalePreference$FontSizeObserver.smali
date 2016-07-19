.class Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;
.super Ljava/lang/Object;
.source "TextScalePreference.java"

# interfaces
.implements Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/TextScalePreference;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;->this$0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/TextScalePreference;Lorg/chromium/chrome/browser/preferences/TextScalePreference$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;-><init>(Lorg/chromium/chrome/browser/preferences/TextScalePreference;)V

    return-void
.end method


# virtual methods
.method public onChangeFontSize(F)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;->this$0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    # invokes: Lorg/chromium/chrome/browser/preferences/TextScalePreference;->updatePreview()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->access$000(Lorg/chromium/chrome/browser/preferences/TextScalePreference;)V

    .line 30
    return-void
.end method

.method public onChangeForceEnableZoom(Z)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onChangeUserSetForceEnableZoom(Z)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
