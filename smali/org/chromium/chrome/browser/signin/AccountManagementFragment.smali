.class public Lorg/chromium/chrome/browser/signin/AccountManagementFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountManagementFragment.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;
.implements Lorg/chromium/chrome/browser/signin/SignOutDialogFragment$SignOutDialogListener;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PREF_ADD_ACCOUNT:Ljava/lang/String; = "add_account"

.field public static final PREF_CHILD_CONTENT:Ljava/lang/String; = "child_content"

.field public static final PREF_CHILD_SAFE_SITES:Ljava/lang/String; = "child_safe_sites"

.field public static final PREF_PARENTAL_SETTINGS:Ljava/lang/String; = "parental_settings"

.field public static final PREF_PARENT_ACCOUNTS:Ljava/lang/String; = "parent_accounts"

.field public static final PREF_SIGN_OUT:Ljava/lang/String; = "sign_out"

.field public static final PREF_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"

.field public static final SHOW_GAIA_SERVICE_TYPE_EXTRA:Ljava/lang/String; = "ShowGAIAServiceType"

.field public static final SIGN_OUT_DIALOG_TAG:Ljava/lang/String; = "sign_out_dialog_tag"

.field private static sCachedBadgedPicture:Landroid/graphics/Bitmap;

.field private static sChildAccountId:Ljava/lang/String;

.field private static final sToNamePicture:Ljava/util/HashMap;


# instance fields
.field private mAccountsListPreferences:Ljava/util/ArrayList;

.field private mGaiaServiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->$assertionsDisabled:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sToNamePicture:Ljava/util/HashMap;

    .line 100
    sput-object v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sChildAccountId:Ljava/lang/String;

    .line 101
    sput-object v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sCachedBadgedPicture:Landroid/graphics/Bitmap;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mAccountsListPreferences:Ljava/util/ArrayList;

    .line 421
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getSignOutAllowedPreferenceValue(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->openSyncSettingsPage(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->canAddAccounts()Z

    move-result v0

    return v0
.end method

.method private canAddAccounts()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 209
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureAddAccountPreference()V
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, "add_account"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 276
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->account_management_add_account_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 301
    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$4;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    goto :goto_0
.end method

.method private configureChildAccountPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    const-string/jumbo v0, "parent_accounts"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 312
    const-string/jumbo v0, "child_content"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 313
    const-string/jumbo v0, "child_safe_sites"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 314
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 316
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSupervisedUserCustodianEmail()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSupervisedUserSecondCustodianEmail()Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 323
    sget v9, Lorg/chromium/chrome/R$string;->account_management_two_parent_names:I

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v0, v10, v2

    aput-object v8, v10, v1

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 334
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getDefaultSupervisedUserFilteringBehavior()I

    move-result v0

    if-ne v0, v11, :cond_2

    move v0, v1

    .line 337
    :goto_1
    if-eqz v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$string;->account_management_child_content_approved:I

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 343
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSupervisedUserSafeSitesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/chromium/chrome/R$string;->text_on:I

    :goto_3
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 355
    :goto_4
    return-void

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 326
    sget v8, Lorg/chromium/chrome/R$string;->account_management_one_parent_name:I

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v0, v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->account_management_no_parental_data:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 334
    goto :goto_1

    .line 337
    :cond_3
    sget v0, Lorg/chromium/chrome/R$string;->account_management_child_content_all:I

    goto :goto_2

    .line 343
    :cond_4
    sget v0, Lorg/chromium/chrome/R$string;->text_off:I

    goto :goto_3

    .line 349
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 350
    const-string/jumbo v1, "parental_settings"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private configureSignOutSwitch()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v0

    .line 215
    const-string/jumbo v1, "sign_out"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getSignOutAllowedPreferenceValue(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private configureSyncSettings()V
    .locals 4

    .prologue
    .line 249
    const-string/jumbo v0, "sync_settings"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SyncPreference;

    .line 250
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/preferences/Preferences;

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v2

    .line 253
    new-instance v3, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;

    invoke-direct {v3, p0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Lorg/chromium/chrome/browser/preferences/Preferences;Landroid/accounts/Account;)V

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 271
    return-void
.end method

.method public static getBadgedUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 606
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sChildAccountId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 607
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sChildAccountId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 608
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sCachedBadgedPicture:Landroid/graphics/Bitmap;

    .line 614
    :goto_0
    return-object v0

    .line 610
    :cond_1
    sput-object p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sChildAccountId:Ljava/lang/String;

    .line 611
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 612
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_account_child:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 613
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->overlayChildBadgeOnUserPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sCachedBadgedPicture:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getCachedUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sToNamePicture:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 595
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSignOutAllowedPreferenceValue(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 679
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "auto_signed_in_school_account"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sToNamePicture:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 627
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lorg/chromium/chrome/R$drawable;->account_management_no_picture:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeRoundUserPicture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 520
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 527
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 529
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 530
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 531
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 535
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static openAccountManagementScreen(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;I)V
    .locals 3

    .prologue
    .line 506
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 509
    const-string/jumbo v2, "ShowGAIAServiceType"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v2, "show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method private openSyncSettingsPage(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.google"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method private static overlayChildBadgeOnUserPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 547
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$dimen;->user_picture_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 548
    :cond_0
    sget v0, Lorg/chromium/chrome/R$dimen;->badge_border_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 549
    sget v1, Lorg/chromium/chrome/R$dimen;->badge_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 552
    sget v2, Lorg/chromium/chrome/R$dimen;->badged_user_picture_width:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 554
    sget v3, Lorg/chromium/chrome/R$dimen;->badged_user_picture_height:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 556
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 558
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    invoke-virtual {v5, p0, v6, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 563
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 564
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 565
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 566
    sub-int/2addr v2, v1

    .line 567
    sub-int/2addr v3, v1

    .line 568
    int-to-float v7, v2

    int-to-float v8, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v7, v8, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 571
    sub-int v0, v2, v1

    int-to-float v0, v0

    sub-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {v5, p1, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 572
    return-object v4
.end method

.method public static setSignOutAllowedPreferenceValue(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 690
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "auto_signed_in_school_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 694
    return-void
.end method

.method public static startFetchingAccountInformation(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 641
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sToNamePicture:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->user_picture_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 646
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->startFetchingAccountInfoFor(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private static startFetchingAccountsInformation(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 3

    .prologue
    .line 163
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 164
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 165
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->startFetchingAccountInformation(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private updateAccountsList()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 368
    if-nez v4, :cond_1

    .line 404
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 370
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mAccountsListPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mAccountsListPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mAccountsListPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/Preferences;

    .line 376
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v5

    .line 377
    const/16 v1, 0x64

    .line 379
    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v1, v5, v2

    .line 380
    new-instance v7, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-direct {v7, v0}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;)V

    .line 381
    iget-object v8, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v8

    .line 385
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v8, :cond_3

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getBadgedUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    invoke-direct {v9, v10, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 389
    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Lorg/chromium/chrome/browser/preferences/Preferences;)V

    invoke-virtual {v7, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 400
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v7, v3}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setOrder(I)V

    .line 401
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 402
    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mAccountsListPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    .line 385
    :cond_3
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2
.end method

.method public static updateUserNamePictureCache(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 583
    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sChildAccountId:Ljava/lang/String;

    .line 584
    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sCachedBadgedPicture:Landroid/graphics/Bitmap;

    .line 585
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->sToNamePicture:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->makeRoundUserPicture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    iput v3, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    .line 120
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ShowGAIAServiceType"

    iget v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    .line 125
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->startFetchingAccountsInformation(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 130
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 149
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->removeObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 150
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 411
    invoke-static {p1, p2, p4}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->updateUserNamePictureCache(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 412
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->updateAccountsList()V

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 136
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->addObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 137
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->update()V

    .line 143
    return-void
.end method

.method public onSignOutClicked()V
    .locals 5

    .prologue
    .line 445
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 448
    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;-><init>()V

    .line 449
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;

    invoke-direct {v4, p0, v1, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;-><init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Landroid/app/DialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut(Ljava/lang/Runnable;Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V

    .line 462
    const/4 v0, 0x6

    iget v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    goto :goto_0
.end method

.method public onSignOutDialogDismissed(Z)V
    .locals 2

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    const/4 v0, 0x7

    iget v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 474
    :cond_0
    return-void
.end method

.method public onSignedIn()V
    .locals 0

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->update()V

    .line 491
    return-void
.end method

.method public onSignedOut()V
    .locals 0

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->update()V

    .line 496
    return-void
.end method

.method public syncStateChanged()V
    .locals 1

    .prologue
    .line 480
    const-string/jumbo v0, "sync_settings"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SyncPreference;

    .line 481
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->updateSyncSummary()V

    .line 484
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 175
    :cond_1
    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 183
    :cond_2
    sget v0, Lorg/chromium/chrome/R$xml;->account_management_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getCachedUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->getCachedFullName(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 193
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->configureSignOutSwitch()V

    .line 196
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->configureAddAccountPreference()V

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->configureChildAccountPreferences()V

    .line 198
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->configureSyncSettings()V

    .line 200
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->updateAccountsList()V

    goto :goto_0
.end method
