.class public Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhysicalWebPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->ensureLocationPermission()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string/jumbo v1, "referer"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method private ensureLocationPermission()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 56
    :cond_0
    return-void
.end method

.method private initLaunchButton()V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "physical_web_launch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    .line 107
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    return-void
.end method

.method private initPhysicalWebSwitch()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "physical_web_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isPhysicalWebEnabled()Z

    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 87
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lorg/chromium/chrome/R$xml;->physical_web_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->physical_web_pref_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 41
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->initPhysicalWebSwitch()V

    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->initLaunchButton()V

    .line 43
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 64
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onPrefsLocationGranted(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->startPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onPrefsLocationDenied(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
