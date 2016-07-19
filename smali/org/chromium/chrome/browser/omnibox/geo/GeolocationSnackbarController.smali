.class public Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;
.super Ljava/lang/Object;
.source "GeolocationSnackbarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# static fields
.field private static sGeolocationSnackbarShown:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->setGeolocationSnackbarShown(Landroid/content/Context;)V

    return-void
.end method

.method static getGeolocationSnackbarShown(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->sGeolocationSnackbarShown:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "geolocation_snackbar_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->sGeolocationSnackbarShown:Ljava/lang/Boolean;

    .line 151
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->sGeolocationSnackbarShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static maybeShowSnackbar(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/view/View;ZI)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->getGeolocationSnackbarShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez p2, :cond_0

    .line 71
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->neverShowSnackbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->setGeolocationSnackbarShown(Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    const-string/jumbo v2, "foo"

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "sans-serif-medium"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$string;->omnibox_geolocation_disclosure:I

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "</b>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-array v3, v9, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<b>"

    const-string/jumbo v6, "</b>"

    invoke-direct {v4, v5, v6, v2}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v2

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->preferences:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3a98

    .line 85
    :goto_1
    new-instance v4, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;

    invoke-direct {v4}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;-><init>()V

    .line 86
    invoke-static {v2, v4, v8}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v3, p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 91
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;

    invoke-direct {v2, p0, v4, v0, v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;-><init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;Lorg/chromium/chrome/browser/snackbar/Snackbar;Landroid/content/Context;)V

    int-to-long v0, p3

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 83
    :cond_3
    const/16 v0, 0x1f40

    goto :goto_1
.end method

.method private static neverShowSnackbar(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isDefaultSearchEngineGoogle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v2

    const-string/jumbo v3, "foo"

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isLocationDisabledForUrl(Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method private static setGeolocationSnackbarShown(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "geolocation_snackbar_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->sGeolocationSnackbarShown:Ljava/lang/Boolean;

    .line 158
    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 130
    check-cast p1, Landroid/view/View;

    .line 131
    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string/jumbo v3, "show_search_engine_picker"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string/jumbo v3, "show_fragment_args"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
