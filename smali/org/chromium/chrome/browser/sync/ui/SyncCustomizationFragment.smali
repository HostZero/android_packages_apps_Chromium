.class public Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncCustomizationFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
.implements Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$Listener;
.implements Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;
.implements Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ARGUMENT_ACCOUNT:Ljava/lang/String; = "account"

.field public static final FRAGMENT_CUSTOM_PASSPHRASE:Ljava/lang/String; = "custom_password"

.field public static final FRAGMENT_ENTER_PASSPHRASE:Ljava/lang/String; = "enter_password"

.field public static final FRAGMENT_PASSPHRASE_TYPE:Ljava/lang/String; = "password_type"

.field public static final PREFERENCE_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final PREFERENCE_PAYMENTS_INTEGRATION:Ljava/lang/String; = "payments_integration"

.field public static final PREFERENCE_SYNC_ACCOUNT_LIST:Ljava/lang/String; = "synced_account"

.field public static final PREFERENCE_SYNC_AUTOFILL:Ljava/lang/String; = "sync_autofill"

.field public static final PREFERENCE_SYNC_BOOKMARKS:Ljava/lang/String; = "sync_bookmarks"

.field public static final PREFERENCE_SYNC_EVERYTHING:Ljava/lang/String; = "sync_everything"

.field public static final PREFERENCE_SYNC_MANAGE_DATA:Ljava/lang/String; = "sync_manage_data"

.field public static final PREFERENCE_SYNC_OMNIBOX:Ljava/lang/String; = "sync_omnibox"

.field public static final PREFERENCE_SYNC_PASSWORDS:Ljava/lang/String; = "sync_passwords"

.field public static final PREFERENCE_SYNC_RECENT_TABS:Ljava/lang/String; = "sync_recent_tabs"

.field public static final PREFERENCE_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"

.field public static final PREFS_TO_SAVE:[Ljava/lang/String;

.field public static final PREF_SYNC_SWITCH:Ljava/lang/String; = "sync_switch"


# instance fields
.field private mAllTypes:[Landroid/preference/CheckBoxPreference;

.field private mIsBackendInitialized:Z

.field private mIsPassphraseRequired:Z

.field private mManageSyncData:Landroid/preference/Preference;

.field private mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

.field private mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field private mSyncAutofill:Landroid/preference/CheckBoxPreference;

.field private mSyncBookmarks:Landroid/preference/CheckBoxPreference;

.field private mSyncEncryption:Landroid/preference/Preference;

.field private mSyncEverything:Landroid/preference/SwitchPreference;

.field private mSyncOmnibox:Landroid/preference/CheckBoxPreference;

.field private mSyncPasswords:Landroid/preference/CheckBoxPreference;

.field private mSyncRecentTabs:Landroid/preference/CheckBoxPreference;

.field private mSyncSettings:Landroid/preference/CheckBoxPreference;

.field private mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field private mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->$assertionsDisabled:Z

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "sync_everything"

    aput-object v3, v0, v2

    const-string/jumbo v2, "sync_autofill"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "sync_bookmarks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sync_omnibox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sync_passwords"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sync_recent_tabs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sync_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "payments_integration"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->PREFS_TO_SAVE:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->canDisableSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->stopSync()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncStateFromSwitch()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateDataTypeState()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->maybeDisableSync()Z

    move-result v0

    return v0
.end method

.method private canDisableSync()Z
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeDialogIfOpen(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 417
    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method private configureEncryption(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->enableEncryptEverything()V

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setEncryptionPassphrase(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->configureSyncDataTypes()V

    .line 435
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncState()V

    .line 437
    :cond_0
    return-void
.end method

.method private configureSyncDataTypes()V
    .locals 3

    .prologue
    .line 373
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->maybeDisableSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 376
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getSelectedModelTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setPreferredDataTypes(ZLjava/util/Set;)V

    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->ensureStartedAndUpdateRegisteredTypes()V

    goto :goto_0
.end method

.method private displayCustomPassphraseDialog()V
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 410
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;-><init>()V

    .line 411
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 412
    const-string/jumbo v2, "custom_password"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method private displayPassphraseDialog()V
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 405
    invoke-static {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->newInstance(Landroid/app/Fragment;)Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    move-result-object v1

    const-string/jumbo v2, "enter_password"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method private displayPassphraseTypeDialog()V
    .locals 5

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPassphraseType()Lorg/chromium/sync/PassphraseType;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getExplicitPassphraseTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isEncryptEverythingAllowed()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->create(Lorg/chromium/sync/PassphraseType;JZ)Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    move-result-object v1

    .line 399
    const-string/jumbo v2, "password_type"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 400
    const/4 v0, -0x1

    invoke-virtual {v1, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 401
    return-void
.end method

.method private static errorSummary(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 364
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->input_underline_error_color:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 369
    return-object v0
.end method

.method private getSelectedModelTypes()Ljava/util/Set;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 384
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncBookmarks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncOmnibox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncPasswords:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncRecentTabs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_5
    return-object v0
.end method

.method private handleDecryption(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setDecryptionPassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, "enter_password"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->closeDialogIfOpen(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncState()V

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSyncTypePreference(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mAllTypes:[Landroid/preference/CheckBoxPreference;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 234
    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    .line 236
    :cond_0
    return v0

    .line 233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private maybeDisableSync()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 621
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getSelectedModelTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->canDisableSync()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->stopSync()V

    .line 627
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 629
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncStateFromSwitch()V

    .line 630
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openDashboardTabInNewActivityStack()V
    .locals 3

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://www.google.com/settings/chrome/sync"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 535
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->startActivity(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method private stopSync()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string/jumbo v0, "Sync.StopSource"

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 637
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStop()V

    .line 639
    :cond_0
    return-void
.end method

.method private updateDataTypeState()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 561
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v6

    .line 562
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    .line 563
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isCryptographerReady()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 565
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPreferredDataTypes()Ljava/util/Set;

    move-result-object v8

    .line 566
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 567
    iget-object v9, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mAllTypes:[Landroid/preference/CheckBoxPreference;

    array-length v10, v9

    move v5, v2

    :goto_1
    if-ge v5, v10, :cond_5

    aget-object v11, v9, v5

    .line 569
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncPasswords:Landroid/preference/CheckBoxPreference;

    if-ne v11, v3, :cond_9

    move v3, v0

    .line 570
    :goto_2
    iget-object v12, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    if-ne v11, v12, :cond_0

    move v3, v4

    .line 572
    :cond_0
    if-nez v6, :cond_3

    .line 573
    invoke-virtual {v11, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    :cond_1
    :goto_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    move v3, v1

    :goto_4
    invoke-virtual {v11, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 567
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 563
    goto :goto_0

    .line 574
    :cond_3
    if-eqz v7, :cond_1

    .line 575
    invoke-virtual {v11, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_4
    move v3, v2

    .line 578
    goto :goto_4

    .line 580
    :cond_5
    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    .line 581
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 582
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncBookmarks:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 583
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncOmnibox:Landroid/preference/CheckBoxPreference;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 584
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncPasswords:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncRecentTabs:Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSettings:Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 590
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isPaymentsIntegrationEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 584
    goto :goto_5

    :cond_8
    move v1, v2

    .line 590
    goto :goto_6

    :cond_9
    move v3, v1

    goto/16 :goto_2
.end method

.method private updateEncryptionState()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v0

    .line 340
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v1

    .line 341
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    if-nez v1, :cond_2

    .line 347
    const-string/jumbo v0, "custom_password"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->closeDialogIfOpen(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "enter_password"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->closeDialogIfOpen(Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    const-string/jumbo v0, "enter_password"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->closeDialogIfOpen(Ljava/lang/String;)V

    .line 354
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    sget v1, Lorg/chromium/chrome/R$string;->sync_need_passphrase:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->errorSummary(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSyncAccountsListState()V
    .locals 3

    .prologue
    .line 305
    const-string/jumbo v0, "synced_account"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 312
    array-length v1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 313
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSyncEverythingState()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v0

    .line 548
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 549
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->hasKeepEverythingSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 551
    return-void

    .line 549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSyncState()V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 299
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->canDisableSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setEnabled(Z)V

    .line 301
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncStateFromSwitch()V

    .line 302
    return-void
.end method

.method private updateSyncStateFromSwitch()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncEverythingState()V

    .line 325
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateDataTypeState()V

    .line 326
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateEncryptionState()V

    .line 327
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncAccountsListState()V

    .line 328
    return-void
.end method


# virtual methods
.method public getSyncSwitchPreference()Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    .line 130
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsPassphraseRequired:Z

    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->sign_in_sync:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 136
    sget v0, Lorg/chromium/chrome/R$xml;->sync_customization_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->addPreferencesFromResource(I)V

    .line 137
    const-string/jumbo v0, "sync_everything"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    .line 138
    const-string/jumbo v0, "sync_autofill"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncAutofill:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string/jumbo v0, "sync_bookmarks"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncBookmarks:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string/jumbo v0, "sync_omnibox"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncOmnibox:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string/jumbo v0, "sync_passwords"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncPasswords:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string/jumbo v0, "sync_recent_tabs"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncRecentTabs:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string/jumbo v0, "sync_settings"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSettings:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string/jumbo v0, "payments_integration"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string/jumbo v0, "encryption"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    const-string/jumbo v0, "sync_manage_data"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mManageSyncData:Landroid/preference/Preference;

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mManageSyncData:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncAutofill:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncBookmarks:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncOmnibox:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncPasswords:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncRecentTabs:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSettings:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    const/4 v1, 0x6

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    aput-object v4, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mAllTypes:[Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mAllTypes:[Landroid/preference/CheckBoxPreference;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 158
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 130
    goto/16 :goto_0

    .line 161
    :cond_2
    const-string/jumbo v0, "sync_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const-string/jumbo v0, "synced_account"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    new-instance v1, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    invoke-direct {v1, v2, v4}, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    return-object v3
.end method

.method public onPassphraseCanceled()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onPassphraseCreated(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->configureEncryption(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPassphraseEntered(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->handleDecryption(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPassphraseTypeSelected(Lorg/chromium/sync/PassphraseType;)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isEncryptEverythingEnabled()Z

    move-result v0

    .line 497
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isUsingSecondaryPassphrase()Z

    move-result v1

    .line 501
    sget-boolean v2, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 502
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 503
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->displayCustomPassphraseDialog()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEverything:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$2;-><init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    :goto_0
    return v1

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->isSyncTypePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncAutofill:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    move v0, v1

    .line 204
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 205
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;

    invoke-direct {v4, p0, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;-><init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;ZZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v1, v0

    .line 222
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncEncryption:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->displayPassphraseDialog()V

    goto :goto_0

    .line 520
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->displayPassphraseTypeDialog()V

    move v0, v1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mManageSyncData:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 524
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->openDashboardTabInNewActivityStack()V

    move v0, v1

    .line 525
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->update()V

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    .line 257
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsPassphraseRequired:Z

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSetupInProgress(Z)V

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 262
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncState()V

    .line 263
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 272
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mSyncSwitchPreference:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->configureSyncDataTypes()V

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setFirstSetupComplete()V

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setPaymentsIntegrationEnabled(Z)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSetupInProgress(Z)V

    .line 289
    :cond_1
    return-void
.end method

.method public syncStateChanged()V
    .locals 3

    .prologue
    .line 603
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    .line 604
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsPassphraseRequired:Z

    .line 605
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    .line 606
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsPassphraseRequired:Z

    .line 608
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsBackendInitialized:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mIsPassphraseRequired:Z

    if-eq v0, v2, :cond_1

    .line 611
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncStateFromSwitch()V

    .line 613
    :cond_1
    return-void

    .line 606
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
