.class public Lorg/chromium/chrome/browser/preferences/DocumentModePreference;
.super Landroid/preference/PreferenceFragment;
.source "DocumentModePreference.java"


# instance fields
.field private mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

.field private mDocumentModeSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->createOptOutAlertDialog(Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Landroid/preference/SwitchPreference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->isRestartNeeded(Z)Z

    move-result v0

    return v0
.end method

.method private createOptOutAlertDialog(Z)Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_1

    sget v1, Lorg/chromium/chrome/R$string;->tabs_and_apps_turn_on_title:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_2

    sget v1, Lorg/chromium/chrome/R$string;->tabs_and_apps_opt_in_confirmation:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v3, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;

    invoke-direct {v3, p0, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;-><init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->ok:I

    new-instance v3, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;

    invoke-direct {v3, p0, p1}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;-><init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$2;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$2;-><init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 104
    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    sget v1, Lorg/chromium/chrome/R$string;->tabs_and_apps_turn_off_title:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/chromium/chrome/R$string;->tabs_and_apps_opt_out_confirmation:I

    goto :goto_2
.end method

.method private isRestartNeeded(Z)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_1

    move v2, v3

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.chrome.invoked_from_fre"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 120
    :goto_1
    if-nez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 117
    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 125
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    move v1, v2

    .line 127
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 128
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskClassName(Landroid/app/ActivityManager$AppTask;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isDocumentActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_0

    .line 127
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lorg/chromium/chrome/R$xml;->document_mode_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->tabs_and_apps_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    .line 47
    const-string/jumbo v0, "document_mode_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeSwitch:Landroid/preference/SwitchPreference;

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 50
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeSwitch:Landroid/preference/SwitchPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
