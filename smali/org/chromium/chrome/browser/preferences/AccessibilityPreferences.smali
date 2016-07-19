.class public Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilityPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final FORCE_ENABLE_ZOOM_THRESHOLD_MULTIPLIER:F = 1.3f

.field public static final PREF_FORCE_ENABLE_ZOOM:Ljava/lang/String; = "force_enable_zoom"

.field public static final PREF_TEXT_SCALE:Ljava/lang/String; = "text_scale"


# instance fields
.field private mFontPrefsObserver:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;

.field private mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

.field private mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

.field private mFormat:Ljava/text/NumberFormat;

.field private mPreviousFontScaleFactor:F

.field private mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;F)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->processFontWithForceEnableZoom(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;F)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->updateTextScaleSummary(F)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    return-object v0
.end method

.method private processFontWithForceEnableZoom(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x3fa66666    # 1.3f

    .line 110
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mPreviousFontScaleFactor:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getForceEnableZoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setForceEnableZoom(Z)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setUserSetForceEnableZoom(Z)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mPreviousFontScaleFactor:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getUserSetForceEnableZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setForceEnableZoom(Z)V

    goto :goto_0
.end method

.method private updateTextScaleSummary(F)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFormat:Ljava/text/NumberFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mPreviousFontScaleFactor:F

    .line 106
    return-void
.end method

.method private updateValues()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getFontScaleFactor()F

    move-result v0

    .line 97
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->setValue(F)V

    .line 98
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->updateTextScaleSummary(F)V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getForceEnableZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->setChecked(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_accessibility:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 65
    sget v0, Lorg/chromium/chrome/R$xml;->accessibility_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->addPreferencesFromResource(I)V

    .line 67
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFormat:Ljava/text/NumberFormat;

    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 69
    new-instance v0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;-><init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontPrefsObserver:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;

    .line 71
    const-string/jumbo v0, "text_scale"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const-string/jumbo v0, "force_enable_zoom"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mForceEnableZoomPref:Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->setLinkedSeekBarPreference(Lorg/chromium/chrome/browser/preferences/SeekBarPreference;)V

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    const-string/jumbo v0, "text_scale"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setFontScaleFactor(F)V

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    const-string/jumbo v0, "force_enable_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setUserSetForceEnableZoom(Z)V

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->setForceEnableZoom(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->updateValues()V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->startObservingFontPrefs()V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontPrefsObserver:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->addObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mTextScalePref:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->stopObservingFontPrefs()V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->mFontPrefsObserver:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences$FontPrefsObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->removeObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z

    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 93
    return-void
.end method
