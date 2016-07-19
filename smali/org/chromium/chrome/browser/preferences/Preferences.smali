.class public Lorg/chromium/chrome/browser/preferences/Preferences;
.super Landroid/support/v7/app/C;
.source "Preferences.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# static fields
.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = "show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = "show_fragment_args"

.field private static sActivityNotExportedChecked:Z

.field private static sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;


# instance fields
.field private mIsNewlyCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    return-void
.end method

.method private ensureActivityNotExported()V
    .locals 3

    .prologue
    .line 220
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sActivityNotExportedChecked:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sActivityNotExportedChecked:Z

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 226
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Preferences must not be exported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getFragmentForTest()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0}, Landroid/support/v7/app/C;->onAttachedToWindow()V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/preference/PreferenceFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->ensureActivityNotExported()V

    .line 73
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/Preferences;->mIsNewlyCreated:Z

    .line 88
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "show_fragment"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "show_fragment_args"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 95
    if-nez p1, :cond_1

    .line 96
    if-nez v0, :cond_0

    const-class v0, Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    invoke-static {p0, v0, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 103
    :cond_1
    const-string/jumbo v0, "android.permission.NFC"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lorg/chromium/chrome/browser/preferences/Preferences;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 112
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    sget v1, Lorg/chromium/chrome/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$mipmap;->app_icon:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-static {p0, v1, v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 116
    :goto_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "Preferences"

    const-string/jumbo v2, "Failed to start browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 86
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 191
    const/4 v0, 0x0

    sget v1, Lorg/chromium/chrome/R$id;->menu_id_general_help:I

    const/high16 v2, 0x30000

    sget v3, Lorg/chromium/chrome/R$string;->menu_help:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 193
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_help_and_feedback:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->finish()V

    .line 216
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lorg/chromium/chrome/R$id;->menu_id_general_help:I

    if-ne v1, v2, :cond_1

    .line 212
    invoke-static {p0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->help_context_settings:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/support/v7/app/C;->onPause()V

    .line 174
    sget-object v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    .line 175
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->flushPersistentData()V

    .line 176
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/Preferences;->startFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v7/app/C;->onResume()V

    .line 159
    sget-object v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/Preferences;->mIsNewlyCreated:Z

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/Preferences;->finish()V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/Preferences;->finish()V

    .line 166
    :cond_1
    sput-object p0, Lorg/chromium/chrome/browser/preferences/Preferences;->sResumedInstance:Lorg/chromium/chrome/browser/preferences/Preferences;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/Preferences;->mIsNewlyCreated:Z

    goto :goto_0
.end method

.method public startFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/Preferences;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method
