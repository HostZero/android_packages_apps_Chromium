.class Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;
.super Ljava/lang/Object;
.source "AccessibilityPreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;->this$0:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;-><init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V

    return-void
.end method


# virtual methods
.method public onChangeFontSize(F)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;->this$0:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->processFontWithForceEnableZoom(F)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->access$000(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;F)V

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;->this$0:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->updateTextScaleSummary(F)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;F)V

    .line 50
    return-void
.end method

.method public onChangeForceEnableZoom(Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;->this$0:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->access$200(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->setChecked(Z)V

    .line 55
    return-void
.end method

.method public onChangeUserSetForceEnableZoom(Z)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
